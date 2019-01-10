<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="/common/head.jsp"%>
<% board = "È¸¿øÅ»Åð"; %>
<html>
<head><title>È¸¿øÅ»Åð</title>
<link href="style.css" rel="stylesheet" type="text/css">

   <script language="javascript">
     <!--
       function begin(){
         document.myform.passwd.focus();
       }

       function checkIt(){
		  if(!document.myform.passwd.value){
           alert("ºñ¹Ð¹øÈ£¸¦ ÀÔ·ÂÇÏÁö ¾ÊÀ¸¼Ì½À´Ï´Ù.");
           document.myform.passwd.focus();
           return false;
         }
	   }   
     -->
   </script>
</head>
<BODY onload="begin()" >
<form name="myform" action="deletePro.jsp" method="post" onSubmit="return checkIt()">
<TABLE cellSpacing=1 cellPadding=1 width="260" border=1 align="center" >
  
  <TR height="30">
    <TD colspan="2" align="middle" >
	  <font size="+1" ><b>È¸¿ø Å»Åð</b></font></TD></TR>
  
  <TR height="30">
    <TD width="110"  align=center>ºñ¹Ð¹øÈ£</TD>
    <TD width="150" align=center>
      <INPUT type=password name="passwd"  size="15" maxlength="12"></TD></TR>
  <TR height="30">
    <TD colspan="2" align="middle"  >
      <INPUT type=submit value="È¸¿øÅ»Åð"> 
      <input type="button" value="Ãë  ¼Ò" onclick="javascript:window.location='main.jsp'"></TD></TR>
</TABLE>
</form>
</BODY>
</HTML>
