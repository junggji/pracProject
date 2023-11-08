<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-11-08
  Time: 오후 5:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <style>
        .titles {
            width: 80%;
            height: 80px;
            display: flex;
            justify-content: space-between;
            margin: 20px auto;
        }
        .titles div:first-child {
            border: 1px solid black;
            width: 20%;
        }
        .titles div:last-child {
            border: 1px solid black;
            width: 80%;
        }

        #mainCont {
            height: 300px;
        }
        #mainCont div {
            height: 100%;
        }
    </style>
</head>
<form action="/main1/writeDataPage" method="post">
<body>
    <div class="titles">
        <div>제목</div>
        <div>
            <input type="text" name="writeTitle"></div>
    </div>
    <div class="titles">
        <div>타입</div>
        <div>
            <select name="categoryId" id="">
                    <option value=1>  문의 </option>
                    <option value=2>  질문 </option>
                    <option value=3>  잡담 </option>
            </select>
        </div>
    </div>
    <div class="titles">
        <div>글쓴이</div>
        <div>
            <input type="text" name="userInfoId"></div>
    </div>

    <div id="mainCont" class="titles">
        <div>내용</div>
        <div>
            <textarea name="writeContents" id="" cols="30" rows="10"></textarea>
        </div>
    </div>
    <div>
<div><button>완료!</button></div>
</form>
</body>
</html>
