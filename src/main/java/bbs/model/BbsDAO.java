package bbs.model;


import java.util.List;
import java.util.Map;

public interface BbsDAO {
	
	public int bbsWrite(BbsDTO dto);
	public List<BbsDTO> bbsList();
	public BbsDTO bbsContent(int idx);
	public List<BbsDTO> bbsSearch(String searcher, String jogun);

}
