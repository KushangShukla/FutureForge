<%@ page import="java.sql.*" %>

<%
Statement st=null;
Connection cn=null;
ResultSet rs=null;
HttpSession session1=request.getSession();
//EXStorage dt=new EXStorage();
	String idd,email,password;
	idd=request.getParameter("myid");
	email=request.getParameter("email");
	password=request.getParameter("password");
	out.println("User Name->"+" "+email);
	out.println("Password->"+" "+password);
	
	
	boolean flag=false;
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/futureforge","root","");
		st=cn.createStatement();
		String select="select id,email,password from register";
		rs=st.executeQuery(select);
		//String insert="insert into login(username,password) values('"+username+"','"+password+"')";
		//st.executeUpdate(insert);
		//String update="update idd,username,password from register";
		//rs=st.executeQuery(upd
		
		while(rs.next())
		{
				int id=rs.getInt("id");
				String us=rs.getString("email");
				String pass=rs.getString("password");
				
				if(email.equals(email) && password.equals(pass))
				{
					flag=true;
					session1.setAttribute("myid",id);
					session1.setAttribute("username",email);
					response.sendRedirect("ClientHome.jsp");
				}
		}
		if(flag!=true)
		{
			out.println("<h1>"+"Invalid Username or Password"+"</h1>");
		}
		out.println("Connection is success");
}
catch(Exception e)
{
	out.println("Error in Connection"+e.toString());
} 
out.println("<a href='EditProfile.jsp'>"+"Edit Profile"+"</a>");
	
%>	
<%
	/* 
	String user,pass;
	
	user=request.getParameter("txtuser");
	pass=request.getParameter("txtpass");
	
	out.println("User Name"+" "+user);
	out.println("Password"+" "+pass);
	
	out.println("<a href='LogIn.jsp'>"+"Logout"+"</a>");
*/

%>