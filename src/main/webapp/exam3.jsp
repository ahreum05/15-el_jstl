<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- jstl을 사용하기 위한 설정--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h3>** 변수 설정 **</h3>
    <c:set var="name">홍길동</c:set>
    <c:set var="age" value="25"></c:set>
    나의 이름은 ${name} 입니다.<br>
    나의 나이는 ${age} 입니다.<br>
    나의 키는 ${height} 입니다.<br>
    <hr>
    
    <h3>** 변수 삭제 **</h3>
    <c:remove var="name"/>
    나의 이름은 ${name} 입니다.<br>
    나의 나이는 ${age} 입니다.<br>
    나의 키는 ${height} 입니다.<br>
    <hr>
    
    <h3>** forEach : 일반 for문 대체 **</h3>
    <c:forEach var="i" begin="1" end="10" step="1">
        ${i} &nbsp;&nbsp;
    </c:forEach>
    <hr>
    
    <h3>** forEach : 확장 for문 대체**</h3>
    <c:set var="arr" value="10, 20, 30, 40, 50"/>
    <%-- for(int data : arr) {} --%>
    <c:forEach var="data" items="${arr}">
        ${data} &nbsp;&nbsp; 
    </c:forEach>
    <hr>
    
    <h3>** 문자열 분리 **</h3>
    <c:forTokens var="car" items="소나타, 그렌저, 아우디, 링컨, 페라리" delims=",">
       ${car}<br>
    </c:forTokens>
    <hr>
    
    <%-- jstl은 else에 해당하는 명령문은 없음 --%>
    <h3>** if **</h3>
    <c:set var="age" value="15"/>
    <c:if test="${age >= 20 }">
        성인
    </c:if>
    <c:if test="${age < 20 }">
        청소년
    </c:if>
    <hr>
    
    <h3>** 다중 선택 **</h3>
    <c:set var="color" value="red"/>
    <c:choose>
        <c:when test="${color=='red' }">빨강</c:when>
        <c:when test="${color=='green' }">초록</c:when>
        <c:when test="${color=='blue' }">파강</c:when>
        <c:when test="${color=='magenta' }">보라</c:when>
        <c:otherwise>하늘</c:otherwise>
    </c:choose>
</body>
</html>












