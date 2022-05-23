<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <h2>Welcome to home page</h2>
  User:<security:authentication property="principal.username"/><br/><hr>
  Role:<security:authentication property="principal.authorities"/>
  <security:authorize access="hasRole('MANAGER')">
        <hr>
     Only for leaders<a href="${pageContext.request.contextPath}/leaders">click for leadership page</a>
  <hr>
  </security:authorize>
  
   <security:authorize access="hasRole('ADMIN')">
        <hr>
     Only for system<a href="${pageContext.request.contextPath}/systems">click for system page</a>
  <hr>
  </security:authorize>

  <form:form action="${pageContext.request.contextPath}/logout" method="POST">
     <input type="submit" value="logout"/>
  </form:form>
</body>
</html>