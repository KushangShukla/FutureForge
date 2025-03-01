<%@ page import="java.sql.*" %>

<%
Statement st=null;
Connection cn=null;
//Storage dt=new Storage();
try
{

	String email,phonenumber,askyourquery;
	
	
	email=request.getParameter("email");
	phonenumber=request.getParameter("phonenumber");
	askyourquery=request.getParameter("askyourquery");

	out.println("Email"+" "+email);
	out.println("Phone Number"+" "+phonenumber);
	out.println("Ask Your Query"+" "+askyourquery);
	
	
	out.println("<a href='Register.jsp'>"+"Logout"+"</a>");

	
	

		
	Class.forName("com.mysql.jdbc.Driver");
	cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/futureforge","root","");
	st=cn.createStatement();
	String insert="insert into counselling(email,phonenumber,askyourquery) values('"+Integer.parseInt(phonenumber)+",'"+email+"','"+askyourquery+"')";
	st.executeUpdate(insert);

	out.println("Connection is success");
}
catch(Exception e)
{
	out.println("Error in Connection"+e.toString());
}


%>
<% 

/*String us,mb,ci,co,ge,em,ps,cps;
us=request.getParameter("txtusername");
mb=request.getParameter("txtmobilenumber");
ci=request.getParameter("txtcity");
co=request.getParameter("txtcountry");
ge=request.getParameter("txtgender");
em=request.getParameter("txtemail");
ps=request.getParameter("txtpassword");
cps=request.getParameter("txtconfirmpassword");*/
	

	
	


%>