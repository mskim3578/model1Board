<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="/common/head.jsp"%>
<% board = "�α���"; %>
<html>
<head><title>�α���</title>

   <script language="javascript">
   
       function begin(){
         document.myform.id.focus();
       }
       function checkIt(){
         if(!document.myform.id.value){
           alert("���̵��� �Է����� �����̽��ϴ�.");
           document.myform.id.focus();
           return false;
         }
         if(!document.myform.passwd.value){
           alert("��й�ȣ�� �Է����� �����̽��ϴ�.");
           document.myform.passwd.focus();
           return false;
         }
         
       }
  
   </script>
</head>
<BODY  >
<center>
<p class="w3-left"   style="padding-left:30px;">�α���></p>
<div class="w3-container">


<form name="myform" action="loginPro.jsp" method="post" onSubmit="return checkIt()">
<TABLE class="w3-table-all"  style="width:50%;" >
  
  <TR height="30">
    <TD colspan="2" align="middle" ><STRONG>ȸ���α���</STRONG></TD></TR>
  
  <TR height="30">
    <TD width="110"  align=center>���̵�</TD>
    <TD width="150"  align=center>
       <INPUT type="text" name="id" size="15" maxlength="12"></TD></TR>
  <TR height="30">
    <TD width="110"  align=center>��й�ȣ</TD>
    <TD width="150"  align=center>
      <INPUT type=password name="passwd"  size="15" maxlength="12"></TD></TR>
  <TR height="30">
    <TD colspan="2" align="middle"  >
      <INPUT type=submit value="�α���"> 
      <INPUT type=reset value="�ٽ��Է�">
      <input type="button" value="ȸ������" onclick="javascript:window.location='inputForm.jsp'"></TD></TR>
</TABLE>
</form>
</div></center>
</BODY>
</HTML>