package com.accp.spring.controller;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class WebMvcConfig  extends WebMvcConfigurerAdapter {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        //将所有/static/** 访问都映射到classpath:/static/ 目录下
        //重启项目，访问：http://localhost:8080/static/c.jpg 能正常访问static目录下的c.jpg图片资源
        //静态资源的访问:Spring Boot 默认将 /** 所有访问映射到以下目录：
        //classpath:/static
   //     classpath:/public
      //  classpath:/resources
    //    classpath:/META-INF/resources
        //
        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
    }
}
