package kr.co.softsoldesk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.dao.UserDAO;

@Service
public class UserService {
	
	@Autowired
	private UserDAO userDAO;
	 
	//회원가입
	public void addUser(UserBean joinUserBean) {
		
		System.out.println("joinUserBean");
		
		userDAO.addUser(joinUserBean);
	}

	//ID 중복확인
	public boolean checkUserIdExist(String user_id) {
			
	String checkId = userDAO.checkUserIdExist(user_id);
			
	if(checkId==null) {
		return true;
	}else {
		return false;
		}
	}

}
