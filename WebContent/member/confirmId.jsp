<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "member.MemberDBBean" %>
<% request.setCharacterEncoding("euc-kr");%>
<html>
<head><title>ID �ߺ�Ȯ��</title>
<% String id = request.getParameter("id");
	MemberDBBean manager = MemberDBBean.getInstance();
    int check= manager.confirmId(id); %> 
<body ><%    if(check == 1) {%>
<table width="270" border="0" cellspacing="0" cellpadding="5">
  <tr >     <td height="39" ><%=id%>�̹� ������� ���̵��Դϴ�.</td>
  </tr></table>
<form name="checkForm" method="post" action="confirmId.jsp">
<table width="270" border="0" cellspacing="0" cellpadding="5">
  <tr>    <td  align="center"> 
       �ٸ� ���̵� �����ϼ���.<p>
       <input type="text" size="10" maxlength="12" name="id"> 
       <input type="submit" value="ID�ߺ�Ȯ��">
    </td>  </tr></table></form>
<%    } else {%>
<table width="270" border="0" cellspacing="0" cellpadding="5">
  <tr >     <td align="center"> 
      <p>�Է��Ͻ� <%=id%> �� ����Ͻ� �� �ִ� ID�Դϴ�. </p>
      <input type="button" value="�ݱ�" onclick="setid()">
    </td>  </tr></table><%    }%></body></html>
<script >
  function setid()
    {	opener.document.userinput.id.value="<%=id%>";
        opener.document.userinput.idchk.value="Y";
        self.close();}	
</script>





