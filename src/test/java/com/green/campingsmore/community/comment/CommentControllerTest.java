package com.green.campingsmore.community.comment;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.green.campingsmore.MockMvcConfig;
import com.green.campingsmore.user.community.comment.model.CommentDelDto;
import com.green.campingsmore.user.community.comment.model.CommentEntity2;
import com.green.campingsmore.user.community.comment.model.CommentInsDto;
import com.green.campingsmore.user.community.comment.model.CommentUpdDto;
import com.green.campingsmore.config.security.AuthenticationFacade;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Import;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.servlet.MockMvc;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.BDDMockito.given;
import static org.mockito.Mockito.verify;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
@ExtendWith(SpringExtension.class)
@MockMvcConfig
@WebMvcTest(CommentController1.class)// 내 컨트롤러
@AutoConfigureMockMvc(addFilters = false)
@Import({CommentController1.class})
class CommentControllerTest {
    @Autowired
    private MockMvc mvc;
    //    @BeforeEach
//    void beforeEach() {
//
//        UserDetails user = createUserDetails();
//
//        SecurityContext context = SecurityContextHolder.getContext();
//        context.setAuthentication(new UsernamePasswordAuthenticationToken(user, user.getPassword(), user.getAuthorities()));
//
//    }
    @MockBean
    private AuthenticationFacade FACADE;

    //    private UserDetails createUserDetails() {
//        List<String> roles = new ArrayList<>();
//        roles.add("ROLE_USER");
//
//        UserDetails userDetails = MyUserDetails.builder()
//                .iuser(10L)
//                .name("김철수")
//                .roles(roles)
//                .build();
//        return userDetails;
//    }
    @MockBean
    private CommentService1 service;

    @Test
    void insComment() throws Exception {
        given(service.insComment(any())).willReturn(1L);
        CommentInsDto dto = new CommentInsDto();
        dto.setIboard(1L);
        dto.setCtnt("hi");

        ObjectMapper om = new ObjectMapper();
        String json = om.writeValueAsString(dto); // 객체를 넘겨줄땐 필수
        mvc.perform(post("/api/comment")
                        .content(json)
                        .contentType(MediaType.APPLICATION_JSON)
                ).andExpect(status().isOk())
                .andExpect(content().string("1"))
                .andDo(print());
        verify(service).insComment(any());// time 1 은 한번실행됬다는뜻 for으로 쓰면 times써야함
        //2번은 2
    }

    @Test
    void updComment() throws Exception {
        // 준비
        CommentUpdDto dto = new CommentUpdDto();
        dto.setIcomment(1L);
        dto.setCtnt("Updated comment content");

        CommentEntity2 entity = new CommentEntity2();
        entity.setIcomment(dto.getIcomment());
        entity.setCtnt(dto.getCtnt());

        given(service.updComment(any())).willReturn(1L);

        ObjectMapper objectMapper = new ObjectMapper();

        // 실행 및 검증
        mvc.perform(put("/api/comment")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(dto)))
                .andExpect(status().isOk())
                .andExpect(content().string("1"))
                .andDo(print());

        verify(service).updComment(any());
    }



    @Test
    void delComment() throws Exception {
        CommentDelDto dto = new CommentDelDto();
        dto.setIcomment(1L);

        given(service.delComment(any())).willReturn(1L); // 이 모킹이 올바른지 확인
        ObjectMapper om = new ObjectMapper();
        mvc.perform(put("/api/comment/comment")  // @DeleteMapping("/comment")로 변경
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(om.writeValueAsString(dto)))
                .andExpect(status().isOk())
                .andExpect(content().string("1"))  // 해당하는 경우 이 어서션 추가
                .andDo(print());

        verify(service).delComment(any());
    }
}