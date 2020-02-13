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

    @GetMapping("hello")
    public String helloWorld1(){
        return "Hello Dunia adasd";
    }


    @GetMapping("hello4")
    public String helloWorld4(){
        return "H";
    }

    @GetMapping("hello3")
    public String helloWorld3(){
        return "Hello Dunia";
    }

    @GetMapping("hello5")
    public String helloWorld5(){
        return "Hello Dunia test";
    }


}
