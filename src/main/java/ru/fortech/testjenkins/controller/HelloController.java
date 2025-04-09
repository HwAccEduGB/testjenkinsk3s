package ru.fortech.testjenkins.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    @GetMapping("/")
    public String sayHello(){
        return "Hello kuber test check vith hook 14.39";
    }
}
