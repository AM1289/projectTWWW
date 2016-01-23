<%-- 
    Document   : errorjsp
    Created on : Jan 12, 2016, 9:35:21 PM
    Author     : DP
    Description: Catches each error, explain it to the user
--%>

<%@page import="com.error"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page session="true" %>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>

<title> error page</title>

<!-- Meta Tags -->
<meta charset="utf-8">
<meta name="generator" content="Wufoo">
<meta name="robots" content="index, follow">

<!-- CSS -->
<link href="structure.css" rel="stylesheet">
<link href="form.css" rel="stylesheet">
<link href="theme.css" rel="stylesheet">
<link href="https://" rel="stylesheet">

<!-- JavaScript -->
<script src="wufoo.js"></script>

</head>

<body id="public">
<div id="container" class="ltr">

<h1 id="logo"> Course Of Courses</h1>

<form id="form2" name="form2" class="wufoo topLabel page" accept-charset="UTF-8" method="post">
  
<header id="header" class="info">
<h2>Δυστυχώς δεν μπορείτε να συνεχίσετε στην εφαρμογή μας γιατί κάποιο σφάλμα προέκυψε<br> Λεπτομέρειες Σφάλματος:</h2>
</header><ul>
<li id="foli1" class="notranslate">
    <fieldset>
        <% error err1=new error(); %>
        <%= err1.getErrName()%>
    </fieldset>
    </li>
</ul>
    </form>      
    </body>
    
    
</html>
