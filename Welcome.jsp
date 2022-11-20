<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.topnav{
overflow:hidden;
background-color:red;
}


.topnav a{
float:left;
display:block;
color:red;
text-align:center;
padding:14px 16px;
text-decoration:none;



}

.topnav a:hover{
background-color:red;
color:red;
}

</style>

</head>
<body>

<div class="topnav">
<form action="./Add.jsp">

<input type="submit" value="Add">



</input>
</form>


<form action="./Personalinfo">


<input style="float: right" type="search" name="search the id">
<input style="float: right" type="submit" value="submit">


</form>
</div>
<center>

<form action="./Add.jsp">
<table border="2">

<tr>
<th>Eid</th>
<th>EName</th>
<th>DOJ</th>
<th>YOE</th>
<th>Designation</th>


</tr>
<%
try{
	
	ResultSet rs=(ResultSet)session.getAttribute("rs1");
	
	while(rs.next()){
		
		%>
		
		<tr>
		<td>
		<%=rs.getInt("Eid") %></td>
		<td><%=rs.getString("EName") %></td>
		<td><%=rs.getDate("DOJ") %></td>
		<td><%=rs.getString("YOE") %>
		<td><%=rs.getString("Designation") %></td>
		</tr>




<% 
	}
}
catch(Exception e){
	
	e.printStackTrace();
}
%>





</table>




</form>



</center>


<center>





</center>


</form>


</form>








</body>
</html>