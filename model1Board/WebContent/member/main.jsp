<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%><html>
<head><title>�����Դϴ�..</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<%
 try{
   if(session.getAttribute("memId")==null){%>
<script language="javascript">
<!--
function focusIt()
{      
   document.inform.id.focus();
}
 
 function checkIt()
 {
   inputForm=eval("document.inform");
   if(!inputForm.id.value){
     alert("���̵� �Է��ϼ���..");
	 inputForm.id.focus();
	 return false;
   }
   if(!inputForm.passwd.value){
     alert("��й�ȣ�� �Է��ϼ���..");
	 inputForm.passwd.focus();
	 return false;
   }
 }
//-->
</script>
</head>

<body onLoad="focusIt();" >
  <table width=500 cellpadding="0" cellspacing="0"  align="center" border="1" >
      <tr>
       <td width="300"  height="20">
       &nbsp;
       </td>
   
       <form name="inform" method="post" action="loginPro.jsp"  onSubmit="return checkIt();">

        <td   width="100" align="right">���̵�</td>
        <td width="100" >
            <input type="text" name="id" size="15" maxlength="10"></td>
      </tr>
      <tr > 
         <td rowspan="2"  width="300" >�����Դϴ�.</td>
         <td  width="100" align="right">�н�����</td>
         <td width="100" >
            <input type="password" name="passwd" size="15" maxlength="10"></td>
       </tr>
       <tr>
          <td colspan="3"    align="center">
            <input type="submit" name="Submit" value="�α���">
            <input type="button"  value="ȸ������" onclick="javascript:window.location='inputForm.jsp'">
          </td></form></tr></table>
     <%}else{%>
       <table width=500 cellpadding="0" cellspacing="0"  align="center" border="1" >
         <tr>
           <td width="300"  height="20">������</td>

           <td rowspan="3"  align="center">
             <%=session.getAttribute("memId")%>���� <br>
             �湮�ϼ̽��ϴ�
             <form  method="post" action="logout.jsp">  
             <input type="submit"  value="�α׾ƿ�">
             <input type="button" value="ȸ����������" onclick="javascript:window.location='modify.jsp'">
             </form>
         </td>
        </tr>
       <tr > 
         <td rowspan="2"  width="300" >�����Դϴ�.</td>
      </tr>
     </table>
     <br>
 <%}
 }catch(NullPointerException e){}
 %>
 </body>
</html>
