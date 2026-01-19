<%!
static{
	System.out.println("jsp::static block");
}

public void jspInit()
{
	System.out.println("jsp::init()");
}
public void jspDestroy()
{
	System.out.println("jsp::init()");
}

%>

<% 
	System.out.println("service method called");
%>
