%@ page import="com.nt.beans*,com.itp.service.*"" %>

<!-- create and locate java bean class obj -->
<jsp:useBean id="emp" class="com.nt.beans.Employee" scope="request"/>

<!-- write form data into java bean class properties -->
<!-- note: take bean class properties name and form component name same -->
<jsp:setProperty name="emp" property="*"/>

<jsp:useBean id="service" class="com.itp.service.PaySlipGeneratorService" scope="application"/>

<%
    service.generatePaySlip(emp);
%>

<!-- read the results from java bean class obj and generate dyanic payslip web page and display on the browser as aresponse -->
<h1 style="color:red;text-align:center">Employee paySlip Report</h1>

<table align="center" color="cyan" border="1">
    <tr>
        <td>emp name:</td>
        <td>
            <jsp:getProperty property="ename" name="emp"/>
        </td>
    </tr>

    <tr>
        <td>emp address:</td>
        <td>
            <jsp:getProperty property="eadd" name="emp"/>
        </td>
    </tr>

    <tr>
        <td>emp basicSalary:</td>
        <td>
            <jsp:getProperty property="basicSalary" name="emp"/>
        </td>
    </tr>
    
    <tr>
    <td>emp grossSalary:</td>
    <td>
        <jsp:getProperty property="grossSalary" name="emp"/>
    </td>
</tr>

<tr>
    <td>emp netSalary:</td>
    <td>
        <jsp:getProperty property="netSalary" name="emp"/>
    </td>
</tr>
    
</table>

