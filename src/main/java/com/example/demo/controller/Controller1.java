package com.example.demo.controller;

import com.example.demo.dao.MyDao1;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("main")
public class Controller1 {

    private final MyDao1 dao;

}
