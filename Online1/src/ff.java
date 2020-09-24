import java.io.File;
import java.io.FileInputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

public class ff extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int maxFileSize = 5000 * 1024;
	private int maxMemSize = 400 * 1024;
	private File file;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {

		try {
			String sub=request.getParameter("subject");
			String file=request.getParameter("qpaper");
			System.out.println("subject"+sub);
		       System.out.println("file name is:"+file);
		             HttpSession session=request.getSession(true);
		           
		             //System.out.println(s_id);
				
			      File excelFile =null; // change this code to get the file from upload	    
			   	    
			      FileInputStream fileInputeStream=null;
			      Workbook workbook=null;
			      PreparedStatement pstm=null;
			      Sheet sheet=null;
			      Row row=null; 
						Class.forName("com.mysql.jdbc.Driver");  
			            Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/etest","root","");  
			            con.setAutoCommit(false);  
			            excelFile = new File("F:/"+file);
				  		   System.out.println(excelFile);
				  	       fileInputeStream = new FileInputStream(excelFile);     
				  	       System.out.println(fileInputeStream);
				  	       workbook = WorkbookFactory.create(fileInputeStream);
				  	       sheet = workbook.getSheetAt(0); // 0 is to read the first sheet.
				  	      // workbook.getNumberOfSheets(); - using this number you can read all the sheets in the excel sheet
				  	       System.out.println("sheet is"+sheet);
				  	       int lastRow = sheet.getLastRowNum();
				  	      System.out.println("last row is"+lastRow);
				  	      //sheet.getFirstRowNum()+1 used to skip the header part.
				  	       for (int i = sheet.getFirstRowNum()+1; i <= lastRow; i++) {
				  	       row = (Row) sheet.getRow(i);
			            	
			                int qno = (int) row.getCell(0).getNumericCellValue();
			                String q = row.getCell(1).getStringCellValue();
			                String op1 = row.getCell(2).getStringCellValue();
			                String op2 = row.getCell(3).getStringCellValue();
			                String op3 = row.getCell(4).getStringCellValue();
			                String op4 = row.getCell(5).getStringCellValue();
			                String ans = row.getCell(6).getStringCellValue();
			                int level =  (int) row.getCell(7).getNumericCellValue();
			                
			                pstm = con.prepareStatement("INSERT INTO questions VALUES(?,?,?,?,?,?,?,?,?)");
			                pstm.setString(1,sub);
			                pstm.setInt(2, qno);
			                pstm.setString(3, q);
			                pstm.setString(4, op1);
			                pstm.setString(5, op2);
			                pstm.setString(6, op3);
			                pstm.setString(7, op4);
			                pstm.setString(8, ans);
			                pstm.setInt(9, level);
			                pstm.executeUpdate();  

			                		                	
			            }
					
				
				
			
			response.sendRedirect("mainlog.jsp?username=admin&password=admin&Submit=Login");
			
		} 
		catch (Exception ex) {
			System.out.println(ex);
		}
	}
}