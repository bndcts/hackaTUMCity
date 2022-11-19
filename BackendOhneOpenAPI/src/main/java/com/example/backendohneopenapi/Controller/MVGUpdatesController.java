package com.example.backendohneopenapi.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MVGUpdatesController {

    @GetMapping("/")
    public String index() {
        return "Greetings from Spring Boot!";
    }
}
