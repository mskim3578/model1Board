<%@ page contentType="text/html; charset=euc-kr" %>
<%@include file="color.jsp" %>

<html>
<head>
<title>ȸ������</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>

<body bgcolor="<%=bodyback_c%>">
  <form name="regForm" method="post" action="registerProc.jsp" onsubmit="return inputCheck()">
    <table width="500" border="0" cellspacing="0" cellpadding="2"  align="center">
      <tr height="39" align="center" bgcolor="<%=title_c%>"> 
         <td colspan="3"><b>ȸ�� ����</b></font></td>
      </tr>
      <tr> 
        <td width="100" bgcolor="<%=title_c%>">���̵�</td>
        <td width="200" bgcolor="<%=value_c%>"> 
		  <input type="text" name="mem_id" size="15"> </td>
        <td width="200" bgcolor="<%=value_c%>">���̵� ���� �ּ���.</td>
      </tr>
      <tr> 
        <td width="100" bgcolor="<%=title_c%>">�н�����</td> 
        <td width="200" bgcolor="<%=value_c%>"> 
	      <input type="password" name="mem_passwd" size="15"> </td>
      <td width="200" bgcolor="<%=value_c%>">�н����带 �����ּ���.</td>
      </tr>
      <tr> 
        <td width="100" bgcolor="<%=title_c%>">�н����� Ȯ��</td>
        <td width="200" bgcolor="<%=value_c%>"> 
		  <input type="password" name="mem_repasswd" size="15"> </td>
        <td width="200" bgcolor="<%=value_c%>">�н����带 Ȯ���մϴ�.</td>
      </tr>
      <tr>  
        <td width="100" bgcolor="<%=title_c%>">�̸�</td>
        <td width="200" bgcolor="<%=value_c%>"> 
		  <input type="text" name="mem_name" size="15"> </td>
        <td width="200" bgcolor="<%=value_c%>">���Ǹ��� �����ּ���.</td>
      </tr>
      <tr> 
         <td width="100" bgcolor="<%=title_c%>">�̸���</td>
         <td width="200" bgcolor="<%=value_c%>"> 
		   <input type="text" name="mem_email" size="27"> </td>
         <td width="200" bgcolor="<%=value_c%>">�̸����� �����ּ���</td>
      </tr>
      <tr>  
         <td width="100" bgcolor="<%=title_c%>">��ȭ��ȣ</td>
         <td width="200" bgcolor="<%=value_c%>"> 
		   <input type="text" name="mem_phone" size="20"> </td>
         <td width="200" bgcolor="<%=value_c%>">����ó�� �����ּ���</td>
      </tr>
      <tr> 
         <td colspan="3" align="center"  bgcolor="<%=title_c%>"> 
           <input type="submit" value="ȸ������" > 
              &nbsp; &nbsp; &nbsp; &nbsp;
           <input type="reset" value="�ٽþ���"> 
         </td>
       </tr>
    </form>
  </table>
</body>
</html>
