package net.ideahut.springboot.template.config;

import java.io.File;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;

import org.apache.commons.io.FileUtils;
import org.springframework.aot.hint.RuntimeHints;
import org.springframework.aot.hint.RuntimeHintsRegistrar;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportRuntimeHints;

import lombok.extern.slf4j.Slf4j;
import net.ideahut.springboot.helper.FrameworkHelper;
import net.ideahut.springboot.helper.NativeImageHelper;
import net.ideahut.springboot.helper.ObjectHelper;
import net.ideahut.springboot.module.ModuleApi;
import net.ideahut.springboot.object.StringSet;
import net.ideahut.springboot.serializer.DataMapperBinarySerializer;
import net.ideahut.springboot.serializer.ForyBinarySerializer;
import net.ideahut.springboot.serializer.HessianBinarySerializer;
import net.ideahut.springboot.serializer.JdkBinarySerializer;
import net.ideahut.springboot.serializer.KryoBinarySerializer;
import net.ideahut.springboot.template.Application;

@Slf4j
@Configuration
@ImportRuntimeHints({RuntimeHintsConfig.Registrar.class})
public class RuntimeHintsConfig {
	
	RuntimeHintsConfig() {}

	static class Registrar implements RuntimeHintsRegistrar {

		@Override
		public void registerHints(RuntimeHints hints, ClassLoader loader) {
			/*
			 * Tambah class-class yang akan diregistrasi untuk native di sini
			 */
			
		}
		
	}
	
	private static final File serializationFile = new File("serialization.tmp");
	private static final File binaryFile = new File("src/main/resources/serialization.bin");
	private static final File metadataFile = new File("src/main/resources/META-INF/native-image");
	
	public static void registerToNativeImageAgent(ApplicationContext applicationContext) {
		ObjectHelper.runIf(
			!FrameworkHelper.inNativeImage().booleanValue() &&  
			NativeImageHelper.isAotEnabled(), 
			() -> NativeImageHelper.registerMetadata(collectClasses(applicationContext), serializationFile)
		);
	}
	
	private static Collection<Class<?>> collectClasses(ApplicationContext applicationContext) {
		StringSet names = new StringSet(NativeImageHelper.Module.allModuleClassNames(applicationContext));
		names.addAll(NativeImageHelper.Module.getJsonWebTokenClassNames());
		names.addAll(NativeImageHelper.getAllClassNameInPackage("org.springframework.data.domain", false, true)); // untuk repo
		
		names.addAll(NativeImageHelper.getAllClassNameInPackage(Application.Package.APPLICATION + ".app"));
		names.addAll(NativeImageHelper.getAllClassNameInPackage(Application.Package.APPLICATION + ".controller"));
		names.addAll(NativeImageHelper.getAllClassNameInPackage(Application.Package.APPLICATION + ".interceptor"));
		names.addAll(NativeImageHelper.getAllClassNameInPackage(Application.Package.APPLICATION + ".job"));
		names.addAll(NativeImageHelper.getAllClassNameInPackage(Application.Package.APPLICATION + ".listener"));
		names.addAll(NativeImageHelper.getAllClassNameInPackage(Application.Package.APPLICATION + ".object"));
		names.addAll(NativeImageHelper.getAllClassNameInPackage(Application.Package.APPLICATION + ".properties"));
		names.addAll(NativeImageHelper.getAllClassNameInPackage(Application.Package.APPLICATION + ".repo"));
		names.addAll(NativeImageHelper.getAllClassNameInPackage(Application.Package.APPLICATION + ".service"));
		
		Set<Class<?>> classes = new LinkedHashSet<>(NativeImageHelper.convertToClasses(names, true));
		classes.add(DataMapperBinarySerializer.class);
		classes.add(JdkBinarySerializer.class);
		classes.add(HessianBinarySerializer.class);
		classes.add(ForyBinarySerializer.class);
		classes.add(KryoBinarySerializer.class);
		classes.addAll(ModuleApi.getDefaultProcessors());
		
		return classes;
	}
	
	
	public static void main(String... args) {
		NativeImageHelper.mergeSerializationToMetadata(
			serializationFile, 
			metadataFile,
			(String type) -> type.indexOf("$HibernateAccessOptimizer$") != -1,
			(String type) -> type.indexOf("$HibernateInstantiator$") != -1
		);
		NativeImageHelper.beautifyMetadata(metadataFile);
		try {
			FileUtils.copyFile(serializationFile, binaryFile);
		} catch (Exception e) {
			log.error("Copy", e);
		}
	}
	
}
