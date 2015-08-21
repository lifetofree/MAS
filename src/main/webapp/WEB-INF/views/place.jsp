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
	<br/><br/>
	<h1 align="center">ระบบจองห้องประชุม</h1>	
	<br/>
	
	<h3>ข้อมูลสถานที่<small> (รายละเอียด)</small></h3>
	
		Error : ${ retPlace } <br />

		<form:form class="form-inline" modelAttribute="dataM0_TbPlace"
			method="POST"
			action="${pageContext.request.contextPath}/place/upsert">
			<div class="form-group">
				<form:hidden path="id" />
				<form:input path="name" class="form-control" placeHolder="Host Name" />
				<form:input path="domain" class="form-control" placeHolder="Domain Name" />
			</div>
			<%-- <form:select path="country">
				<form:options items="${countryList}" />
			</form:select> --%>
			<button type="submit" name="cmdName" value="save"
				class="btn btn-default">
				<span class="glyphicon glyphicon-ok" aria-hidden="true"
					data-original-title="save" data-toggle="tooltip"></span>
			</button>
			<button type="submit" name="cmdName" value="cancel"
				class="btn btn-default">
				<span class="glyphicon glyphicon-remove" aria-hidden="true"
					data-original-title="cancel" data-toggle="tooltip"></span>
			</button>
		</form:form>

		<br />
		<table class="table table-striped table-bordered table-hover">
			<thead>
				<tr>
					<td>ID</td>
					<td>Name</td>
					<td>Domain</td>
					<td>Action</td>
				</tr>
			</thead>
			<c:choose>
				<c:when test="${not empty retPlaceList}">
					<c:forEach var="listValue" items="${retPlaceList}">
						<tr>
							<td><c:out value="${listValue.id}" /></td>
							<td><c:out value="${listValue.name}" /></td>
							<td><c:out value="${listValue.domain}" /></td>
							<td><a
								href="<c:url value='/place/upsert/${listValue.id}' />"><span
									class="glyphicon glyphicon-edit" aria-hidden="true"
									data-original-title="edit" data-toggle="tooltip"></span></a></td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</table>
	</div>
</body>
</html>