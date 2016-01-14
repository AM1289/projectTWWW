<%-- 
    Document   : errorjsp
    Created on : Jan 12, 2016, 9:35:21 PM
    Author     : DP
    Description: Catches each error, explain it to the user
--%>

<%@page import="com.error"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% error err1=new error(); 
           System.out.println(err1.getErrCode());
        %>
        <h1>na kanw include to java me ta errors kai na to kanw catch me jstl!</h1>
    </body>
</html>
