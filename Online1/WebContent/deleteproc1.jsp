<html>
<head>
	<LINK href="styles.css" type="text/css" rel="stylesheet">

<title>
Processing of Q& A
</title>
</head>
<%@ page errorPage="errorpge.jsp" %>
<%@ page language="java" import="java.sql.*" %>
<body bgcolor="#AAAAAA" class='SC'>
<%
String subj=request.getParameter("subject");
int queno=Integer.parseInt(request.getParameter("qno"));
//String code=request.getParameter("code");
String questio=request.getParameter("quest");
String answera=request.getParameter("ansa");
String answerb=request.getParameter("ansb");
String answerc=request.getParameter("ansc");
String answerd=request.getParameter("ansd");
String answer=request.getParameter("ans");
String level = request.getParameter("level");
try{
	 Class.forName("com.mysql.jdbc.Driver");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/etest","root","");
	Statement stmt=con.createStatement();
System.out.println("delete from questions where qno="+queno+" and subject='"+subj+"' and levell="+level);
	int rowsAffected=stmt.executeUpdate("delete  from questions where qno="+queno+" and subject='"+subj+"' and levell="+level);

	if(rowsAffected==1){
		%>
		<BR><BR><BR><BR><BR><BR>

		<P align=center> <B>Deleted question successfully </B>
		<BR><BR>
		<FORM action="exam.jsp" id=form2 name=form2>
		<INPUT type="submit" value="change the subject" id=submit1 name=submit1>
		<%
	}
	else {
		response.sendRedirect("modiproc.jsp");
	}
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