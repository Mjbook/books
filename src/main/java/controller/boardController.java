package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
		
		String msg=result>0?"등록성공!":"등록실패!";
		
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

}
