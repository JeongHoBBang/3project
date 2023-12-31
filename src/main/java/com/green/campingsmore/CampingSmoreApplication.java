package com.green.campingsmore;

import com.green.campingsmore.config.properties.AppProperties;
import com.green.campingsmore.config.properties.CorsProperties;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableScheduling
@SpringBootApplication
@EnableTransactionManagement
@EnableConfigurationProperties({AppProperties.class, CorsProperties.class })
public class CampingSmoreApplication {

    public static void main(String[] args) {
        SpringApplication.run(CampingSmoreApplication.class, args);
    }

}
