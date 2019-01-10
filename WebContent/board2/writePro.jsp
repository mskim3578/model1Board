<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "board.BoardDBBean" %>
<%@ page import = "java.sql.Timestamp" %>
<% request.setCharacterEncoding("euc-kr");%>
<jsp:useBean id="article"  class="board.BoardDataBean">
   <jsp:setProperty name="article" property="*"/>
</jsp:useBean>
<%  String ses = (String)session.getAttribute("boardid");
 if (ses==null) ses = "1";
 
   String pageNum = request.getParameter("pageNum");
    if(pageNum==null||pageNum=="") pageNum="1"; 
    
  	article.setIp(request.getRemoteAddr());
  	System.out.println("a--"+article);
  	
 	BoardDBBean dbPro = BoardDBBean.getInstance();
  	dbPro.insertArticle(article, ses);
    response.sendRedirect("list.jsp?pageNum="+pageNum+"&id="
    +session.getAttribute("id"));
%>
