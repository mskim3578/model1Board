//459
package member;
 
 import java.sql.*;

 import javax.sql.*; 
import javax.naming.*;
 
 public class MemberDBBean {
    
 	private static MemberDBBean instance = new MemberDBBean();
    
    public static MemberDBBean getInstance() {
        return instance;
    }
    
    private MemberDBBean() {
    }
    
    private Connection getConnection() throws Exception {
    	Connection conn=null;
    	String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:orcl";
		String dbId = "scott";
		String dbPass = "1111";
			
    	   Class.forName("oracle.jdbc.OracleDriver");
    	  
    	conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
      return conn;
    }
    public void insertMember(MemberDataBean member) 
    throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
           try {        	
            conn = getConnection();
            pstmt = conn.prepareStatement(
            	"insert into MEMBER values (?,?,?,?,?,?,?,?)");
            pstmt.setString(1, member.getId());
            pstmt.setString(2, member.getPasswd());
            pstmt.setString(3, member.getName());
            pstmt.setString(4, member.getJumin1());
            pstmt.setString(5, member.getJumin2());
            pstmt.setString(6, member.getEmail());
            pstmt.setString(7, member.getBlog());
			pstmt.setTimestamp(8, member.getReg_date());
            pstmt.executeUpdate();
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
    }
 
	public int userCheck(String id, String passwd) 
	throws Exception {
		Connection conn = null;        PreparedStatement pstmt = null;
		ResultSet rs= null;  String dbpasswd="";int x=-1;
	try {   conn = getConnection();
            pstmt = conn.prepareStatement(
            	"select passwd from MEMBER where id = ?");
            pstmt.setString(1, id);
            rs= pstmt.executeQuery();
		if(rs.next()){
				dbpasswd= rs.getString("passwd"); 
				if(dbpasswd.equals(passwd))
					x= 1; //인증 성공
				else
					x= 0; //비밀번호 틀림
			}else
				x= -1;//해당 아이디 없음
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
		if (rs != null) try { rs.close(); } catch(SQLException ex) {}
        if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
        if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }		return x;	}

	public int confirmId(String id) 
	throws Exception {
		Connection conn = null;        PreparedStatement pstmt = null;
		ResultSet rs= null;       
		int x=-1;        
		try {
            conn = getConnection();
            pstmt = conn.prepareStatement(
            	"select id from MEMBER where id = ?");
            pstmt.setString(1, id);
            rs= pstmt.executeQuery();
			if(rs.next())	x= 1; //해당 아이디 있음
			else		x= -1;//해당 아이디 없음		
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
	if (rs != null) try { rs.close(); } catch(SQLException ex) {}
    if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
    if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return x;
	}


    public MemberDataBean getMember(String id)
    throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        MemberDataBean member=null;
        try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement(
            	"select * from MEMBER where id = ?");
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                member = new MemberDataBean();
                member.setId(rs.getString("id"));
                member.setPasswd(rs.getString("passwd"));
				member.setName(rs.getString("name"));
                member.setJumin1(rs.getString("jumin1"));
                member.setJumin2(rs.getString("jumin2"));
				member.setEmail(rs.getString("email"));
				member.setBlog(rs.getString("blog"));
                member.setReg_date(rs.getTimestamp("reg_date"));     
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return member;
    }
    
    public void updateMember(MemberDataBean member)
    throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement(
              "update MEMBER set passwd=?,name=?,email=?,blog=? "+
              "where id=?");
            pstmt.setString(1, member.getPasswd());
            pstmt.setString(2, member.getName());
            pstmt.setString(3, member.getEmail());
            pstmt.setString(4, member.getBlog());
            pstmt.setString(5, member.getId());
            
            pstmt.executeUpdate();
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
    }
    
    public int deleteMember(String id, String passwd)
    throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs= null;
        String dbpasswd="";
        int x=-1;
        try {
			conn = getConnection();

            pstmt = conn.prepareStatement(
            	"select passwd from MEMBER where id = ?");
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            
			if(rs.next()){
				dbpasswd= rs.getString("passwd"); 
				if(dbpasswd.equals(passwd)){
					pstmt = conn.prepareStatement(
            	      "delete from MEMBER where id=?");
                    pstmt.setString(1, id);
                    pstmt.executeUpdate();
					x= 1; //회원탈퇴 성공
				}else
					x= 0; //비밀번호 틀림
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return x;
    }
 }