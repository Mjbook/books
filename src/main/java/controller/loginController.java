package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.model.MemberDAO;

@Controller
public class loginController {
	
	@Autowired
	private MemberDAO memberDao;
	
	@RequestMapping("login.do")
	public String login(){
		
		return "/member/loginForm";
	}
	
	@RequestMapping("loginCheck.do")
	public ModelAndView loginCheck(HttpServletRequest req){
		
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		
		int result = memberDao.login(id, pwd);
		ModelAndView mav = new ModelAndView();
		if(result>0){
			
			HttpSession session = req.getSession();
			session.setAttribute("login_ok", id);
			mav.setViewName("/member/loginSuccess");
		}
		else{
			mav.setViewName("/member/loginFail");
		}
		
		return mav;
		
	}
	
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpServletRequest req){
		HttpSession session = req.getSession();
		session.invalidate();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/index");
		
		return mav;
	}
	

}
