package com.kiwi.configuration;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.module.SimpleModule;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateTimeDeserializer;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisStandaloneConfiguration;
import org.springframework.data.redis.connection.lettuce.LettuceConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import com.kiwi.jwt.AuthEntryPointJwt;
import com.kiwi.jwt.AuthTokenFilter;
import com.kiwi.service.Impl.UserDetailsServiceImpl;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Configuration
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig {

		@Value("${spring.redis.host}")
		private String redisHost;

		@Value("${spring.redis.port}")
		private int redisPort;

		 @Autowired
	    private UserDetailsServiceImpl userDetailsService;
	  
	    @Autowired
	    private AuthEntryPointJwt unauthorizedHandler;
	    
	    @Bean
	    public AuthTokenFilter authenticationJwtTokenFilter() {
	      return new AuthTokenFilter();
	    }
	    
	    @Bean
	    public PasswordEncoder passwordEncoder() {
	      return new BCryptPasswordEncoder();
	    }    
	    
	    @Bean
	    public DaoAuthenticationProvider authenticationProvider() {
	        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
	         
	        authProvider.setUserDetailsService(userDetailsService);
	        authProvider.setPasswordEncoder(passwordEncoder());
	     
	        return authProvider;
	    }

	    @Bean
	    public AuthenticationManager authenticationManager(AuthenticationConfiguration authConfig) throws Exception {
	      return authConfig.getAuthenticationManager();
	    }
	    
	    @Bean
	    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
	      http.cors().and().csrf().disable()
	          .exceptionHandling().authenticationEntryPoint(unauthorizedHandler).and()
	          .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS).and()
	          .authorizeRequests().antMatchers("/api/auth/**").permitAll()
	          .antMatchers("/**").permitAll()
	          .anyRequest().authenticated();
	      
	      http.authenticationProvider(authenticationProvider());
	  
	      http.addFilterBefore(authenticationJwtTokenFilter(), UsernamePasswordAuthenticationFilter.class);
	      
	      return http.build();
	    }

		@Bean
		LettuceConnectionFactory redisConnectionFactory() {
			RedisStandaloneConfiguration configuration =
					new RedisStandaloneConfiguration(redisHost, redisPort);
			return new LettuceConnectionFactory(configuration);
		}

		@Bean
		public RedisTemplate<String, Object> redisTemplate() {
			RedisTemplate<String, Object> template = new RedisTemplate<>();
			template.setConnectionFactory(redisConnectionFactory());
			template.setKeySerializer(new StringRedisSerializer());
			template.setValueSerializer(new Jackson2JsonRedisSerializer<>(Object.class));

			template.setHashKeySerializer(new StringRedisSerializer());
			template.setHashValueSerializer(new Jackson2JsonRedisSerializer<>(Object.class));

			template.afterPropertiesSet();
			return template;
		}

		@Bean
		public ObjectMapper redisObjectMapper(){
			ObjectMapper objectMapper = new ObjectMapper();
			SimpleModule module = new SimpleModule();
			module.addSerializer(LocalDateTime.class, new LocalDateTimeSerializer(DateTimeFormatter.ISO_DATE_TIME));
			module.addDeserializer(LocalDateTime.class, new LocalDateTimeDeserializer(DateTimeFormatter.ISO_DATE_TIME));
			return objectMapper;
		}

}
