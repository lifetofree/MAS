<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>สถานที่</title>

<script>
	//Show/Hide search
	function Show_Divadd(insertdata) {
		if (false == $(insertdata).is(':visible')) {
		$(insertdata).show(250);
		} else {
			$(insertdata).hide(250);
		}
	}
</script>

	<link
		href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.1.0/css/bootstrap-combined.min.css" 
		rel="stylesheet" />

</head>

<body>
	<div id="panelMain">

		<div class="row">
			<div class="col-lg-12">
				<h2>
					ชื่อสถานที่<small>(รายละเอียดสถานที่)</small>
				</h2>
			</div>
		</div>
		<br>
		
		<div id="insertdata"
			style="background-color: #EEEEEE; witdh: 50pt; Height: 70pt">

			<label
				style="font-weight: bold; padding-top: 10pt; font-size: 14pt; font-weight: bold; padding-left: 20pt">เพิ่มสถานที่</label>

			<form:form class="form-inline" modelAttribute="addPlace"
				method="POST" action="${pageContext.request.contextPath}/place/edit">
				<div class="form-group">
					<form:hidden path="id" />
					<label
						style="font-weight: bold; padding-top: 10pt; padding-left: 40pt">ข้อมูลสถานที่
						: </label>
					<form:input path="placeTH" class="form-control"
						style="Height: 20pt" />
				</div>
				<div class="form-group">
					<label style="font-weight: bold">สถานะ : </label>
					<form:select path="trStatus" style="Width: 80pt; Height: 20pt"
						id="trStatus" name="trStatus">
						<option value="1">Online</option>
						<option value="0">Offline</option>
					</form:select>
				</div>
				<button type="submit" name="btnedit" value="save"
					class="btn btn-success glyphicon glyphicon-floppy-disk"
					data-original-title="save" data-toggle="tooltip"></button>
				<button type="submit" name="btnedit" value="cancel"
					class="btn btn-danger glyphicon glyphicon-remove"
					data-original-title="cancel" data-toggle="tooltip"></button>
			</form:form>



		</div>

		<br>

		<div>
			<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<td style="font-weight: bold; font-size: 13pt;">ลำดับ</td>
						<td style="font-weight: bold; font-size: 13pt;">ชื่อสถานที่</td>
						<td style="font-weight: bold; font-size: 13pt;">สถานะ</td>
						<td style="font-weight: bold; font-size: 13pt;">Management</td>

					</tr>
				</thead>
				<c:choose>
					<c:when test="${not empty retSampleList}">
						<c:forEach var="listValue" items="${retSampleList}">
							<tr>
								<td style="font-size: 13pt;"><c:out value="${listValue.id}" /></td>
								<td style="font-size: 13pt;"><c:out
										value="${listValue.placeTH}" /></td>
								<td style="font-size: 13pt;"><c:out
										value="${listValue.trStatusDesc}" /></td>
								 <td><a
									href="<c:url value='/place/edit/${listValue.id}' />"><span
										class="btn btn-primary glyphicon glyphicon-edit"
										data-original-title="edit" data-toggle="tooltip"
										onclick="Show_Divedit(editdata)" aria-hidden="true"></span></a>
										 <a href="<c:url value='/place/delete/${listValue.id}' />">
										 <span	class="btn btn-danger glyphicon glyphicon-trash" onclick="Show_Divdelete" aria-hidden="true"
										 data-original-title="delete" data-toggle="tooltip" ></span></a>
										 </td>
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


	</div>
</body>
</html>