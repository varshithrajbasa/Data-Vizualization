<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="java.sql.*" %>
<head>
<%String user=(String)session.getAttribute("user");%>
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
                   <ul>
                   <li><A HREF="instructions.jsp" target="_parent" class="current">Instructions</a></li>
                    <li><a href="exams.jsp" target="_parent">EXAM</a></li>
                    <li><a href="ViewProfile.jsp" target="_parent">View Profile</a></li>
                    <li><a href="EditProfile.jsp" target="_parent">Edit Profile</a></li>
                    <li><a href="ChangePassword1.jsp" target="_parent">ChangePassword</a></li>
                   
                     <li><a href="Logout.jsp" target="_parent">Logout</a></li>
              </ul>  
                   
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
            	<!-- <h2>Welcome To Admin</h2> -->
                
          	
               
          </div>
            
            <div class="content_box">
            	
<%

	Connection con=null;
	ResultSet rs=null;
	Statement stmt=null;
	try{
			//con = com.TestCenter.ConnectionPool.getConnection();
			 Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/etest","root","");
			stmt =  con.createStatement();
			String Query = "Select * from register where email='"+user+"'";
			rs = stmt.executeQuery(Query);


			}
			catch(Exception e)
		  {
			  e.printStackTrace();
			%><%=e%><%
		  }



if(rs!=null)
{
			%>
	<!--Displaying the table header-->

	<br>
<!--	<DIV STYLE="overflow:scroll;width:650px; height:400px;">-->


<%
int DisRow1=0;
			while(rs.next())
			{	String UserName=rs.getString(1);
					String EmailID=rs.getString(3);
					String Phone=rs.getString(4);
					String Gender=rs.getString(5);
					String Qualification=rs.getString(6);
					String Skills=rs.getString(7);
					String Experience=rs.getString(8);
					String Address=rs.getString(9);
					DisRow1++;

				%>
	<style type="text/css">
		.edit1{background-color:#FAFAFA;padding:5px}
		.edit2{padding: 5px}
	</style>				
		<table align=center border=0 width="60%" cellpadding="0" cellspacing="0" style="color:#333;font-size: 12px;font-family: arial;">
		 <TR class="row_title">
		<Td align=center colspan=2><B><FONT COLOR="#330000">Contact Information</FONT></B></td>
		</TR>
		  <tr><td class="edit1" width="50%"><b>User Name</b></td>
		 <td class="edit1"><font  color="black"><Input type=text name="UserName" value="<%=UserName%>" readonly></font></td></tr>

		  <tr><td width="50%" class="edit2"><b>Email ID</b></td>
		 <td   class="edit2"><font  color="black"><Input type=text name="EmailID" value="<%=EmailID%>" readonly></font></td></tr>

		 <tr><td class="edit1" ><b>PhoneNo</b></td>
		 <td  class="edit1"><font  color="black"><Input type=text name="Phone" value="<%=Phone%>"></font></td></tr>

		<tr><td class="edit2"><b>Gender</b></td>
		 <td  class="edit2"><font  color="black">
		 <SELECT id='Gender' name='Gender'>
					 <OPTION value='<%=Gender%>'><%=Gender%></OPTION>
					<OPTION value="Male">Male</OPTION>
					<OPTION value="Female">Female</OPTION>
					</SELECT>
		 </font></td></tr>
		 <tr><td class="edit1" ><b>Qualification</b></td>
		 <td  class="edit1"><font  color="black"><Input type=text name="Qualification" value="<%=Qualification%>"></font></td></tr>

		<tr><td class="edit2"><b>Skills</b></td>
		 <td  class="edit2"><font  color="black"><Input type=text name="Skills" value="<%=Skills%>"></font></td></tr>

		<tr><td  class="edit1" ><b>Experience</b></td>
		 <td  class="edit1"><font  color="black"><Input type=text name="Experience" value="<%=Experience%>"></font></td></tr>


		 <tr><td  class="edit2"><b>Address</b></td>
		 <td  class="edit2"><font  color="black"><textarea name="Address" Rows=5 cols =20><%=Address%></textarea></font></td></tr>


		</tr>
		<TR>
		<TH><INPUT TYPE="submit" value='Update' ></TH>
		<TH><INPUT TYPE="reset" value='Clear' ></TH></TR>
		</table>

	<%
	}
	rs.close();

	if(DisRow1==0)
{
	/*To write to the server if the resultset is null*/
	%>
		<CENTER>
			<tr><th colspan=6>No Records found</th></tr>
		</CENTER>
	<%}
}

%>
        </tr>
        </TR>
        </table>        
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