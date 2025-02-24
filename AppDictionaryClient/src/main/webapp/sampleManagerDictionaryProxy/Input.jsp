<%@page contentType="text/html;charset=UTF-8"%>
<HTML>
<HEAD>
<TITLE>Inputs</TITLE>

<style type="text/css">
@keyframes color-change {
			0% { color: red; }
			25% { color: yellow; }
			50% { color: blue; }
			75% { color: green; }
			100% { color: red; }
		}
		.color-change {
			animation: color-change 5s infinite;
		}
form {
  margin: 0 auto;
  width: 400px;
  font-size: 16px;
  border: 1px solid #ccc;
  padding: 20px; 
}
h1{
	font-size: 50px;
}
caption {
  font-size: 24px;
  font-weight: bold;
  margin-bottom: 10px;
}

table {
  width: 100%;
}

td {
  padding: 10px;
}

input[type="text"] {
  padding: 5px; 
  width: 100%; 
}

input[type="submit"], input[type="reset"] {
  padding: 10px 20px;
  border: none;
  background-color: #007bff; 
  color: #fff; 
  cursor: pointer;
  margin-right: 10px; 
}

input[type="submit"]:hover, input[type="reset"]:hover {
  background-color: #0062cc;
}
</style>
</HEAD>
<BODY>
<H1 style="color: maroon; text-align: center; text-shadow: olive;">Inputs</H1>


<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

boolean valid = true;

if(methodID != -1) methodID = Integer.parseInt(method);
switch (methodID){ 
case 2:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 5:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">endpoint:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="endpoint8" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 10:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke" >
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 13:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<h1 style="text-align: center; color: red;">Update</h1>

<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT" style="color: blue;">Word:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="word16" SIZE=20 placeholder="Input word to update" required="required"></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT" style="color: blue;">Mean:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="mean18" SIZE=20 ></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT" style="color: blue;">Type:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="type20" SIZE=20 ></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Update">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 22:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<h1 style="text-align: center; color: purple;">Search Dictionary</h1>
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT" style="color: yellow;">Word:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="word25" SIZE=20 ></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Search">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 27:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<h1 style="text-align: center; color: green;">Delete Dictionary</h1>
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">Word:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="word30" SIZE=20 ></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Del">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 32:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">

<h1 style="text-align: center; color: silver;">Add word to database</h1>
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">Id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id35" SIZE=20 ></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">word:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="word37" SIZE=20 ></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">Mean:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="mean39" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">type:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="type41" SIZE=20 ></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Add">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 1111111111:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">URLString:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="url1111111111" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 1111111112:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
}
if (valid) {
%>
Select a method to test.
<%
}
%>





</BODY>
</HTML>
