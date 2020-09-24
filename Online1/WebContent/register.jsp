<html>
<head>
<title>
Registration Form
</title>
</head>
<%@ page errorPage="errorpge.jsp" %>
<%@ page language="java" import="java.sql.*" %>
<body  bgcolor="#AAAAAA">
<%
String first=request.getParameter("fname");
String last=request.getParameter("lname");
String email=request.getParameter("eid");

String contact=request.getParameter("conno");
String gen=request.getParameter("gender");
String qual=request.getParameter("qua");
String skill=request.getParameter("software");
String exper=request.getParameter("exp");
String address=request.getParameter("address");
String auth="1";

try{
Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/etest","root","");
	Statement stmt=con.createStatement();
	int rowsAffected=stmt.executeUpdate("insert into register(firstname,lastname,email,phone,gender,qual,skills,exp,address,auth) values ('"+first+"','"+last+"','" +email+"','"+contact+"','"+gen+"','"+qual+"','"+skill+"','"+exper+"','"+address+"','"+auth+"')");
	if(rowsAffected ==1){
					session.setAttribute("user",email);

		Statement stmt1=con.createStatement();
	int rowsAffected1=stmt1.executeUpdate("insert into login(user1,password,auth) values ('"+email+"','"+last+"','" +auth+"')");

		%>
		<jsp:forward page="index.html">
				<jsp:param name="user" value="<%=email%>"/>
				</jsp:forward>
		<%
	}
	else{
		response.sendRedirect("endexam.html");
	}
	stmt.close();
	con.close();
}
catch(Exception e)


{
	e.printStackTrace();
out.println("Could not load database driver");
}

%>
</body>
</html>