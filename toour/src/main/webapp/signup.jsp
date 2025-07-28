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
      <td><input type="text" id="u_id" name="u_id"/><div id="usable"></div> </td>
    </tr>
    <tr>
      <td>PW:</td>
      <td><input type="password" id="u_pw" name="u_pw"/></td>
    </tr>
    <tr>
      <td>RE-PW:</td>
      <td><input type="password" id="u_repw" name="u_repw"/></td>
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
<script>
  $(function (){
    //FIXME: 내일 고치겠음
    $("#u_id").keyup(function (){
      console.log("here");
      let u_id = document.getElementById("u_id");
      let u_id_t = u_id.value.trim();
      $.ajax({
          url:"Controller?type=chkid",
          type:"post",
          data:"u_id="+u_id_t
      }).done(function (res) {
        $("#usable").html(res);
      });
    })

  });

  function sendForm(frm) {
    document.SignUp_form.submit();
  }
</script>
</body>
</html>