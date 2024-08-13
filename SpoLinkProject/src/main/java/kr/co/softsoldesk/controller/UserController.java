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
	
	//회원가입
	//#3 서버 응답(jsp 반환)
	@GetMapping("/join")
	private String join(@ModelAttribute("joinUserBean") UserBean joinUserBean) {
	//#4 modelAttribute로 UserBean 객체를 jsp로 이동

		return "user/join";
	}


	//회원가입 유효성 검사
	@PostMapping("/join_pro")
	private String join_pro(@Valid @ModelAttribute("joinUserBean") UserBean joinUserBean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "user/join";
		}// 유효성 검사에 실패한 경우 "user/join" 뷰를 반환
		
		userService.addUser(joinUserBean);
		
		return "user/join_success";
		}// 유효성 검사에 성공한 경우 "user/join_success" 뷰를 반환
	
	//@InitBinder: Spring MVC에서 특정 컨트롤러에 대한 데이터 바인딩 및 검증 설정을 초기화하는 메서드에 적용 
	@InitBinder 
	public void initBinder(WebDataBinder binder) {
		//UserValidator 객체 생성
		UserValidator validator1 = new UserValidator();
		//WebDataBinder 객체에 UserValidator를 추가하여 유효성 검사 설정
		binder.addValidators(validator1);
	}
}
