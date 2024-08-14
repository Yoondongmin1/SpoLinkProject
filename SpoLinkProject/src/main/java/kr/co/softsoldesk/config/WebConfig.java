package kr.co.softsoldesk.config;

	import org.springframework.context.annotation.Configuration;
	import org.springframework.web.servlet.config.annotation.CorsRegistry;
	import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
	
 
	//스프링 MVC의 CORS(Cross-Origin Resource Sharing) 설정을 담당하는 클래스
	@Configuration //스프링의 설정 클래스
	public class WebConfig implements WebMvcConfigurer {

	    @Override
	    public void addCorsMappings(CorsRegistry registry) {
	        
	    	// 모든 경로에 대해 CORS 설정을 추가
	    	registry.addMapping("/**")
	    	
	    		// 허용할 출처(Origin) 목록을 설정
	           .allowedOrigins("http://localhost:8080", "http://localhost:9090")
	           
	           // 허용할 HTTP 메서드를 설정
	           .allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS")
	           
	            // 허용할 HTTP 헤더를 설정
	           .allowedHeaders("*");
	    }
	}

