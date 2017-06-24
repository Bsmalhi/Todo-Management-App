<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Todo List</title>
<link href="webjars/bootstrap/3.3.7/css/bootstrap.min.css"
	    		rel="stylesheet">
</head>
<body>
<%@include file="navbar/navigation.jspf" %>

	<div class="container">
		<table class="table table-striped">
			<caption> Hi <strong>${name }</strong> Your Todos are</caption>

			<thead>
				<tr>
					<th>Description</th>
					<th>Date</th>
					<th>Completed</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.desc}</td>
						<td><fmt:formatDate pattern="dd/MM/yyyy"
									value="${todo.targetDate}" /></td>
						<td>${todo.done}</td>
						<td>
						<a type="button" class="btn btn-primary" 
								href="/update-todo?id=${todo.id}">Update</a>
						
						<a type="button" class="btn btn-warning" 
							   href="/delete-todo?id=${todo.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<a class="btn btn-success" href="/add-todo">Add</a>
		</div>
		
</div>

<%@include file="navbar/footer.jspf"%>