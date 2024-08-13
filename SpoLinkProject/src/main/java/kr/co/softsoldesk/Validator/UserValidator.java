package kr.co.softsoldesk.Validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import kr.co.softsoldesk.beans.UserBean;

public class UserValidator implements Validator{

	@Override //이 Validator에서 지원하는 클래스인지 확인
	public boolean supports(Class<?> clazz) {
		
		//UserBean 클래스를 지원하는 지확인
		return UserBean.class.isAssignableFrom(clazz);
	}

	
	//비밀번호 확인
	@Override //객체의 유효성을 검사하고, 유효하지 않을 경우 Errors객체에 에러 등록
	public void validate(Object target, Errors errors) {
		//검증 대상 객체를 UserBean 타입으로 캐스팅
		UserBean userBean = (UserBean)target;
		
		//객체명을 확인하여 특정 객체에대해 다른 검증 로직을 적용할 수 있음
		String beanName = errors.getObjectName();
		
		//만약 객체명이 "joinUserBean"인 경우
		if(beanName.equals("joinUserBean")) {
			//pass1과 pass2의 값이 일치하지 않는 경우
		
		if(userBean.getUser_pass1().equals(userBean.getUser_pass2())==false) {
			
			//Errors 객체에 "user_paass1" 필드와 "user_pass2"필드에 대한 오류 등록 	
			errors.rejectValue("user_pass1", "NotEquals");
			errors.rejectValue("user_pass2", "NotEquals");
				
			}
		
			// 사용자 아이디가 존재하지 않는 경우에 대한 검증
		if (userBean.isUserIdExist() == false) {
		    // 사용자 아이디가 존재하지 않을 때 오류를 발생시킵니다.
		    // "user_id" 필드에 대한 검증에서 "DontCheckUserIdExist"라는 오류 메시지를 추가합니다.
		    errors.rejectValue("user_id", "DontCheckUserIdExist");
			}
		}
	}

}