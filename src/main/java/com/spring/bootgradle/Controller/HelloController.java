package com.spring.bootgradle.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.TimeUnit;

@RestController
public class HelloController {

    private static long start = System.currentTimeMillis();
    @GetMapping("/")
    public String sayHello() {

        return String.format("Hello, Spring boot with Gradle Build");
    }

}
