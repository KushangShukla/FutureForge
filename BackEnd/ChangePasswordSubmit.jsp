<%@ page import="java.sql.*" %>

<%
Statement st=null;
Connection cn=null;
//EXStorage dt=new EXStorage();
try
{
	
	String em,nps,cps;
	em=request.getParameter("email");
	nps=request.getParameter("newpassword");
	cps=request.getParameter("confirmpassword");
	
		
	Class.forName("com.mysql.jdbc.Driver");
	cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/futureforge","root","");
	st=cn.createStatement();
	String insert="insert into changepassword(email,newpassword,confirmpassword) values('"+em+"',"+nps+",'"+cps+"')";
	st.executeUpdate(insert);
	
	out.println("Connection is success");
}
catch(Exception ex)
{
	out.println("Error in Connection"+ex.toString());
}
%>	
<%
	/*
	String oldpass,newpass,confnewpass;
	
	oldpass=request.getParameter("txtoldpass");
	newpass=request.getParameter("txtnewpass");
	confnewpass=request.getParameter("txtconfpass");
	
	out.println("Old Password"+" "+oldpass);
	out.println("New Password"+" "+newpass);
	out.println("Confirm New Password"+" "+confnewpass);
	
	out.println("<a href='ChangePassword.jsp'>"+"Logout"+"</a>");
*/

%>