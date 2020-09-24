<html>
<head>
<title>Questions</title>
<LINK href="styles.css" type="text/css" rel="stylesheet">
<script language="javascript">
</script>
<SCRIPT  language=javascript>
var nop=0;
var ttaken=0;
        function selectAnswer()
        {
            nop++;
            //alert(parseInt(nop));
            document.form1.nop.value=nop;
        }
        function getTime()
        {
        	if( document.form1.nop.value==0)
        		{
        		alert("Please select an option to view next question");
        		return false;
        		
        		}
            ttaken=62-time1;
           // alert(parseInt(ttaken));
            document.form1.ttaken.value=ttaken;
        }
       var time1;
	time1=62;
    
	function DisplayTime()
	{
	if (time1==0 )
	{
		alert("sorry time up");
		document.form1.nop.value=0;
		document.form1.ttaken.value=0;
	 	document.form1.submit();
		return true;
	}
	time1=time1-1;
	if (time1<=60)
	{
		document.form1.textfield.value = time1 + " Seconds Only" ;
	}
	window.status="Time Left: " + time1;
	window.setTimeout("DisplayTime()",1000);
	return true;
	}
	DisplayTime();


</SCRIPT> </head>

<%@ page errorPage="errorpge.jsp" %>
<%@ page language="java" import="java.sql.*" %>

     
      <%
      
      String us=(String)session.getAttribute("user1");
      
      session.setAttribute("user11",us);
      System.out.print(us);
      %>
      <%
      
      String subj=request.getParameter("exam");
      
      System.out.println("The  Exam is:"+subj);
      
      session.setAttribute("subjj",subj);
      
      %>
      <%= subj %>
      <%
      try{
      int qn=1;
 	if(qn>=11) {
	response.sendRedirect("ViewResults.jsp");
	}

//Connection con = com.TestCenter.ConnectionPool.getConnection();
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/etest","root","");

	
	Statement ps1= con.createStatement();
	ResultSet rs1=ps1.executeQuery("select * from student where Sname='"+us+"' and subject='"+subj+"' ");
	int ssp=0;
	while (rs1.next())
	{
ssp++;
	}
	if(ssp==0)
	{
		ssp=1;
		String tts="insert into student values('"+us+"','"+subj+"','"+ssp+"')";
		ps1.executeUpdate(tts);
		
	}
	else
	{
		ssp=ssp+1;
		String tts1="insert into student values('"+us+"','"+subj+"','"+ssp+"')";
		ps1.executeUpdate(tts1);
	}
	Statement ps= con.createStatement();
	
	ResultSet rs=ps.executeQuery("select * from questions where subject='"+subj+"' and qno="+qn+"");
	
	
	if(rs.next()){

		int qqno=rs.getInt("qno");
		String que=rs.getString("question");
		String answer1=rs.getString("ans1");
		String answer2=rs.getString("ans2");
		String answer3=rs.getString("ans3");
		String answer4=rs.getString("ans4");
		%>


<body style="color:#333;font-size: 12px;font-family: arial;">
<form  action="res.jsp" id=form1 name=form1 >
<input type="text" name="textfield" style="BORDER-STYLE:none;background-color:#00AE00" />
<input type=hidden name=nop >
<input type=hidden name=ttaken >
<!--<input type	=hidden name=eid value="">-->
<!--<input type=hidden name=sub value="">-->

  <table width="54%" border="0" cellpadding="0" cellspacing="0" bordercolor="#66cc99" align="center" id=TABLE1>

   <tr><td colspan="2" width="54%"></td>
</tr>
<tr><td colspan="2" width="54%"></td>
</tr>
<tr><td colspan="2" width="54%"></td>
</tr>
<tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr>
       <tr>
            <td colspan="2" ><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><input type=hidden name=qn1 value="<%=qqno%>"> <%=qqno%><%=que%>
             </font>
          </tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr>
   <tr><td colspan="2" width="54%"></td>
</tr>
<tr><td colspan="2" width="54%"></td>
</tr>
<tr><td colspan="2" width="54%"></td>
</tr>
          <tr>
            <td colspan="2"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              a) <input type=radio name=ans onchange="selectAnswer()" value="<%=answer1%>" ></font><%=answer1%>
            </tr>
          <tr>
            <td  colspan="2"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              b) <input type=radio name=ans onchange="selectAnswer()" value="<%=answer2%>"></font><%=answer2%>
            </tr>
          <tr>
            <td colspan="2"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              c)  <input type=radio name=ans  onchange="selectAnswer()" value="<%=answer3%>"></font><%=answer3%>
          </tr>
          <tr>
            <td colspan="2" ><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              d)  <input type=radio name=ans  onchange="selectAnswer()" value="<%=answer4%>" ></font><%=answer4%>
              <input type="hidden" name="att" value=<%=ssp %>>
         </tr>
<tr><td colspan="2" width="54%"></td>
</tr>
<tr><td colspan="2" width="54%"></td>
</tr>
<tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr>
          <tr>
            <td width="19%"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              <input id=submit1 name=submit1 type="submit" value="Submit" onclick="return getTime()"  style="LEFT: 92px; TOP: 0px">
              </font></td>
            <td>
              <div align="left"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
                <input id=reset1 name=reset1 type="reset" value="Reset">
                </font></div>
              <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> </font><font face="Verdana, Arial, Helvetica, sans-serif" size="2"></font></td>
          </tr>
         </table>
      </td>
    </tr>
  </table>
</form>

<%
	}else{
		response.sendRedirect("exams.jsp?msg=No Questions are Avaialable Select Another Subject");
	}
}
catch(Exception e)
{
e.printStackTrace();
}

%>
</body>
</html>
