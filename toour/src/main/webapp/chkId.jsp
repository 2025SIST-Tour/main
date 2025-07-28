
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${requestScope.usable}">
  <p>가능</p>
</c:if>
<c:if test="${not requestScope.usable}" >
  <p>불가능</p>
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