package test.net.ideahut.springboot.template;


import java.io.File;

import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;

import lombok.extern.slf4j.Slf4j;
import net.ideahut.springboot.helper.ObjectHelper;

@Slf4j
class Metadata {
	
	private static final String[] FILES = new String[] {
		"src/main/resources/META-INF/native-image/reflect-config.json",
	};
	
	@Test
	void main() {
		ObjectMapper mapper = new ObjectMapper();
		for (String file : FILES) {
			File input = new File(file);
			ObjectHelper.callIf(input.isFile(), () -> {
				byte[] bytes = FileUtils.readFileToByteArray(input);
				ArrayNode ori = mapper.readValue(bytes, ArrayNode.class);
				ArrayNode out = mapper.createArrayNode();
				while(!ori.isEmpty()) {
					JsonNode node = ori.remove(0);
					String name = ObjectHelper.callOrElse(node.has("name"), () -> node.get("name").asText(), () -> "");
					ObjectHelper.runIf(
						name.indexOf("$HibernateAccessOptimizer$") == -1 && 
						name.indexOf("$HibernateInstantiator$") == -1, 
						() -> out.add(node)
					);
				}
				bytes = mapper.writerWithDefaultPrettyPrinter().writeValueAsBytes(out);
				FileUtils.writeByteArrayToFile(input, bytes);
				return null;
			});
		}
	}
	
}
