package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.model.MemberDAO;
import member.model.MemberDTO;

@Controller
public class memberController {

	@Autowired
	private MemberDAO memberDao;

		@RequestMapping("/member.do")
		public ModelAndView index() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/member/memberJoin");
			return mav;
		}
		
		@RequestMapping("/memberjoin.do")
		public ModelAndView memberJoin(MemberDTO cmd) {

			int result = memberDao.join(cmd);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/index");
			return mav;
	}
		
		
}
