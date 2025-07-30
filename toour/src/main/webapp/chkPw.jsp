
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 비밀번호 최소 길이 9로 설정--%>
<c:set var="pw_len" value="9"/>

<%--사용 가능--%>
<c:if test="${requestScope.usable}">
  <p>${requestScope.alertText}</p>
  <%--최소 길이 이하일 경우--%>
  <c:if test="${param.u_pw.length() < pw_len}">
    <p>*${pw_len}자 이상 기입해주세요</p>
  </c:if>
  <%--최소 길이 이상일 경우 가능 --%>
  <c:if test="${param.u_pw.length() >= pw_len}">
  </c:if>
</c:if>
<%-- 사용 불가능 --%>
<c:if test="${not requestScope.usable}" >
  <p>${requestScope.alertText}</p>
</c:if>

