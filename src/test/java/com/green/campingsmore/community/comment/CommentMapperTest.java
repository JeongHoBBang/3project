package com.green.campingsmore.community.comment;

import com.green.campingsmore.community.comment.model.*;
import com.green.campingsmore.config.security.AuthenticationFacade;
import org.junit.jupiter.api.Test;
import org.mybatis.spring.boot.test.autoconfigure.MybatisTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.context.ActiveProfiles;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
@MybatisTest
@ActiveProfiles("test")
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
class CommentMapperTest {

    @Autowired
    private CommentMapper mapper;

    @MockBean
    private AuthenticationFacade FACADE;


    @Test
    @WithMockUser(username = "1", roles = "USER")

    void insComment() {
        CommentEntity2 entity = new CommentEntity2();
        entity.setIboard(9L);
        entity.setIuser(1L);
        entity.setCtnt("테스트1");



        Long result = mapper.insComment(entity);
        assertEquals(1,result);
        assertEquals(9,entity.getIboard());
        assertEquals(1,entity.getIuser());
    }
    @Test
    void updComment() {
        CommentEntity2 entity = new CommentEntity2();
        entity.setIcomment(1L);
        entity.setIuser(1L);
        entity.setCtnt("수정됨");


        Long result = mapper.updComment(entity);

        assertEquals(1,result);
        assertEquals(1,entity.getIcomment());
        assertEquals(1,entity.getIuser());
    }

    @Test
    @WithMockUser(username = "testUser", roles = "USER")
    void delComment() {
        CommentEntity2 entity = new CommentEntity2();
        entity.setIcomment(3L);
        entity.setIuser(2L);
        Long delComment = mapper.delComment(entity);
        assertEquals(1L, delComment);
    }

    @Test
    void selComment() {
        CommentPageDto dto = new CommentPageDto();
        dto.setIboard(1L);
        dto.setRow(15);
        dto.setPage(1);
        dto.setStartIdx(0);

        List<CommentVo> list = mapper.selComment(dto);

        assertEquals(4,list.size());
        CommentVo item1 = list.get(0);

        assertEquals(3L,item1.getIcomment());

        assertNotNull(item1.getIboard());
        assertEquals(1L,item1.getIboard());

        assertNotNull(item1.getCtnt());
        assertEquals("string",item1.getCtnt());


        assertNotNull(item1.getCreatedAt());
        assertEquals("2023-07-26T14:49:43",item1.getCreatedAt().toString());

    }


    @Test
    void maxComment() {
        CommentPageDto dto = new CommentPageDto();
        dto.setStartIdx(0);
        dto.setIboard(1L);
        dto.setPage(1);
        dto.setRow(15);
        Long result = mapper.maxComment(dto);

        assertEquals(6L,result);
    }
}