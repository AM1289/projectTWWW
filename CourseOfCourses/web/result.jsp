<%-- 
    Document   : result
    Created on : Jan 1, 2016, 2:40:59 PM
    Author     : DP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList" %>
<%@ page session="true" %>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>

<title> mainBL logic page</title>

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

<form id="form2" name="form2" class="wufoo topLabel page" accept-charset="UTF-8" >
  
<header id="header" class="info">
<h2>Για να παρακολουθήσετε τα επιλεγμένα μαθήματα, θα πρέπει να έχετε παρακολουθήσει επιτυχώς και τα:</h2>
</header><ul>
<li id="foli1" class="notranslate">

  <table>      
    <c:forEach items="${list}" var="item">
    <tr>
      <td><c:out value="${item}" /></td>
    </tr>
    </c:forEach> 
 </table>
    
</li>
</ul>
<br>
<table>
    <tr> <b> <c> Τα μαθηματα του 1ου Εξαμήνου είναι τα εξής: </c> </b>
    <c:forEach items="${sreq1}" var="item">
    <tr>
      <td><c:out value="${item}" /></td>
    </tr>
    </c:forEach>    
    
</table>
 <br>
<table>
    <tr> <b> <c> Τα μαθηματα του 2ου Εξαμήνου είναι τα εξής: </c> </b>
    <c:forEach items="${sreq2}" var="item">
    <tr>
      <td><c:out value="${item}" /></td>
    </tr>
    </c:forEach> <br>
</table>
 <br>
<table>
    <tr> <b> <c> Τα μαθηματα του 3ου Εξαμήνου είναι τα εξής: </c> </b>
    <c:forEach items="${sreq3}" var="item">
    <tr>
      <td><c:out value="${item}" /></td>
    </tr>
    </c:forEach> <br>
</table>
 <br>
<table>
    <tr> <b> <c> Τα μαθηματα του 4ου Εξαμήνου είναι τα εξής: </c> </b>
    <c:forEach items="${sreq4}" var="item">
    <tr>
      <td><c:out value="${item}" /></td>
    </tr>
    </c:forEach> <br>
</table>    
 <br>
</form>
     
    </body>
</html>
