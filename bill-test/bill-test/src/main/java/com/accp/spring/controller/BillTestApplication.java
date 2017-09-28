package com.accp.spring.controller;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.Banner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication

@MapperScan("com.accp.spring.mapper")
@ComponentScan("com.accp")
@EnableScheduling  //可开启定时任务。
public class BillTestApplication {

	public static void main(String[] args)
	{
		SpringApplication.run(BillTestApplication.class, args);
		/*SpringApplication app=new SpringApplication(BillTestApplication.class);
		app.setBannerMode(Banner.Mode.OFF);
		app.run(args);*/


	}
}
