<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Show All Users</title>
</head>
<body>
	<center> <table border=1>
		<thead>
			<tr>
				<th>Id</th>
				<th>Brand</th>
				<th>Model</th>
				<th>Date</th>
				<th colspan=2>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="item">
				<tr>
					<td><center><c:out value="${item.id}" /></center></td>
					<td><center><c:out value="${item.brand}" /></center></td>
					<td><center><c:out value="${item.model}" /></center></td>
					<td><center><fmt:formatDate pattern="yyyy-MMM-dd" value="${item.date}" /></center></td>
					<td><a
						href="PhoneController?action=edit&id=<c:out value="${item.id}"/>">
						 <p style="text-align: center"><button>Update</button>
						
						</a></td>
					<td><a
						href="PhoneController?action=delete&id=<c:out value="${item.id}"/>">
						 <p style="text-align: center"><button>Delete</button>
						</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p>
		<a href="PhoneController?action=insert">
		<p style="text-align: center"><button>Add</button></a>
	</p>
</body></center>
</html>