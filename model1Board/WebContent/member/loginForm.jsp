<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="/common/head.jsp"%>
<% board = "로그인"; %>
<html>
<head><title>로그인</title>

   <script language="javascript">
   
       function begin(){
         document.myform.id.focus();
       }
       function checkIt(){
         if(!document.myform.id.value){
           alert("아이디을 입력하지 않으셨습니다.");
           document.myform.id.focus();
           return false;
         }
         if(!document.myform.passwd.value){
           alert("비밀번호를 입력하지 않으셨습니다.");
           document.myform.passwd.focus();
           return false;
         }
         
       }
  
   </script>
</head>
<BODY  >
<center>
<p class="w3-left"   style="padding-left:30px;">로그인></p>
<div class="w3-container">


<form name="myform" action="loginPro.jsp" method="post" onSubmit="return checkIt()">
<TABLE class="w3-table-all"  style="width:50%;" >
  
  <TR height="30">
    <TD colspan="2" align="middle" ><STRONG>회원로그인</STRONG></TD></TR>
  
  <TR height="30">
    <TD width="110"  align=center>아이디</TD>
    <TD width="150"  align=center>
       <INPUT type="text" name="id" size="15" maxlength="12"></TD></TR>
  <TR height="30">
    <TD width="110"  align=center>비밀번호</TD>
    <TD width="150"  align=center>
      <INPUT type=password name="passwd"  size="15" maxlength="12"></TD></TR>
  <TR height="30">
    <TD colspan="2" align="middle"  >
      <INPUT type=submit value="로그인"> 
      <INPUT type=reset value="다시입력">
      <input type="button" value="회원가입" onclick="javascript:window.location='inputForm.jsp'"></TD></TR>
</TABLE>
</form>
</div></center>
</BODY>
</HTML>