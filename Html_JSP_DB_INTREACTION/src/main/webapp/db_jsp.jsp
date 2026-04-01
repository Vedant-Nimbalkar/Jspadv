<%@ page import="java.sql.*"%>
<%!
  Connection con=null;
PreparedStatement ps1=null;
PreparedStatement ps2=null;
private static final  String INSERT_QUERY=
"INSERT INTO PERSON_INFO VALUES(?,?,?,?)";

private static final String SELECT_QUERY=
"select pname,page,paddress,pemailid from PERSON_INFO";


public void jspInit(){
	//acces container created servleconfig object directly
	ServletConfig cg=getServletConfig();
	//read init param valueS(jdbc properties) from Service
	String driver=cg.getInitParameter("driverClass");
	String url=cg.getInitParameter("jdbcurl");
	String user=cg.getInitParameter("dbuser");
	String pwd=cg.getInitParameter("dbpwd");
	
	try{
		
		///loading the driver
		Class.forName(driver);
		//get connection
		con=DriverManager.getConnection(url,user,pwd);
		//create preparedstatemnt object
		ps1=con.prepareStatement(INSERT_QUERY);
		ps2=con.prepareStatement(SELECT_QUERY);
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
}

%>



<% 

//read get request param  value

String pval=request.getParameter("p1");

if("register".equalsIgnoreCase(pval)) {
	//read form data
	
	String name=request.getParameter("pname");
	int age=Integer.parseInt(request.getParameter("page"));
	String addrs=request.getParameter("paddress");
	String mail=request.getParameter("pemail");
	
	//set values to query param(?)
	ps1.setString(1,name);
	ps1.setInt(2,age);
	ps1.setString(3,addrs);
	ps1.setString(4,mail);
	
	
	//exceute query
	int result =ps1.executeUpdate();
	//process the result
	if(result==0)
	  { %>
	<h1 style="color:red;text-align:center">Record not Insereted</h1>
	
		
	<% }
	else{%>
	<h1 style="color:red;text-align:center">Record Insereted Sucessfully</h1>
	<%}
	
	
	
}//end of if
//else id for hyperLink
else
{
	//execute query
	ResultSet rs=ps2.executeQuery(); %>
	<table border="1" color="cyan" align="center">
	<tr>
	<th>Name </th>
	<th>Age </th>
	<th>Adress</th>
	<th>Email</th>
	</tr>
	<% 
	//process the resultset
	while(rs.next()){%>
	<tr>
	<td>
	<%= rs.getString(1) %>
	
	</td>
	<td>
	<%= rs.getInt(2) %>
	
	</td>
	<td>
	<%= rs.getString(3) %>
	
	</td>
	<td>
	<%= rs.getString(4) %>
	
	</td>
	</tr>
		
	<% }//end of while
	%>
	</table>
	
	

<% } %>//end of else


public void jspDestroy()
  {
    try
    {
    if(pst1 != null)
    {
      pst1.close();
    }
    if(pst2 != null)
    {
      pst2.close();
    }
    if(con != null)
    {
      con.close();
    }
    }
    catch(Exception e)
    {
      e.printStackTrace();
    }
  }



