package kr.co.softsoldesk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import kr.co.softsoldesk.service.UserService;

@RestController //응답 결과가 데이터로 
public class RestApiController {

	@Autowired
	private UserService userService;
	
	//ID 중복확인
	@GetMapping("/user/checkUserIdExist/{user_id}")// HTTP GET 요청을 처리합니다. URL 경로에 {user_id}를 변수로 사용 
	public String checkUserIdExist(@PathVariable String user_id) {
		
		boolean chk = userService.checkUserIdExist(user_id);
		
		return  chk+"";
		//ID가 DB에 있으면 false, 없으면 true
	}
}

