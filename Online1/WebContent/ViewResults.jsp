<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>
<%//String user=(String)session.getAttribute("email");
//String user=request.getParameter("user11");
String user=(String)session.getAttribute("user1");
System.out.print(user);
String subject=(String)session.getAttribute("sub");
%>

<HEAD>


	<script LANGUAGE="Javascript" SRC="validate.js"></script>



	<LINK href="styles.css" type="text/css" rel="stylesheet">

</HEAD>
<BODY bgcolor="white">
<h2 align=center>Test Details</h2>
<%
int ms=Integer.parseInt(request.getParameter("msg"));
	Connection con=null;
	ResultSet rs=null,rs1=null;
	Statement stmt=null;
	String testid;
	try{

			//con = com.TestCenter.ConnectionPool.getConnection();
			Class.forName("com.mysql.jdbc.Driver");
  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/etest","root","");

			stmt =  con.createStatement();
			String Query1 = "Select emailid from result where emailid = '"+user+"' and subject='"+subject+"'";
			System.out.println(Query1);
			rs1=stmt.executeQuery(Query1);
			if(rs1.next()){
			testid=rs1.getString("emailid");
			
			String Query = "Select * from result where emailid= '"+testid+"' and  attempt="+ms+"";
			System.out.println(Query);
			rs = stmt.executeQuery(Query);
            }
			%>
						<table align="center" width="60%" border="1">
							<tr class=row_title>
							<th align="center">EmailId</th> <th align="center">Qno</th><th align="center">subject</th><th align="center" height="10" width="500">Question</th><th align="center">Your Answer</th><th align="center">Correct Answer</th><th align="center">Marks</th><th align="center">Level</th><th align="center">time</th><th align="center">nop</th>
							</tr>
					<%

			int rCount=0;
			while(rs.next())
			{
					%>
					<tr class= <%=(rCount%2!=0)? "row_even" : "row_odd"%>>
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getInt(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(4)%></td>
						<td><%=rs.getString(5)%></td>
						<td><%=rs.getString(6)%></td>
						<td><%=rs.getInt(7)%></td>
                        <td><%=rs.getInt(8)%></td>
                        <td><%=rs.getInt(9)%></td>
                        <td><%=rs.getInt(10)%></td>

					</tr>
					<%
				rCount++;
			}

			if( rCount == 0)	{%><tr class= "row_even"><td align=center colspan=8>Sorry No records Found</td><% }

			
			stmt.close();
			con.close();
		}catch(Exception e){
			//rs.close();
			stmt.close();
			con.close();
			%><%=e %><%
		}

%>

</table><BR>
<a href="OptionsGraph.jsp" style="text-decoration: none;">OPTIONGRAPH</a>
</BODY>
