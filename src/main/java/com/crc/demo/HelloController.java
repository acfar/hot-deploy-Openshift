package com.crc.demo;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("hello1/{text}")
    public String helloWorld1(@PathVariable String text){
        return text;
    }

    @GetMapping("hello2")
    public String helloWorld1(){
        return "Hello Dunia";
    }

    @GetMapping("hello3")
    public String helloWorld2(){
        return "Hello Dunia 3";
    }
}
