<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Report</title>
</head>
<body>

<h3> View Results</h3>
<table cellpadding=10 cellspacing=10 align="center" border=1>
<tr><th>Email</th><th>Subject</th><th>Attempt</th><th>Total</th><th>No.Of Questions</th></tr>
<%
String s1=request.getParameter("uname");
String s2=request.getParameter("subj");


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/etest","root","");
	PreparedStatement ps=con.prepareStatement("SELECT result.emailid, result.subject, result.attempt, SUM( marks ) AS total, COUNT( result.attempt ) AS noquestions FROM result GROUP BY result.emailid, result.subject, result.attempt");
	ResultSet rs=ps.executeQuery();
	 int count=0;
	 String sst="",sst1="",sst2="",sst3="",sst4="";
	while(rs.next())
	{
		sst=rs.getString(1);
		sst1=rs.getString(2);
		sst2=rs.getString(3);
		sst3=rs.getString(4);
		sst4=rs.getString(5);
		%>
		<tr align="center"><td><%=sst %></td><td><%=sst1 %></td><td><%=sst2 %></td><td><%=sst3 %></td><td><%=sst4%></td></tr>
		
		<%
	}
}

catch(Exception e){
	e.printStackTrace();
}
%>

</table>

<p align="center"><a href="download.jsp">Download</a></p>
</body>
</html>