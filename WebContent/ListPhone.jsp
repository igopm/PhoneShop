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

<link rel="stylesheet" href="screen.css" >
 <body style="background-color:FFFFFFF;">  
			 
			     <a href="Home.html"title="Home">	 
                  <center><img src="images/Home.png"alt="Home logo"></a></center>
                
				 <br />
				 <hr />
				 
				 <center><table  style="background-color:#FFFFFF;">
				 <tr>
				 <td>
				 <center><a href="subfolder/Video.html"title="Video">Video</a></center>
				 </td>
				 
				 <td>
				 <center><a href="subfolder/manufacturer.html">Manufacturer</a></center>
				 </td>
				 
				 <td>
				 <center><a href="subfolder/Colour.html">Colour</a> </center>
				 </td>
				 
				 <td>
				 <center><a href="ListPhone.jsp"title="Table">Table</a>
				 </td>
				 
				 <td>
				 <center><a href="subfolder/Shape.html"title="Shape">Shape</a>
				 </td>
				 
				 </tr>
				 
				 
				 <tr>
				 <td>
				 <a href="subfolder/video.html">
				 <center><img src="images/8805.png"alt="smartphones_logo"width="100" height="100"> </center></a>
				 </td>
				 
				 <td>
				 <a href="subfolder/manufacturer.html">
				 <center><img src="images/radio.jpg"width="100" height="100"></center></a>
				 </td>
				 
				 <td>
				 <a href="subfolder/Colour.html">
				 <center><img src="images/colur.jpg"alt="Colour_logo" width="100" height="100"> </center></a>
				 </td>
				 
				 <td>
				 <a href="ListPhone.jsp">
				 <center><img src="images/Table.png"alt="Table_logo" width="100" height="100"> </center></a>
				 </td>
				 
				 <td>
				 <a href="subfolder/Shape.html">
				 <center><img src="images/1520.jpg"alt="Shape_logo" width="100" height="100"> </center></a>
				 </td>
				 </tr>
				 
				 
				 </table></center>
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