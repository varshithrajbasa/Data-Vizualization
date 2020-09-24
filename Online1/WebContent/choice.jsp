<html>
<head>
<title>Choice the subject</title>
</head>

<%@ page errorPage="errorpge.jsp" %>
<%@ page language="java" import="java.sql.*" %>
<body background="E:\sai\Online1\WebContent\images\images (18).jpg">
<% String sub=request.getParameter("exam");
%>
<FORM action="add.jsp" method=POST id=form1 name=form1>
<center>
<input type=hidden name=exam value=<%=sub%>>



<INPUT type="submit" value="add the questions" >
</FORM>
<FORM action="allquery.jsp" method=post id=form3 name=form3>
<input type=hidden name=exam value=<%=sub%>>
<INPUT type="submit" value="show the records">
</FORM>
<FORM action="modify.jsp" method=post id=form4 name=form4>
<input type=hidden name=exam value=<%=sub%>>
<INPUT type="submit" value="modify the records">
</FORM>
<FORM action="delete.jsp" method=post id=form5 name=form5>
<input type=hidden name=exam value=<%=sub%>>
<INPUT type="submit" value="delete the records">
</center>
<h3 align="right"><a href="exam.jsp" >change the subject</a></h3>
</FORM>


</body>
</html>
