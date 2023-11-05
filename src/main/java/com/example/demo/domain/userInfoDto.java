package com.example.demo.domain;

import lombok.Data;

@Data
public class userInfoDto {
    private Integer userInfoId;
    private String loginId;
    private String loginPassword;
    private String userName;
}
