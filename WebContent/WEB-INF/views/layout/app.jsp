<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>TasMane</title>
<!-- You MUST include jQuery before Fomantic -->
<script
    src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
    href="https://cdn.jsdelivr.net/npm/fomantic-ui@2.9.0/dist/semantic.min.css">
<script
    src="https://cdn.jsdelivr.net/npm/fomantic-ui@2.9.0/dist/semantic.min.js"></script>

<link rel="stylesheet" href="<c:url value='/css/style.css' />">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
    href="https://fonts.googleapis.com/css2?family=Kosugi+Maru&display=swap"
    rel="stylesheet">
</head>
<body>
    <!-- loader -->
    <div class="ui dimmer" id="dimmer">
        <div class="ui massive text loader">
            <h3>Loading</h3>
        </div>
    </div>
    <script>
     // ** Loader ON
        $('#dimmer').dimmer('show');
    </script>


    <div class="ui inverted borderless top fixed fluid menu">
        <header class="header item">
            <span>TasMane</span>
        </header>
        <div class="right menu">
            <a class="item" href="http://localhost:8080/tasklist/index">トップ</a>
        </div>
    </div>

    <div id="wrapper" style="padding-top:45px">
        <div id="content">${param.content}</div>

        <div class="ui divider" style="padding-top:5px;"></div>
        <div id="footer">holo - yoitsu</div>
    </div>

    <script>
        window.onload = (function removeLoading() {
            setTimeout(function () {
                $('#dimmer').dimmer('hide');
            }, 500);
        })

        function linkClick() {
            $('#dimmer').dimmer('show');
        }

    </script>
</body>
</html>