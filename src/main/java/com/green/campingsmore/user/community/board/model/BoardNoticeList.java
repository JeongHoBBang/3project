package com.green.campingsmore.user.community.board.model;

import lombok.Data;

import java.time.LocalDate;

@Data
public class BoardNoticeList {
    private Long iboard;
    private Long icategory;
    private String title;
    private String ctnt;
    private LocalDate createdat;
    private Integer boardView;
}
