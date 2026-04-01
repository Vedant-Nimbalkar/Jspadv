
<!-- create or locate java bean class object -->
<jsp:useBean id="id1" class="com.itp.beans.StudentInfo" scope="session"/>


<!-- set values of bean properties of java bean object -->

<jsp:setProperty property="sno" name="id1" value="101"/>
<jsp:setProperty property="sname" name="id1" value="Vedant"/>
<jsp:setProperty property="sadd" name="id1" value="pune"/>
<jsp:setProperty property="avg" name="id1" value="90.33"/>

<b>values are set in java bean properties</b>




