<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1 style="color:purple;">Result</H1>

<jsp:useBean id="sampleManagerDictionaryProxyid" scope="session" class="dictionary.ManagerDictionaryProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleManagerDictionaryProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleManagerDictionaryProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleManagerDictionaryProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        dictionary.ManagerDictionary getManagerDictionary10mtemp = sampleManagerDictionaryProxyid.getManagerDictionary();
if(getManagerDictionary10mtemp == null){
%>
<%=getManagerDictionary10mtemp %>
<%
}else{
        if(getManagerDictionary10mtemp!= null){
        String tempreturnp11 = getManagerDictionary10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String word_1id=  request.getParameter("word16");
            java.lang.String word_1idTemp = null;
        if(!word_1id.equals("")){
         word_1idTemp  = word_1id;
        }
        String mean_2id=  request.getParameter("mean18");
            java.lang.String mean_2idTemp = null;
        if(!mean_2id.equals("")){
         mean_2idTemp  = mean_2id;
        }
        String type_3id=  request.getParameter("type20");
            java.lang.String type_3idTemp = null;
        if(!type_3id.equals("")){
         type_3idTemp  = type_3id;
        }
        boolean update13mtemp = sampleManagerDictionaryProxyid.update(word_1idTemp,mean_2idTemp,type_3idTemp);
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(update13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
break;
case 22:
        gotMethod = true;
        String word_4id=  request.getParameter("word25");
            java.lang.String word_4idTemp = null;
        if(!word_4id.equals("")){
         word_4idTemp  = word_4id;
        }
        java.lang.String searchDictionary22mtemp = sampleManagerDictionaryProxyid.searchDictionary(word_4idTemp);
if(searchDictionary22mtemp == null){
%>
<%=searchDictionary22mtemp %>
<%
}else{
        String tempResultreturnp23 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(searchDictionary22mtemp));
        %>
        <%= tempResultreturnp23 %>
        <%
}
break;
case 27:
        gotMethod = true;
        String word_5id=  request.getParameter("word30");
            java.lang.String word_5idTemp = null;
        if(!word_5id.equals("")){
         word_5idTemp  = word_5id;
        }
        boolean delDictionary27mtemp = sampleManagerDictionaryProxyid.delDictionary(word_5idTemp);
        String tempResultreturnp28 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(delDictionary27mtemp));
        %>
        <%= tempResultreturnp28 %>
        <%
break;
case 32:
        gotMethod = true;
        String id_6id=  request.getParameter("id35");
        int id_6idTemp  = Integer.parseInt(id_6id);
        String word_7id=  request.getParameter("word37");
            java.lang.String word_7idTemp = null;
        if(!word_7id.equals("")){
         word_7idTemp  = word_7id;
        }
        String mean_8id=  request.getParameter("mean39");
            java.lang.String mean_8idTemp = null;
        if(!mean_8id.equals("")){
         mean_8idTemp  = mean_8id;
        }
        String type_9id=  request.getParameter("type41");
            java.lang.String type_9idTemp = null;
        if(!type_9id.equals("")){
         type_9idTemp  = type_9id;
        }
        boolean addDictionary32mtemp = sampleManagerDictionaryProxyid.addDictionary(id_6idTemp,word_7idTemp,mean_8idTemp,type_9idTemp);
        String tempResultreturnp33 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addDictionary32mtemp));
        %>
        <%= tempResultreturnp33 %>
        <%
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>