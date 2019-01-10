<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "board.BoardDBBean" %>
<%@ page import = "java.sql.Timestamp" %>
<% request.setCharacterEncoding("euc-kr");%>

<%@ include file="/common/head.jsp"%>
<jsp:useBean id="article"  class="board.BoardDataBean">
   <jsp:setProperty name="article" property="*"/>
</jsp:useBean>
<%  
String ses = (String)session.getAttribute("boardid");

String pageNum = request.getParameter("pageNum");
	BoardDBBean dbPro = BoardDBBean.getInstance();
    int check = dbPro.updateArticle(article, boardid);
    if(check==1){%>
<meta http-equiv="Refresh" 
content="0;url=list.jsp?pageNum=<%=pageNum%>" >
<% }else{%>
      <script language="JavaScript">      
        alert("비밀번호가 맞지 않습니다");
        history.go(-1);
     
     </script>
<%    } %>  
 