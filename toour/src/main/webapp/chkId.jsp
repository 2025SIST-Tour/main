
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--아이디 최소 길이 8로 설정--%>
<c:set var="id_len" value="8"/>

<%-- 아이디에 한글이 없을 경우 --%>
<c:if test="${requestScope.usable}">
  <%--최소 길이 이하일 경우--%>
  <c:if test="${param.u_id.length() < id_len}">
    <p>*${id_len}자 이상 기입해주세요</p>
  </c:if>
  <%--최소 길이 이상일 경우 가능 --%>
  <c:if test="${param.u_id.length() >= id_len}">
    <p>${requestScope.alertText}</p>
  </c:if>
</c:if>


<%-- 아이디에 한글이 있을 경우 --%>
<c:if test="${not requestScope.usable}" >
  <p>${requestScope.alertText}</p>
</c:if>


<%--<%--%>
<%--  Object obj  =request.getAttribute("usable");--%>
<%--  String usable = (String) obj;--%>
<%--  if(usable.equals("0")){--%>
<%--%>--%>

<%--<p id="chk" >사용불가</p>--%>
<%--<%--%>
<%--}else {--%>
<%--%>--%>

<%--<p id="chk">사용가능</p>--%>
<%--<%--%>
<%--  }--%>
<%--%>--%>