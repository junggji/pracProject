USE pracdb1;

INSERT INTO userinfo (loginId, loginPassword, userName)
VALUES ('jjh', '1234', '정지환');

INSERT INTO userinfo (userInfoId, loginId, loginPassword, userName)
VALUES (2, 'kim', '2345', '김민재');

SELECT * FROM userinfo;