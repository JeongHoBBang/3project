package com.green.campingsmore.user.community.board.model;

import lombok.Builder;
import lombok.Getter;

import java.util.List;

@Getter
@Builder
public class BoardRes1 {
    private int isMore;
    private int row;
    private int maxPage;
    private List<BoardListVo> list;
}
