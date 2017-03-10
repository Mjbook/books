package member.model;

public interface MemberDAO {
	
	  public int join(MemberDTO dto);
	  public int login(String id, String pwd);
}
