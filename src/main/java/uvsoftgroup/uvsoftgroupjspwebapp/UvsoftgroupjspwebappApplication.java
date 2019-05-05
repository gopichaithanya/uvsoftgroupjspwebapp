package uvsoftgroup.uvsoftgroupjspwebapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
public class UvsoftgroupjspwebappApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(UvsoftgroupjspwebappApplication.class);
	}

	public static void main(String[] args) throws Exception {
		SpringApplication.run(UvsoftgroupjspwebappApplication.class, args);
	}

}
