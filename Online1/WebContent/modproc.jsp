<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Web Design - Free CSS Templates</title>
<meta name="keywords" content="free css templates, web design, 2-column, html css" />
<meta name="description" content="Web Design is a 2-column website template (HTML/CSS) provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<!--////// CHOOSE ONE OF THE 3 PIROBOX STYLES  \\\\\\\-->
<link href="css_pirobox/white/style.css" media="screen" title="shadow" rel="stylesheet" type="text/css" />
<!--<link href="css_pirobox/white/style.css" media="screen" title="white" rel="stylesheet" type="text/css" />
<link href="css_pirobox/black/style.css" media="screen" title="black" rel="stylesheet" type="text/css" />-->
<!--////// END  \\\\\\\-->

<!--////// INCLUDE THE JS AND PIROBOX OPTION IN YOUR HEADER  \\\\\\\-->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/piroBox.1_2.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$().piroBox({
			my_speed: 600, //animation speed
			bg_alpha: 0.5, //background opacity
			radius: 4, //caption rounded corner
			scrollImage : false, // true == image follows the page, false == image remains in the same open position
			pirobox_next : 'piro_next', // Nav buttons -> piro_next == inside piroBox , piro_next_out == outside piroBox
			pirobox_prev : 'piro_prev',// Nav buttons -> piro_prev == inside piroBox , piro_prev_out == outside piroBox
			close_all : '.piro_close',// add class .piro_overlay(with comma)if you want overlay click close piroBox
			slideShow : 'slideshow', // just delete slideshow between '' if you don't want it.
			slideSpeed : 4 //slideshow duration in seconds(3 to 6 Recommended)
	});
});
</script>
<!--////// END  \\\\\\\-->
</head>
<body>

<div id="templatemo_body_wrapper">
<div id="templatemo_wrapper">

	<div id="tempaltemo_header">
    	<span id="header_icon"></span>
    	<div id="header_content">
        	<div id="site_title">
				<a href="http://www.templatemo.com" target="_parent"><img src="images/templatemo_logo.png" alt="LOGO" /></a>            </div>
            <p></p>
		 
		</div>
    </div> <!-- end of header -->
    
    <div id="templatemo_main_top"></div>
    <div id="templatemo_main"><span id="main_top"></span><span id="main_bottom"></span>
    	
        <div id="templatemo_sidebar">
        
        	<div id="templatemo_menu">
                <ul>
                    <li><a href="index.html" target="_parent" class="current">Home</a></li>
                    <li><a href="AddQuestions0.jsp" target="_parent">Add Questions</a></li>
                    <li><a href="ViewQuestions0.jsp" target="_parent">View Questions</a></li>
                    <li><a href="ModifyQuestions0.jsp" target="_parent">Modify Questions</a></li>
                    <li><a href="DeleteQuestions0.jsp" target="_parent">Delete Questions</a></li>
                    <li><a href="ViewUsers.jsp" target="_parent">View Users</a></li>
                    <li><a href="DelUser.jsp" target="_parent">Delete User</a></li>
                    <li><a href="selectuser.jsp" target="_parent">select User</a></li>
                    <li><a href="Report.jsp" target="_parent">Consolidated Report</a></li>
                     <li><a href="Logout.jsp" target="_parent">Logout</a></li>
                   
              </ul>    	
            </div> <!-- end of templatemo_menu -->
        
        	<div class="sidebar_box">
            	
                
                        
            </div>
            
            <div class="sidebar_box">
            	
                
                        
            </div>
            
           
            <div class="cleaner"></div>
        </div> <!-- end of sidebar -->
        
        <div id="templatemo_content">
        	
            <div class="content_box">
            	<h2>Welcome To Admin</h2>
                
          
               
          </div>
            
            <div class="content_box">
            	
               <P align=center> <U>Modify Question</U> </P>
<%@ page errorPage="errorpge.jsp" %>
<%@ page language="java" import="java.sql.*" %>
<%
try{
	String sub=request.getParameter("subject");
	int qno=Integer.parseInt(request.getParameter("qno"));
	String level=request.getParameter("level");
//Connection con = com.TestCenter.ConnectionPool.getConnection();
 Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/etest","root","");
	Statement ps= con.createStatement();
	ResultSet rs=ps.executeQuery("select * from questions where qno="+qno+" and subject='"+sub+"' and levell="+level);
	String optionSelected="";
	while(rs.next()){
		//String code=rs.getString("code");
		String question=rs.getString("question");
		String questio=rs.getString("ans1");
		String questi=rs.getString("ans2");
		String quest=rs.getString("ans3");
		String ques=rs.getString("ans4");
		String que=rs.getString("ans");
		String level1 = rs.getString("levell");

		%>
		<FORM action="modifyproc1.jsp">
		<table align=center>
		<TR>
		<TD><B>Subject:</B></TD>
		<TD><%=sub%><INPUT name=subject type=hidden width="30" value=<%=sub%> ></TD></TR>
		<tr>    <TD><B>Question No:</B></TD>
		<TD><%=qno%><INPUT name=qno type=hidden width="30" value=<%=qno%> ></TD></TR>
		<TR>
		<TD><B>Question:</B></TD>
		<TD><INPUT name=quest type=text width="30" value=<%=question%>></TD></TR>
		<TR>
		<TD><B>Choice a</B></TD>
		<TD><INPUT name=ansa type=text width="30" value=<%=questio%>></TD></TR>
		<TR>
		<TD><B>Choice b:</B></TD>
		<TD><INPUT name=ansb type=text width="30" value=<%=questi%>></TD></TR>
		<TR>
		<TD><B>Choice c:</B></TD>
		<TD><INPUT name=ansc type=text width="30" value=<%=quest%>></TD></TR>
		<TR>
		<TD><B>Choice d:</B></TD>
		<TD><INPUT name=ansd type= text width="30" value=<%=ques%>></TD></TR>
		<TR>
		<TD><B>Answer:</B></TD>
		<TD><INPUT name=ans type= text width="30" value=<%=que%>></TD></TR>
		<tr>
		<TR>
		<TD><B>Level:</B></TD>
		<TD><INPUT name=level type= text width="30" value=<%=level%>></TD></TR>
		<tr>
		<td colspan=2>
		<input type="submit" value="Modify">
		</td>
		</tr>
		<%
	}
ps.close();
	con.close();
}
catch(Exception e)


{
	e.printStackTrace();
out.println("Could not load database driver");
}

%>
</TABLE></FORM>
                
                <div class="col_w290 cw290_last float_r">
                
                
                   
				</div>
                
              </div>
					
                </div> <!-- end of Gallery -->
                
             
        <div class="cleaner"></div>    
    </div>
    
    <div id="templatemo_main_bottom">
    </div>

</div> <!-- end of wrapper -->
</div>

<div id="templatemo_footer_wrapper">
	<div id="templatemo_footer">
        Copyright © 2048 <a href="#">Your Company Name</a> | 
        <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a>
        
    </div>
</div>


</html>