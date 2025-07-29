<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <style>
    #table{
      border-collapse: collapse;
    }
    #table caption{
      text-indent: -9999px;
      height: 0;
    }
    #table td{
      border: 1px solid #000;
    }
  </style>
</head>
<body>
<form action="Controller?type=signup" method="post" name="SignUp_form">
  <table id="table">
    <caption>회원가입 테이블</caption>
    <tbody>
    <tr>
      <td>ID:</td>
      <td><input type="text" id="u_id" name="u_id"/><div id="id_usable"></div></td>
    </tr>
    <tr>
      <td>PW:</td>
      <td><input type="password" id="u_pw" name="u_pw"/><div id="pw_usable"></div> </td>
    </tr>
    <tr>
      <td>RE-PW:</td>
      <td><input type="password" id="u_repw" name="u_repw"/><div id="repw_usable"></div> </td>
    </tr>
    <tr>
      <td>별명:</td>
      <td><input type="text" id="u_nickname" name="u_nickname"/></td>
    </tr>
    <tr>
      <td>이름:</td>
      <td><input type="text" id="u_name" name="u_name"/></td>
    </tr>
    <tr>
      <td>이메일:</td>
      <td><input type="text" id="u_email" name="u_email"/></td>
    </tr>
    <tr>
      <td colspan="2"><button type="button" onclick="sendForm(this.form)">가입하기</button></td>
    </tr>
    </tbody>
  </table>
  <hr/>
</form>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script>
  $(function (){
    //아이디 창에 타이핑을 쳤을 때
    $("#u_id").keyup(function (){
      let u_id = document.getElementById("u_id");
      let u_id_t = u_id.value.trim();
      $.ajax({
          url:"Controller?type=chkid",
          type:"post",
          data:"u_id="+u_id_t
      }).done(function (res) {
        $("#id_usable").html(res);
      });
    });

    $("#u_pw").keyup(function (){
      let u_pw = document.getElementById("u_pw");
      let u_pw_t = u_pw.value.trim();
      console.log(u_pw_t);
      $.ajax({
        url:"Controller?type=chkpw",
        type:"post",
        data:"u_pw="+u_pw_t
      }).done(function (res) {
        $("#pw_usable").html(res);
      });
    });

    // 비밀번호 확인(확인번호)에 타이핑을 쳤을 때
    $("#u_repw").keyup(function (){
      //비밀번호
      let u_pw = document.getElementById("u_pw");
      let u_pw_v = u_pw.value.trim();
      //확인번호
      let u_repw = document.getElementById("u_repw");
      let u_repw_v = u_repw.value.trim();

      if (u_pw_v!=u_repw_v){
        $("#repw_usable").text("비밀번호와 동일하게 입력해주세요.");
      }else{
        $("#repw_usable").text("");
      }

    });

  });

  function sendForm(frm) {
    document.SignUp_form.submit();
  }
</script>
</body>
</html>