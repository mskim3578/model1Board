<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="/common/head.jsp"%>
<% board = "ȸ��Ż��"; %>
<%@ page import = "member.MemberDBBean" %>

<html>
<head>
<title>ȸ��Ż��</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<%
    String id = (String)session.getAttribute("memId");
	String passwd  = request.getParameter("passwd");
	
	MemberDBBean manager = MemberDBBean.getInstance();
    int check = manager.deleteMember(id,passwd);
	
	if(check==1){
		session.invalidate();
%>
<body >
<form method="post" action="main.jsp" name="userinput" >
<table width="270" border="0" cellspacing="0" cellpadding="5" align="center">
  <tr > 
    <td height="39" align="center">
	  <font size="+1" ><b>ȸ�������� �����Ǿ����ϴ�.</b></font></td>
  </tr>
  <tr >
    <td align="center"> 
      <p>����.... �����մϴ�. �ȳ��� ������.</p>
      <meta http-equiv="Refresh" content="5;url=main.jsp" >
    </td>
  </tr>
  <tr >
    <td align="center"> 
      <input type="submit" value="Ȯ��">
    </td>
  </tr>
</table>
</form>
<%}else {%>
	<script> 
	  alert("��й�ȣ�� ���� �ʽ��ϴ�.");
      history.go(-1);
	</script>
<%}%>

</body>
</html>
