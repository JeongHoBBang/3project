package com.green.campingsmore.admin.user;

import com.green.campingsmore.admin.user.model.AdminUserSearch;
import com.green.campingsmore.admin.user.model.ChatDto;
import com.green.campingsmore.admin.user.model.UserDto;
import com.green.campingsmore.config.security.model.LoginDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdminUserMapper {
    List<UserDto> selectUser(AdminUserSearch adminUserSearch);
    List<UserDto> selectAllusers();
    LoginDto getAdminUser(String uid);
    List<ChatDto> selectChart();
}
