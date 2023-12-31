package com.green.campingsmore.admin.user;

import com.green.campingsmore.admin.user.model.AdminUserSearch;
import com.green.campingsmore.admin.user.model.ChatDto;
import com.green.campingsmore.admin.user.model.UserDto;
import com.green.campingsmore.sign.model.SignInResultDto;
import com.green.campingsmore.sign.model.UserLogin;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RequiredArgsConstructor
@RestController
@Tag(name = "관리자 유저 관리 페이지")
@RequestMapping("/api/admin")
public class AdminUserController {
    // 관리자 로그아웃은 유저 로그아웃과 동일한 것을 쓴다.
    private final AdminUserService SERVICE;

    @PostMapping("/oauth/authorize")
    @Operation(summary = "관리자 로그인",
            description = "Try it out -> Execute 눌러주세요 \n\n " +
                    "id:  아이디 \n\n " +
                    "password : 비밀번호 \n\n "
    )
    public SignInResultDto signIn(HttpServletRequest req, @RequestBody UserLogin userLogin){
        String id = userLogin.getUid();
        String password = userLogin.getUpw();
        String ip = req.getRemoteAddr();
        log.info("[signIn] 로그인을 시도하고 있습니다. id: {}, pw: {}, ip: {}",id, password, ip);

        return SERVICE.adminSignIn(userLogin,ip);
    }

    @GetMapping("/manage/users")
    @Operation(summary = "관리자 - 모든 유저 리스트 보기",
            description = "Try it out -> Execute 눌러주세요 \n\n "
    )
    public List<UserDto> selectAllusers(){
        return SERVICE.selectAllusers();
    }

    @GetMapping("/manage/users/user")
    @Operation(summary = "관리자 - 유저 한 명 검색하기",
            description = "Try it out -> Execute 눌러주세요 \n\n "
    )
    public List<UserDto> selectUser(
            @RequestParam(value = "name",required = false) String name,
            @RequestParam(value = "gender",required = false) Integer gender,
            @RequestParam(value = "user_id",required = false) String user_id,
            @RequestParam(value = "phone",required = false) String phone
    ){
        AdminUserSearch adminUserSearch = AdminUserSearch.builder()
                .name(name)
                .gender(gender)
                .user_id(user_id)
                .phone(phone)
                .build();
        return SERVICE.selectUser(adminUserSearch);
    }

    @GetMapping("/manage/chart")
    @Operation(summary = "관리자 - 유저 현황 차트 (방문자, 성별 비율, 회원 나이 비율)",
            description = "Try it out -> Execute 눌러주세요 \n\n "+
                    "회원 나이 비율 10살 이하면 0으로 처리됨. 프론트에서는 10대 이하로 처리하면 됨 \n\n" +
                    "2 값은 성별,회원 나이 비율 둘다 알수 없음 요소로 차트에 나타낸다."
    )
    public List<ChatDto> selectChart(){
        return SERVICE.selectChart();
    }

}
