package net.ideahut.springboot.template.binary;

import java.util.Collection;

import org.apache.fory.BaseFory;
import org.apache.fory.Fory;
import org.apache.fory.ThreadLocalFory;
import org.apache.fory.ThreadSafeFory;
import org.springframework.core.io.ClassPathResource;

import lombok.extern.slf4j.Slf4j;
import net.ideahut.springboot.helper.FrameworkHelper;
import net.ideahut.springboot.helper.NativeImageHelper;
import net.ideahut.springboot.helper.ObjectHelper;
import net.ideahut.springboot.object.StringSet;

/*
 * MASIH EXPERIMENTAL !!!
 * <buildArg>--initialize-at-run-time=net.ideahut.springboot.template.binary.ForyInstance</buildArg>
 */

@Slf4j
public class ForyInstance {

	private ForyInstance() {}

	private static ThreadSafeFory fory;

	private static void register(Fory f, Class<?> type) {
		try {
			f.register(type, true);
		} catch (Exception e) {
			String errmsg = ObjectHelper.callOrElse(e != null, () -> { ObjectHelper.skip(); return e.getMessage(); }, () -> "");
			ObjectHelper.runOrElse(
				errmsg.indexOf("doesn't support serialization") != -1, 
				() -> f.register(type), 
				() -> log.warn("Register '{}': {}", type.getName(), e.getMessage())
			);
		}
	}
	
	private static void register(Fory f, String resource) {
		try {
			byte[] bytes = new ClassPathResource(resource).getContentAsByteArray();
			if (bytes.length != 0) {
				StringSet names = FrameworkHelper.defaultDataMapper().read(bytes, StringSet.class);
				Collection<Class<?>> types = NativeImageHelper.convertToClasses(names);
				for (Class<?> type : types) {
					register(f, type);
				}
			}
		} catch (Exception e) {
			log.warn("Register '{}': {}", resource, e.getMessage());
		}
	}
	
	static {
		fory = new ThreadLocalFory(classLoader -> {
			Fory f = Fory.builder().build();
			register(f, "initialization.bin");
			register(f, "serialization.bin");
			f.ensureSerializersCompiled();
			return f;
		});
	}

	public static BaseFory getInstance() {
		return fory;
	}

}
