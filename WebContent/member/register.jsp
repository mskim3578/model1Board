<%@ page contentType="text/html; charset=euc-kr" %>
<%@include file="color.jsp" %>

<html>
<head>
<title>회원가입</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>

<body bgcolor="<%=bodyback_c%>">
  <form name="regForm" method="post" action="registerProc.jsp" onsubmit="return inputCheck()">
    <table width="500" border="0" cellspacing="0" cellpadding="2"  align="center">
      <tr height="39" align="center" bgcolor="<%=title_c%>"> 
         <td colspan="3"><b>회원 가입</b></font></td>
      </tr>
      <tr> 
        <td width="100" bgcolor="<%=title_c%>">아이디</td>
        <td width="200" bgcolor="<%=value_c%>"> 
		  <input type="text" name="mem_id" size="15"> </td>
        <td width="200" bgcolor="<%=value_c%>">아이디를 적어 주세요.</td>
      </tr>
      <tr> 
        <td width="100" bgcolor="<%=title_c%>">패스워드</td> 
        <td width="200" bgcolor="<%=value_c%>"> 
	      <input type="password" name="mem_passwd" size="15"> </td>
      <td width="200" bgcolor="<%=value_c%>">패스워드를 적어주세요.</td>
      </tr>
      <tr> 
        <td width="100" bgcolor="<%=title_c%>">패스워드 확인</td>
        <td width="200" bgcolor="<%=value_c%>"> 
		  <input type="password" name="mem_repasswd" size="15"> </td>
        <td width="200" bgcolor="<%=value_c%>">패스워드를 확인합니다.</td>
      </tr>
      <tr>  
        <td width="100" bgcolor="<%=title_c%>">이름</td>
        <td width="200" bgcolor="<%=value_c%>"> 
		  <input type="text" name="mem_name" size="15"> </td>
        <td width="200" bgcolor="<%=value_c%>">고객실명을 적어주세요.</td>
      </tr>
      <tr> 
         <td width="100" bgcolor="<%=title_c%>">이메일</td>
         <td width="200" bgcolor="<%=value_c%>"> 
		   <input type="text" name="mem_email" size="27"> </td>
         <td width="200" bgcolor="<%=value_c%>">이메일을 적어주세요</td>
      </tr>
      <tr>  
         <td width="100" bgcolor="<%=title_c%>">전화번호</td>
         <td width="200" bgcolor="<%=value_c%>"> 
		   <input type="text" name="mem_phone" size="20"> </td>
         <td width="200" bgcolor="<%=value_c%>">연락처를 적어주세요</td>
      </tr>
      <tr> 
         <td colspan="3" align="center"  bgcolor="<%=title_c%>"> 
           <input type="submit" value="회원가입" > 
              &nbsp; &nbsp; &nbsp; &nbsp;
           <input type="reset" value="다시쓰기"> 
         </td>
       </tr>
    </form>
  </table>
</body>
</html>
