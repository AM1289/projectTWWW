<%-- 
    Document   : index
    Created on : Dec 21, 2015, 1:05:40 PM
    Author     : DP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="Author" content="Panagiotou Dimitrios (dimipana@inf.uth.gr">
        <link rel="stylesheet" href="style.css">
        <title>CoC index page</title>
    </head>
    <body>
        
        <form method="post"  action="log">
            Username:<br>
            <input type="text" name="username" >
            <br>
            Password:<br>
            <input type="password" name="password" >
            <br><br>
            <input type="submit" value="Submit">
        </form>
        <c:set var="number" scope="session" value="5"/>
        <c:if test="${number == '5'}">
             <c:out value="Phew, time has not stopped yet...<br /><br />" escapeXml="false" />
        </c:if>
    </body>
</html>
