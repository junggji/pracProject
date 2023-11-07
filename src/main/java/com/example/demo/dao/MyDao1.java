package com.example.demo.dao;

import com.example.demo.domain.boardDto;
import com.example.demo.domain.userInfoDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

@Mapper
public interface MyDao1 {

    @Select("""
        SELECT loginId, loginPassword, userName
        FROM pracdb1.userinfo
        WHERE userInfoId = #{id};
        """)
    List<Map<String, Object>> inquery(Integer id);


    @Select("""
        SELECT boardId,
            writeTitle,
            description,
            userName,
            writeDate
        FROM pracdb1.board b JOIN pracdb1.userinfo u ON b.userInfoId = u.userInfoId
            JOIN pracdb1.boardcategory bc ON bc.CategoryId = b.CategoryId
            ORDER BY boardId DESC
        """)
    List<Map<String, Object>> writelist(boardDto dto);
}
