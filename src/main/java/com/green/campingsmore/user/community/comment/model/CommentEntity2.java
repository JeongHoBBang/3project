package com.green.campingsmore.user.community.comment.model;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class CommentEntity2 {
    private Long icomment;
    private Long iboard;
    private Long iuser;
    private String ctnt;
    private LocalDateTime createdat;
    private LocalDateTime updatedat;
    private String delyn;
}
