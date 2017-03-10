package bbs.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class BbsDAOImple implements BbsDAO {
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	private SqlSessionTemplate sqlMap;
	


	public BbsDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public int bbsWrite(BbsDTO dto) {

		try{
			conn = db.yongDB.getConn();
			String sql = "insert into notice_board values(notice_board_idx.nextval,?,?,?,sysdate,0,0,0,0)";
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, dto.getTitle());
			ps.setString(2, dto.getWriter());
			ps.setString(3, dto.getContent());
			
			int result = ps.executeUpdate();
			System.out.println(dto.getContent());
			return result;
			
			
		}catch(Exception e){
			e.printStackTrace();
			return -1;
		}finally{
			try{
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			}catch(Exception e){
				
			}
		}
		
	}
	
	public List<BbsDTO> bbsList(){
		
		List<BbsDTO> list = sqlMap.selectList("bbsList");
		
		return list;
	}
	
	public BbsDTO bbsContent(int idx){
		BbsDTO bto = sqlMap.selectOne("bbsContent",idx);
		sqlMap.update("bbsReadNum",idx);
		return bto;
	}
	
	public List<BbsDTO> bbsSearch(String search, String jogun) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("search", search);
		map.put("jogun", jogun);
		List<BbsDTO> list = sqlMap.selectList("bbsSearch",map);
		return list;
	}

	

}
