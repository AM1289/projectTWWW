<%-- 
    Document   : result
    Created on : Jan 1, 2016, 2:40:59 PM
    Author     : DP
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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

<form id="form2" name="form2" class="wufoo topLabel page" accept-charset="UTF-8" method="post" action="mainBL">
  
<header id="header" class="info">
<h2>Για να παρακολουθήσετε τα επιλεγμένα μαθήματα, θα πρέπει να έχετε παρακολουθήσει επιτυχώς και τα:</h2>
</header><ul>
<li id="foli1" class="notranslate">
<fieldset>

       
        <%
            List styles = (List) request.getAttribute("list");
            Iterator it = styles.iterator();
            while(it.hasNext()) {
            out.print("<br>" + it.next());
        }
        %>
    </body>
</html>
