<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Student Profile Page</title>
	</head>
	<body>
		<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shubham", "root", "root@123");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from student where id = 1;");
			rs.next();
		%>
		
		ID: <%=rs.getInt(1) %>
		Name: <%=rs.getString(2) %>
	</body>
</html>