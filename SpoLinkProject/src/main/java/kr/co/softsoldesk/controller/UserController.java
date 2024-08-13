package kr.co.softsoldesk.controller;



import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.softsoldesk.Validator.UserValidator;
import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.service.UserService;


@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	//巐護寳�ｰ��桿
	//#3 ��罹ｲ� �搗�況(jsp �ｰ倆劍)
	@GetMapping("/join")
	private String join(@ModelAttribute("joinUserBean") UserBean joinUserBean) {
	//#4 modelAttribute�｡� UserBean �ｰ晧ｲｴ�･ｼ jsp�｡� �擽�徐

		return "user/join";
	}


	//巐護寳�ｰ��桿 �悛巐ｨ�┳ �ｲ��ぎ
	@PostMapping("/join_pro")
	private String join_pro(@Valid @ModelAttribute("joinUserBean") UserBean joinUserBean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "user/join";
		}// �悛巐ｨ�┳ �ｲ��ぎ�乱 �共甯ｨ﨑� �ｲｽ�垈 "user/join" �ｷｰ�･ｼ �ｰ倆劍
		
		userService.addUser(joinUserBean);
		
		return "user/join_success";
		}// �悛巐ｨ�┳ �ｲ��ぎ�乱 �┳�ｳｵ﨑� �ｲｽ�垈 "user/join_success" �ｷｰ�･ｼ �ｰ倆劍
	
	//@InitBinder: Spring MVC�乱��� 孖ｹ��� �ｻｨ孖ｸ�｡､�洳�乱 �劇﨑� �魂�擽奓ｰ �ｰ肥攤�畠 �ｰ� �ｲ��ｦ� �└��菩揆 �ｴ一ｸｰ嶹被葺�株 �ｩ肥�罹糖�乱 ���圸 
	@InitBinder 
	public void initBinder(WebDataBinder binder) {
		//UserValidator �ｰ晧ｲｴ ��晧┳
		UserValidator validator1 = new UserValidator();
		//WebDataBinder �ｰ晧ｲｴ�乱 UserValidator�･ｼ �ｶ緋ｰ�﨑們流 �悛巐ｨ�┳ �ｲ��ぎ �└���
		binder.addValidators(validator1);
	}
	
	@GetMapping("/login")
	private String login() {
		
		return "user/login";
	}
}
