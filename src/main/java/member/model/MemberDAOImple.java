package member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.mybatis.spring.SqlSessionTemplate;

public class MemberDAOImple implements MemberDAO {

	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	private SqlSessionTemplate sqlMap;

	public int join(MemberDTO dto) {
		try {
			conn = db.yongDB.getConn();

			String sql = "insert into kh_member values(kh_member_idx.nextval,?,?,?,sysdate,?,?,?,?)";
			ps = conn.prepareStatement(sql);

			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPwd());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getAddr());
			ps.setString(5, dto.getTel());
			ps.setString(6, dto.getEmail());
			ps.setString(7, dto.getZipcode());

			int result = ps.executeUpdate();

			return result;

		} catch (Exception e) {
			e.printStackTrace();
			return -1;

		} finally {
			try {
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();

			} catch (Exception e) {

			}
		}

	}

	public int login(String id, String pwd) {

		try {
			conn = db.yongDB.getConn();
			String sql = "select * from kh_member where id=? and pwd=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pwd);

			int count = ps.executeUpdate();

			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return -1;
			

		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {

			}
		}
	}

}
