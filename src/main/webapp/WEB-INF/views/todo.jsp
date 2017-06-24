<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add to do</title>
<link href="webjars/bootstrap/3.3.7/css/bootstrap.min.css"
	    		rel="stylesheet">
</head>
<body>
<div class="container">
<h1>Add a Todo</h1>
    <form:form method="POST" commandName="todo">
    
    <form:hidden path="id"></form:hidden>
    <form:hidden path="user"></form:hidden>
    
    <fieldset class="form-group">
        <form:label path="desc">Description :</form:label>
         <form:input path="desc" type="text" class="form-control" required="required"></form:input> 
         <form:errors path="desc" cssClass="text-warning"></form:errors>
    </fieldset> 
    
    <fieldset class="form-group">
                <form:label path="targetDate">Target Date</form:label>
                <form:input path="targetDate" type="text" class="form-control"
                    required="required" />
                <form:errors path="targetDate" cssClass="text-warning" />
    </fieldset>    
    
        <input class="btn btn-success" type="submit" value="submit" />
    </form:form>
    
</div>

<%@include file="navbar/footer.jspf"%>