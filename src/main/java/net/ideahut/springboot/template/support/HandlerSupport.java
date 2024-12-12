package net.ideahut.springboot.template.support;

import java.time.Duration;
import java.util.concurrent.CompletableFuture;

import org.apache.kafka.clients.producer.ProducerRecord;
import org.springframework.kafka.requestreply.RequestReplyFuture;

import net.ideahut.springboot.kafka.KafkaHandler;
import net.ideahut.springboot.kafka.KafkaProperties;
import net.ideahut.springboot.kafka.KafkaSender;
import net.ideahut.springboot.kafka.ReplyKafkaSender;

/*
 * HANYA UNTUK DEVELOPMENT & TES
 * Daftar unsupported handler jika library tidak include di image (tergantung dari graalvm yang digunakan pada saat build)
 * Kasus:
 * - Fungsi kafka bisa dinonaktifkan jika server belum tersedia
 */
public class HandlerSupport {
	
	private HandlerSupport() {}
	
	/*
	 * UNSUPPORTED KAFKA HANDLER
	 */
	public static final KafkaHandler UNSUPPORTED_KAFKA_HANDLER = new KafkaHandler() {
		private final KafkaProperties properties = new KafkaProperties();
		
		@SuppressWarnings("rawtypes")
		private final KafkaSender kafkaSender = new KafkaSender() {
			@Override
			public CompletableFuture send(ProducerRecord data) {
				throw new UnsupportedOperationException();
			}
			@Override
			public CompletableFuture send(Object data) {
				throw new UnsupportedOperationException();
			}
			@Override
			public CompletableFuture send(Object key, Object data) {
				throw new UnsupportedOperationException();
			}
			@Override
			public CompletableFuture send(Integer partition, Object key, Object data) {
				throw new UnsupportedOperationException();
			}
			@Override
			public CompletableFuture send(Integer partition, Long timestamp, Object key, Object data) {
				throw new UnsupportedOperationException();
			}
		};
		
		@SuppressWarnings("rawtypes")
		private final ReplyKafkaSender replyKafkaSender = new ReplyKafkaSender() {
			@Override
			public CompletableFuture send(ProducerRecord data) {
				throw new UnsupportedOperationException();
			}
			@Override
			public CompletableFuture send(Object data) {
				throw new UnsupportedOperationException();
			}
			@Override
			public CompletableFuture send(Object key, Object data) {
				throw new UnsupportedOperationException();
			}
			@Override
			public CompletableFuture send(Integer partition, Object key, Object data) {
				throw new UnsupportedOperationException();
			}
			@Override
			public CompletableFuture send(Integer partition, Long timestamp, Object key, Object data) {
				throw new UnsupportedOperationException();
			}
			@Override
			public RequestReplyFuture sendAndReceive(ProducerRecord data) {
				throw new UnsupportedOperationException();
			}
			@Override
			public RequestReplyFuture sendAndReceive(ProducerRecord data, Duration replyTimeout) {
				throw new UnsupportedOperationException();
			}
			@Override
			public RequestReplyFuture sendAndReceive(Object data) {
				throw new UnsupportedOperationException();
			}
			@Override
			public RequestReplyFuture sendAndReceive(Object data, Duration replyTimeout) {
				throw new UnsupportedOperationException();
			}
		};

		@Override
		public KafkaProperties getProperties() {
			return properties;
		}

		@SuppressWarnings("unchecked")
		@Override
		public <K, V> KafkaSender<K, V> getSender(String topic) {
			return kafkaSender;
		}

		@SuppressWarnings("unchecked")
		@Override
		public <K, V, R> ReplyKafkaSender<K, V, R> getReplySender(String topic) {
			return replyKafkaSender;
		}

		@SuppressWarnings("unchecked")
		@Override
		public <K, V> KafkaSender<K, V> createSender(String topic) {
			return kafkaSender;
		}

		@SuppressWarnings("unchecked")
		@Override
		public <K, V, R> ReplyKafkaSender<K, V, R> createReplySender(String topic) {
			return replyKafkaSender;
		}
	};

}
