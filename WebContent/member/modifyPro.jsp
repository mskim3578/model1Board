<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "member.*" %>


<% request.setCharacterEncoding("euc-kr");%>

<jsp:useBean id="member" class="member.LogonDataBean">
    <jsp:setProperty name="member" property="*" />
</jsp:useBean>
 
<%
    String id = (String)session.getAttribute("memId");
	member.setId(id);

	LogonDBBean manager = LogonDBBean.getInstance();
    manager.updateMember(member);
 %>
<link href="style.css" rel="stylesheet" type="text/css">

<table width="270" border="0" cellspacing="0" cellpadding="5" align="center">
  <tr > 
    <td height="39"  align="center">
	  <font size="+1" ><b>ȸ�������� �����Ǿ����ϴ�.</b></font></td>
  </tr>
  <tr>
    <td  align="center"> 
      <p>�Է��Ͻ� ������ ������ �Ϸ�Ǿ����ϴ�.</p>
    </td>
  </tr>
  <tr>
    <td  align="center"> 
      <form>
	    <input type="button" value="��������" onclick="window.location='main.jsp'">
      </form>
      5���Ŀ� �������� �̵��մϴ�.<meta http-equiv="Refresh" content="5;url=main.jsp" >
    </td>
  </tr>
</table>
</body>
</html>
