
<HTML>
<HEAD>
<TITLE></TITLE>
</HEAD>
<BODY  bgcolor="#AAAAAA">
<%@ page errorPage="errorpage.jsp" %>
<%@ page language="java" import="java.sql.*" %>
<%
boolean flag=false;
String em=request.getParameter("username");
session.setAttribute("user1", em);
System.out.print(em);
String pwd=request.getParameter("password");

try{

	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/etest","root","");
	//System.out.println(con);
	Statement ps= con.createStatement();
	ResultSet rs=ps.executeQuery("select * from login where user1= '"+em+"' and password='"+pwd+"' ");

	if(rs!=null){
		if(rs.next()){
			String user=rs.getString(1);
			session.setAttribute("user1",user);
			System.out.print(user);

			String password=rs.getString(2);
			session.setAttribute("password",password);

			String auth=rs.getString(3);
			session.setAttribute("auth",auth);

			if((user.equals(em))&&(password.equals(pwd))){
				if(auth.equals("1")){
					System.out.println("1");
				flag=true;
				%><jsp:forward page="UserHome1.jsp">
				<jsp:param name="user" value="<%=user%>"/>
				</jsp:forward>
				<%
				}
				else
					if(user.equals(em)&&(password.equals(pwd))&& (auth.equals("0"))){
				flag=true;
				%><jsp:forward page="AdminHome.jsp">
				<jsp:param name="user" value="<%=user%>"/>
				</jsp:forward>
				<%
				}
			}else{
				%><BR><BR><BR><BR>
				<H3 align=center><FONT Color="White"><B>Login failed, Please provide valid Username & Password</B></FONT></H3>
				<P align=center>

					<A href="index.html"  style="background-color:white"><B><U>  LOGIN</U></B></A>
				</P><%
			}
		}else{
				%><BR><BR><BR><BR>
				<H3 align=center><FONT Color="White"><B>Login failed, Please provide valid Username & Password</B></FONT></H3>
				<P align=center>

					<A href="index.html"  style="background-color:white"><B><U>  LOGIN</U></B></A>
				</P><%
			}
	}else{
		%><BR><BR><BR><BR>
				<H3 align=center><FONT Color="White"><B>Login failed, Please provide valid Username & Password</B></FONT></H3>
				<P align=center>

					<A href="index.html"  style="background-color:white"><B><U> &lt;&lt; LOGIN</U></B></A>
				</P><%
	}


}
catch(Exception e){
	e.printStackTrace();
	System.out.println("exception        :"+e);
}

%>
</body>
</html>