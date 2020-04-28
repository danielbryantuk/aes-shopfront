package uk.co.danielbryant.djshopping.shopfront.controllers;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class JsonController {

    @RequestMapping("/")
    public String test() {
        return "{\"result\":\"okay\"}";
    }
}
