package net.ideahut.springboot.template.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import net.ideahut.springboot.entity.EntityApiExcludeParam;
import net.ideahut.springboot.entity.EntityAuditParam;
import net.ideahut.springboot.entity.EntityTrxManager;
import net.ideahut.springboot.entity.EntityTrxManagerImpl;
import net.ideahut.springboot.helper.FrameworkHelper;
import net.ideahut.springboot.helper.ObjectHelper;
import net.ideahut.springboot.mapper.DataMapper;
import net.ideahut.springboot.mapper.DataMapperImpl;
import net.ideahut.springboot.message.entity.Language;
import net.ideahut.springboot.message.entity.Message;
import net.ideahut.springboot.module.ModuleApi;
import net.ideahut.springboot.module.ModuleJob;
import net.ideahut.springboot.serializer.BinarySerializer;
import net.ideahut.springboot.serializer.DataMapperBinarySerializer;
import net.ideahut.springboot.serializer.ForyBinarySerializer;
import net.ideahut.springboot.serializer.HessianBinarySerializer;
import net.ideahut.springboot.serializer.JdkBinarySerializer;
import net.ideahut.springboot.serializer.KryoBinarySerializer;
import net.ideahut.springboot.sysparam.entity.SysParam;
import net.ideahut.springboot.template.binary.ForyInstance;
import net.ideahut.springboot.template.properties.AppProperties;

@Configuration
class CommonConfig {

	/*
	 * DATA MAPPER
	 */
	@Bean
	DataMapper dataMapper() {
		DataMapper dataMapper = new DataMapperImpl();
		FrameworkHelper.setDefaultDataMapper(dataMapper);
		return dataMapper;
	}
	
	
	/*
	 * BINARY SERIALIZER
	 */
	@Bean
	BinarySerializer binarySerializer(
		AppProperties appProperties,
		DataMapper dataMapper
	) {
		BinarySerializer binarySerializer;
		String code = ObjectHelper.useOrDefault(appProperties.getBinarySerializer(), "").trim().toLowerCase();
		if ("xml".equals(code)) {
			binarySerializer = new DataMapperBinarySerializer().setMapper(dataMapper).setFormat(DataMapper.XML);
		}
		else if ("jdk".equals(code)) {
			binarySerializer = new JdkBinarySerializer();
		}
		else if ("hessian1".equals(code)) {
			binarySerializer = new HessianBinarySerializer().setVersion(1);
		}
		else if ("hessian2".equals(code)) {
			binarySerializer = new HessianBinarySerializer().setVersion(2);
		}
		else if ("fory".equals(code)) {
			binarySerializer = new ForyBinarySerializer().setFory(ForyInstance.getInstance());
		}
		else if ("kryo".equals(code)) {
			binarySerializer = new KryoBinarySerializer().setReferences(true);
		}
		else {
			binarySerializer = new DataMapperBinarySerializer().setMapper(dataMapper).setFormat(DataMapper.JSON);
		}
		FrameworkHelper.setDefaultBinarySerializer(binarySerializer);
		return binarySerializer;
	}
	
	
	/*
	 * ENTITY TRX MANAGER
	 */
	@Bean
	EntityTrxManager entityTrxManager(
		AppProperties appProperties
	) {
		return new EntityTrxManagerImpl()
		
		// Entity / Model yang tidak memiliki anotasi @ApiExclude, dan tidak ingin dipublikasikan oleh ApiService
		.setApiExcludeParams(
			new EntityApiExcludeParam()
			.addEntityClasses(ModuleApi.getApiExcludeEntities())
			.addEntityClasses(ModuleJob.getApiExcludeEntities())
			.addEntityClasses(
				SysParam.class,
				Language.class,
				Message.class
			)
		)
		
		// Entity / Model yang tidak memiliki anotasi @Audit, dan ingin setiap perubahannya disimpan
		.setAuditParams(
			new EntityAuditParam()
			.addEntityClasses(ModuleApi.getAuditEntities())
			.addEntityClasses(ModuleJob.getAuditEntities())
			.addEntityClasses(
				SysParam.class,
				Language.class,
				Message.class
			)
		)
		
		// Daftar EntityPreListener & EntityPostListener, default autoDetect = true
		.setEntityListenerParam(null)
		
		// Parameter untuk menghandle anotasi @ForeignKeyEntity
		// Ini solusi jika terjadi error saat membuat native image dimana entity memiliki @ManyToOne & @OneToMany
		// tapi package-nya berbeda dengan package project (error ByteCodeProvider saat runtime)
		.setForeignKeyParam(appProperties.getForeignKey());
	}
	
}
