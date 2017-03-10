package bbs.model;


import java.util.List;

public interface BbsDAO {
	
	public int bbsWrite(BbsDTO dto);
	public List<BbsDTO> bbsList();

}
