CREATE DATABASE pracdb1;

USE pracdb1;

CREATE TABLE userinfo (
    userInfoId INT PRIMARY KEY AUTO_INCREMENT,
    loginId VARCHAR(12),
    loginPassword VARCHAR(10),
    userName VARCHAR(10)
);

CREATE TABLE boardCategory(
    CategoryId INT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(20)
);

CREATE TABLE board (
    boardId INT PRIMARY KEY AUTO_INCREMENT,
    userInfoId INT REFERENCES pracdb1.userinfo(userInfoId),
    writeDate DATETIME,
    CategoryId INT REFERENCES pracdb1.boardcategory(CategoryId),
    writeTitle VARCHAR(30),
    writeContents VARCHAR(3000) -- 최대 3000자
);

