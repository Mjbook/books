package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import bbs.model.BbsDAO;
import bbs.model.BbsDTO;

@Controller
public class boardController {
	
	@Autowired
	private BbsDAO bbsDao;
	
	@RequestMapping("/noticeboard.do")
	public String board(){
		
		return "/notice_board/notice_board";
	}
	
	@RequestMapping("/bbsWrite.do")
	public ModelAndView bbsWrite(BbsDTO dto){
		
		ModelAndView mav = new ModelAndView();
		
		int result = bbsDao.bbsWrite(dto);
		
		String msg=result>0?"등록 완료!":"등록 실패!";
		
		mav.addObject("msg",msg);
		
		mav.setViewName("/notice_board/bbsMsg");
		
		return mav;
	}
	
	@RequestMapping("/bbsList.do")
	public ModelAndView bbsList(){
		ModelAndView mav = new ModelAndView();
		List<BbsDTO> list = bbsDao.bbsList();
		
		mav.addObject("list",list);
		mav.setViewName("/notice_board/bbsList");
		
		return mav;
	}
	
	@RequestMapping("/bbsContent.do")
	public ModelAndView bbsContent(@RequestParam("idx") int idx){
		
		ModelAndView mav = new ModelAndView();
		BbsDTO dto = bbsDao.bbsContent(idx);
		
		mav.addObject("dto",dto);
		mav.setViewName("/notice_board/bbsContent");
		
		return mav;
		
	}
	
	@RequestMapping("/bbsSearch.do")
	public ModelAndView bbsSearch(@RequestParam("search")String search, @RequestParam("jogun")String jogun){
//		Map<String,String> map = new HashMap<String,String>();
//		
//		map.put("search", search);
//		map.put("jogun", jogun);
		ModelAndView mav = new ModelAndView();
		List<BbsDTO> dto = bbsDao.bbsSearch(search, jogun);
		
		mav.addObject("search",dto);
		mav.setViewName("/notice_board/bbsList");
		return mav;
	}

}
