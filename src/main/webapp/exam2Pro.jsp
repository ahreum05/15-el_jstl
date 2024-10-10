<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 1. java로 처리 --%>
<%
    double x = 0;//Double.parseDouble(request.getParameter("x"));
    double y = 0;//Double.parseDouble(request.getParameter("y"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <p><%=x %> + <%=y %> = <%=x+y %></p>
     <hr>
     <%--2. EL 표현식으로 처리 --%>
     <p>${param.x} + ${param.y} = ${param.x + param.y}</p>
</body>
</html>