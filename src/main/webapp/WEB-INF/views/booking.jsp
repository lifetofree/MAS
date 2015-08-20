<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title></title>
</head>
<body>
	test home body
	<div id="panelMain">
		Error : ${ retSamples } <br />

		<form:form class="form-inline" modelAttribute="addBooking">
			<div class="form-group">
				<form:input path="name" class="form-control" placeHolder="Host Name" />
					<form:input path="car" class="form-control" placeHolder="Car Name" />
				<form:input path="domain" class="form-control" placeHolder="Domain Name" />
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
		</form:form>

		<br />
		<table class="table table-striped table-bordered table-hover">
			<thead>
				<tr>
					<td>ID</td>
					<td>Name</td>
					<td>car</td>
					<td>Domain</td>
				</tr>
			</thead>
			<c:choose>
				<c:when test="${not empty retSampleList}">
					<c:forEach var="listValue" items="${retSampleList}">
						<tr>
							<td><c:out value="${listValue.id}" /></td>
							<td><c:out value="${listValue.name}" /></td>
							<td><c:out value="${listValue.car}" /></td>
							<td><c:out value="${listValue.domain}" /></td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td>-</td>
						<td>-</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</table>
	</div>
</body>
</html>