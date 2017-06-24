<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>
<link href="webjars/bootstrap/3.3.7/css/bootstrap.min.css"
	    		rel="stylesheet">
</head>
<body>
<%@include file="navbar/navigation.jspf" %>

	<div class="container">
<h2>Welcome ${name}</h2> <br></br>

<h3 class="text-center">You are now authenticated. <a href="/list-todos">Click here</a> to start maintaining your todo's.</h3>

</div>
<%@include file="navbar/footer.jspf" %>
