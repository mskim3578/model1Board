<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="/common/head.jsp"%>
    <html>
<head><title>�����Դϴ�..</title>
</head>


</head>


<body  >

<div class="w3-container  w3-display-middle">
<%
 try{
   if(session.getAttribute("memId")==null){
   %>
<br>
     <form name="inform" method="post" action="loginPro.jsp"  onSubmit="return checkIt();">

  <table class="w3-table-all"    >
      <tr>
       <td rowspan="2"  class="w3-border"> &nbsp;�����Դϴ�. </td>  
        <td >���̵�</td>
        <td  >
            <input type="text" name="id" size="15" maxlength="10"></td>
      </tr>
      <tr > 
       
         <td >�н�����</td>
         <td >
            <input type="password" name="passwd" size="15" maxlength="10"></td>
       </tr>
      
       <tr>
          <td colspan="3"    class="w3-center">
            <input type="submit" name="Submit" value="�α���">
            <input type="button"  value="ȸ������" onclick="javascript:window.location='inputForm.jsp'">
          </td></tr>
          </table></form>
     <%}else{%>
      <table class="w3-table-all"   >   <tr>
           <td height="20">������</td>

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
 %></div>
 </body>
</html>
