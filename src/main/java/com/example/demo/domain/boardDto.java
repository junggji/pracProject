package com.example.demo.domain;

import lombok.Data;

@Data
public class boardDto {
    private Integer boardId;
    private Integer userInfoId;
    private String writeDate; // LocalDate타임으로 하는것도 알기
    private Integer categoryId;
    private String writeTitle;
    private String writeContents;
}
