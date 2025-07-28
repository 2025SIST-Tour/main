
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${requestScope.usable}" scope="page">
  <label>가능</label>
</c:if>
<c:if test="${!requestScope.usable}" scope="page">
  <label>불가능</label>
</c:if>