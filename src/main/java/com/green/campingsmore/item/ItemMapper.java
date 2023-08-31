package com.green.campingsmore.item;

import com.green.campingsmore.item.model.*;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ItemMapper {


    //카테고리
    int insCate(String categoryName);
    //카테고리 보기
    List<ItemSelCateVo> selCategory();
    Long selIcate(String categoryName);

    // 아이템 추가
    Long insItem(ItemEntity2 entity);
    int selLastItem(ItemSearchDto dto);
    List<ItemVo> searchItem(ItemSearchDto dto);
    int updItem(ItemEntity2 entity);
    // 아이템 삭제
    int delItem(Long item);
    // 아이템 상세페이지
    ItemSelDetailVo selDetail(Long iitem);
    List<String> selDetailPic(Long iitem);
    // 아이템 상세페이지 변경 del->ins
    int delDetailPic(Long iitem);
    int insDetailPic(ItemInsDetailDto dto2);

    // 추천 아이템
    int insBestItem(ItemInsBestDto dto);
    List<ItemVo> selBestItem();

}
