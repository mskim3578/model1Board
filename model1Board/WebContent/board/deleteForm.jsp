<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/common/head.jsp"%>
<%  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum");%>
<html><head><title>�Խ���</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head><body >
<p class="w3-left"  style="padding-left:30px;"><%=board%>></p>
<center><div class="w3-container "><b>�ۻ���</b><br>
<form method="POST" name="delForm"  
action="deletePro.jsp?pageNum=<%=pageNum%>" 
   onsubmit="return deleteSave()"> 
 <table class="table-bordered" width="360">
  <tr height="30"><td align=center  ><b>��й�ȣ�� �Է��� �ּ���.</b></td>
  </tr>  <tr height="30">
     <td align=center >��й�ȣ :   
   <input type="password" name="passwd" size="8" maxlength="12">
	   <input type="hidden" name="num" value="<%=num%>">
	   </td> </tr> <tr height="30">    <td align=center >
      <input type="submit" value="�ۻ���" >
      <input type="button" value="�۸��" 
onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'">     
 </td> </tr>  </table> </form></center></div></body></html> 