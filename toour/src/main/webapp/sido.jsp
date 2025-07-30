<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        #clickSido{
            display: inline-block;
            width: 500px;
            height: 600px;
            border: 1px solid #000;
            background-image: url("images/total.png");
            background-repeat: no-repeat;
            position: relative;
        }

        .gyeonggi{
            display: inline-block;
            width: 30px;
            height: 30px;
            position: absolute;
            right: 150px;
            top: 150px;
        }
    </style>
</head>
<body>

        <div id="clickSido">
            <a href="" onclick="clickSido('gyeonggido')" class="gyeonggi">경기</a>
            <a href="" onclick="clickSido('seoul')" class="seoul">서울</a>
            <a href="" onclick="clickSido('incheon')" class="incheon">인천</a>
            <a href="" onclick="clickSido('gangwondo')" class="gangwon">강원</a>
            <a href="" onclick="clickSido('gyeongbuk')" class="gyeongbuk">경북</a>
            <a href="" onclick="clickSido('gyeongnam')" class="gyeongnam">경남</a>
            <a href="" onclick="clickSido('daegu')" class="daegu">대구</a>
            <a href="" onclick="clickSido('busan')" class="busan">부산</a>
            <a href="" onclick="clickSido('ulsan')" class="ulsan">울산</a>
            <a href="" onclick="clickSido('chungbuk')" class="chungbuk">충북</a>
            <a href="" onclick="clickSido('chungnam')" class="chungnam">충남</a>
            <a href="" onclick="clickSido('daejeon')" class="daejeon">대전</a>
            <a href="" onclick="clickSido('jeonbuk')" class="jeonbuk">전북</a>
            <a href="" onclick="clickSido('jeonnam')" class="jeonnam">전남</a>
            <a href="" onclick="clickSido('gwangju')" class="gwangju">광주</a>
            <a href="" onclick="clickSido('jejudo')" class="jeju">제주</a>
        </div>

</body>
</html>
