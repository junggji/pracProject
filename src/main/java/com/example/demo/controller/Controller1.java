package com.example.demo.controller;

import com.example.demo.dao.MyDao1;
import com.example.demo.domain.boardDto;
import com.example.demo.domain.userInfoDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;
import java.util.Objects;

@Controller
@RequiredArgsConstructor
@RequestMapping("main1")
public class Controller1 {

    private final MyDao1 dao;

    @GetMapping("sub0")
    public void method0 () {

    }

    @GetMapping("sub1")
    public void inqueryMethod(Integer id, Model model) {
        List<Map<String, Object>> userinfo = dao.inquery(id);

        model.addAttribute("userInfo", userinfo);
    }

    @GetMapping("board")
    public void method1(boardDto dto, Model model) {
        List<Map<String, Object>> list1 = dao.writelist(dto);

        model.addAttribute("boardlist", list1);
    }
}
