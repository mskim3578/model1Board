<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/common/head.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" 
href="https://www.w3schools.com/w3css/4/w3.css"></head>
<title>Insert title here</title>
</head><body>

<div class="w3-container">

<center><b>글쓰기</b>
<br>



<form method="post" name="writeform" action="writePro.jsp" >
<table class="w3-table-all"  style="width:70%;" >
   <tr> <td align="right" colspan="2" >
	    <a href="list.jsp"> 글목록</a>   </td>
   </tr>   <tr>
    <td  width="70"   align="center">이 름</td>
    <td  width="330">
  <input type="text" size="10" maxlength="10" name="writer"></td>
  </tr><tr>
    <td  width="70"   align="center" >제 목
    </td>    <td width="330">    
	   <input type="text" size="40" maxlength="50" 
	   name="subject" >
   </td>  </tr>  <tr>
    <td  width="70"   align="center">Email</td>
    <td  width="330">
       <input type="text" size="40" maxlength="30" 
       name="email" ></td>
  </tr>  <tr>
    <td  width="70"   align="center" >내 용</td>
    <td  width="330" >
     <textarea name="content" rows="13" cols="40"></textarea> </td>
  </tr>  <tr>
    <td  width="70"   align="center" >비밀번호</td>
    <td  width="330" >
     <input type="password" size="8" maxlength="12" name="passwd"> 
	 </td>  </tr><tr>      
 <td colspan=2  align="center"> 
  <input type="submit" value="글쓰기" >  
  <input type="reset" value="다시작성">
  <input type="button" value="목록보기" 
  OnClick="window.location='list.jsp'">
</td></tr></table>   </form></center></div></body></html>
