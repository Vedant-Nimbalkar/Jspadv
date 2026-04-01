
<!-- create or locate java bean class object -->
<jsp:useBean id="id1" class="com.itp.beans.StudentInfo" scope="session"/>


<!-- read values of bean properties of java bean object -->
<b>SNO:</b><jsp:getProperty name="id1" property="sno"/><br>

<b>SNAME:</b><jsp:getProperty name="id1" property="sname"/><br>

<b>SADD:</b><jsp:getProperty name="id1" property="sadd"/><br>

<b>AVG:</b><jsp:getProperty name="id1" property="avg"/><br>


<b>values are read in java bean properties</b>




