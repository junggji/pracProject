<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-11-07
  Time: 오후 4:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        div {
          width: 100%;
        }
        div ul {
            width: 70%;
            height: 50px;
            display: flex;
            justify-content: space-between;
            list-style: none;
            margin: 100px auto;
        }
        div ul li {
            border: 1px solid black;
            height: 100%;

        }

        div ul #boardCategory {
            width: 20%;
        }
        div ul #boardCategory select {
            width: 100%;
            height: 100%;
        }
        div ul #boardSearch {
            width: 60%;
        }
        div ul #boardSearch input {
            width: 100%; height: 100%;
        }
        div ul #boardButton {
            width: 10%;
        }
        div ul #boardButton button {
            width: 100%;
            height: 100%;
        }

    /*    -------------------------table style-------------------------- */

        #tablediv {
            width: 100%;
        }

        #tablediv table {
            width: 70%;
            margin: 0 auto;
        }

        #tablediv table tr td {
            text-align: center;
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
</head>
<body>
    <div>
        <ul>
            <li id="boardCategory">
                <select name="선택" id="selectbox">
                    <option value="질문">질문2</option>
                    <option value="문의">문의2</option>
                </select>
            </li>
            <li id="boardSearch">
                <input type="text" placeholder="검색어를 입력하세요">

            </li>
            <li id="boardButton">
                <button>검색</button>
            </li>
        </ul>
    </div>

    <div id="tablediv">
        <table>
            <tr>
                <th>글번호</th>
                <th>제목</th>
                <th>카테고리</th>
                <th>작성자</th>
                <th>작성일자</th>
            </tr>
            <c:forEach items="${boardlist}" var="lists">
                <tr>
                    <td>${lists.boardId}</td>
                    <td>${lists.writeTitle}</td>
                    <td>${lists.description}</td>
                    <td>${lists.userName}</td>
                    <td>${lists.writeDate}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
