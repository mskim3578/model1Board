<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="/common/head.jsp"%>
    <html>
<head><title>메인입니다..</title>
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
       <td rowspan="2"  class="w3-border"> &nbsp;메인입니다. </td>  
        <td >아이디</td>
        <td  >
            <input type="text" name="id" size="15" maxlength="10"></td>
      </tr>
      <tr > 
       
         <td >패스워드</td>
         <td >
            <input type="password" name="passwd" size="15" maxlength="10"></td>
       </tr>
      
       <tr>
          <td colspan="3"    class="w3-center">
            <input type="submit" name="Submit" value="로그인">
            <input type="button"  value="회원가입" onclick="javascript:window.location='inputForm.jsp'">
          </td></tr>
          </table></form>
     <%}else{%>
      <table class="w3-table-all"   >   <tr>
           <td height="20">하하하</td>

           <td rowspan="3"  align="center">
             <%=session.getAttribute("memId")%>님이 <br>
             방문하셨습니다
             <form  method="post" action="logout.jsp">  
             <input type="submit"  value="로그아웃">
             <input type="button" value="회원정보변경" onclick="javascript:window.location='modify.jsp'">
             </form>
         </td>
        </tr>
       <tr > 
         <td rowspan="2"  width="300" >메인입니다.</td>
      </tr>
     </table>
     <br>
 <%}
 }catch(NullPointerException e){}
 %></div>
 </body>
</html>
