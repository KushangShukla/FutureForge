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
	String insert="insert into register(email,newpassword,confirmpassword) values('"+em+"',"+nps+",'"+cps+"')";
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
	String  newpass,email,confpass;
	
	email=request.getParameter("txtemail");
	newpass=request.getParameter("txtnewpass");
	confpass=request.getParameter("txtconfpass");
	
	out.println("Email"+" "+email);
	out.println("NewPassword"+" "+newpass);
	out.println("ConfirmPassword"+" "+confpass);
	
	out.println("<a href='ForgotPassword.jsp'>"+"Logout"+"</a>");
*/

%>