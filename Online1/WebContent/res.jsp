<HTML>
<HEAD>
<LINK href="styles.css" type="text/css" rel="stylesheet">
<TITLE></TITLE>
<script>
function window_onload() {
	document.form1.submit();

}
</script>
</HEAD>
<%@ page errorPage="errorpge.jsp" %>
<%@ page language="java" import="java.sql.*" %>
<% %>


<BODY bgcolor="#AAAAAA" LANGUAGE=javascript onload="return window_onload()">
<%
//System.out.println ("in res.jsp");
int attr=Integer.parseInt(request.getParameter("att"));

System.out.println ("22222222222222222"+attr);
String email=(String)session.getAttribute("user11");
String subj=(String)session.getAttribute("subjj");

int qno1=Integer.parseInt(request.getParameter("qn1"));
//System.out.println (email+"--"+qno1);

int qno2=qno1+1;
 String an=request.getParameter("ans");
 System.out.println(an);
//System.out.println (email+"--"+qno1+"--"+qno2+"--"+an);
/*if(an==null){
	an="NA";
}*/
//String exam=request.getParameter("sub");
//System.out.println (email+"--"+qno1+"--"+qno2+"--"+an+"--"+exam);

//String testid=(String)session.getAttribute("testid");
//System.out.println (email+"--"+qno1+"--"+qno2+"--"+an+"--"+exam+"--"+testid);
        int Status=0;
	ResultSet rs1=null;
	Statement stmt=null;
        int nop=0,time=0;
	//int Level = new com.TestCenter.MyFunctions().getLevel(email,exam,"result");
	//System.out.println (Level+"*****");

try{

	//Connection con = com.TestCenter.ConnectionPool.getConnection();
  Class.forName("com.mysql.jdbc.Driver");
  Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/etest","root","");
	Statement ps= con.createStatement();
	ResultSet rs=ps.executeQuery("select * from questions where subject = '"+subj+"' and qno = "+qno1+"");
	System.out.println(rs);
	while(rs.next()){

		String question=rs.getString("question");
		String answer=rs.getString("ans");
        int level1=rs.getInt("levell");
        
	if(answer.equals(an)){
			System.out.println("hai");
			Status=1;
           nop=Integer.parseInt(request.getParameter("nop"));
           time=Integer.parseInt(request.getParameter("ttaken"));
           System.out.println(nop+"--------"+time);
          
			//String Query1 = "insert into result(emailid,subject,Question,Answer,CorrectAnswer,Status,levell,qno)values('"+email+"','"+subj+"','"+question+"','"+an+"','"+answer+"',"+Status+","+level1+","+qno1+")";
           String Query1 = "insert into result(emailid,qno,subject,Question,Answer,CorrectAnswer,marks,levell,time,nop,attempt)values('"+email+"',"+qno1+",'"+subj+"','"+question+"','"+an+"','"+answer+"',"+Status+","+level1+","+time+","+nop+","+attr+")";
           String quer="insert into  ";
			System.out.println(Query1);
		int result = ps.executeUpdate(Query1);
		System.out.println (result);
			
			%>
			
			<form action="mainexam.jsp" id=form1 name=form1 >
			<input type=hidden name=sub value="<%=subj%>">
			<input type=hidden name=qno value="<%=qno2%>">
			<input type=hidden name=eid value="<%=email%>">
			<input type=hidden name=atts value="<%=attr%>">
			</form>-->
			<%
		}
		else{
						System.out.println("hello");

			Status=0;
			if(request.getParameter("nop")==null){
	            nop=0;
                time=0;
    
			}
			else
			{
				System.out.println(request.getParameter("nop"));
				System.out.println(request.getParameter("ttaken"));
				
		        nop=Integer.parseInt(request.getParameter("nop"));
                time=Integer.parseInt(request.getParameter("ttaken"));
        
			}
				
                        System.out.println(nop+"--------"+time);
                       
			//String Query1 = "insert into result(emailid,subject,Question,Answer,CorrectAnswer,Status,levell,qno)values('"+email+"','"+subj+"','"+question+"','"+an+"','"+answer+"',"+Status+","+level1+","+qno1+")";
             //String Query1 = "insert into result(emailid,qno,subject,Question,Answer,CorrectAnswer,marks,levell)values('"+email+"',"+qno1+",'"+subj+"','"+question+"','"+an+"','"+answer+"',"+Status+","+level1+")";
                        String Query1 = "insert into result(emailid,qno,subject,Question,Answer,CorrectAnswer,marks,levell,time,nop,attempt)values('"+email+"',"+qno1+",'"+subj+"','"+question+"','"+an+"','"+answer+"',"+Status+","+level1+","+time+","+nop+","+attr+")";
			System.out.println(Query1);
			int result1 = ps.executeUpdate(Query1);
			System.out.println (result1);
		%>
			<form action="mainexam.jsp" method=post id=form1 name=form1 >
			<input type=hidden name=sub value="<%=subj%>">
			<input type=hidden name=qno value="<%=qno2%>">
			<input type=hidden name=eid value="<%=email%>">
			<input type=hidden name=atts value="<%=attr%>">
			</form>
			<%
		}
	}
}

catch(Exception e)


{
e.printStackTrace();
}

%>
</body>
</html>




