package kr.co.softsoldesk.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.co.softsoldesk.beans.UserBean;

public interface UserMapper {
	
	//회원가입
	@Insert("insert into users(user_idx, user_name, user_id, user_email, user_pass1, user_Phone) values(user_seq.nextval, #{user_name}, #{user_id}, #{user_email}, #{user_pass1}, #{user_Phone})")
	void addUser(UserBean joinUserBean);
		
	//ID 중복확인
	@Select("select user_id from users where user_id = #{user_id}")
	String checkUserIdExist(String user_id);
}
