package com.example.springboothelloworld;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
@RequestMapping("/hello")
public class HelloWorldController {

    @GetMapping
    private ResponseEntity<?> hello() {
        return new ResponseEntity<>("Hello world!, Vikas is here...", HttpStatus.OK);
    }
}
