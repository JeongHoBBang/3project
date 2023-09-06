/*
package com.green.campingsmore.review;

import com.green.campingsmore.user.review.model.ReviewUpdDto;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@RestController
@Tag(name="리뷰")
@RequestMapping("/api/review/2")
@RequiredArgsConstructor
public class ReviewController2 {
    private final ReviewService2 SERVICE;

*/
/*    @PostMapping
    @Operation(summary = "리뷰 추가"
            , description = "" +
            "\"iuser\": [-] 유저 PK,<br>" +
            "\"iorder\": [-]  아이템 썸네일 pic url,<br>" +
            "\"iitem\": [-] 아이템 PK,<br>" +
            "\"reviewCtnt\": [-] 리뷰 내용,<br>" +
            "\"starRating\": [-] 별점,<br>" +
            "\"pic\": [-] 사진 이미지<br>")
    public String postReview(@RequestBody ReviewInsDto dto) {
        return SERVICE.insReview(dto);
    }*//*


*/
/*    @PostMapping(consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    @Operation(summary = "리뷰 추가"
            , description = "" +
            "\"iuser\": [-] 유저 PK,<br>" +
            "\"iorder\": [-]  주문 PK,<br>" +
            "\"iitem\": [-] 아이템 PK,<br>" +
            "\"reviewCtnt\": [-] 리뷰 내용,<br>" +
            "\"starRating\": [-] 별점,<br>" +
            "\"pic\": [-] 사진 이미지<br>")
    public String postReview(@RequestPart ReviewPageDto.ReviewInsDto dto,
                           @RequestPart(required = false) MultipartFile pic) {
        return SERVICE.insReview(dto, pic);
    }*//*


*/
/*    @GetMapping("/{iitem}/detail")
    @Operation(summary = "리뷰 리스트"
            , description = "" +
            "\"iitem\": [-] 아이템 PK<br>" )
    public ReviewRes getReview(@PathVariable Long iitem,
                               @RequestParam(defaultValue = "1")int page,
                               @RequestParam(defaultValue = "5") int row) {
        ReviewPageDto dto = new ReviewPageDto();
        dto.setIitem(iitem);
        dto.setPage(page);
        dto.setRow(row);
        return SERVICE.selReview(dto);
    }*//*


*/
/*    @PutMapping(consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    @Operation(summary = "리뷰 수정"
            , description = "" +
            "\"iuser\": [-] 유저 PK,<br>" +
            "\"iorder\": [-]  아이템 썸네일 pic url,<br>" +
            "\"iitem\": [-] 아이템 PK,<br>" +
            "\"reviewCtnt\": [-] 리뷰 내용,<br>" +
            "\"starRating\": [-] 별점,<br>" +
            "\"pic\": [-] 사진 이미지<br>")
    public String updReview(@RequestPart ReviewUpdDto dto,
                             @RequestPart(required = false) MultipartFile pic) {
        return SERVICE.updReview(dto, pic);
    }*//*


    @DeleteMapping
    @Operation(summary = "리뷰 삭제"
            , description = "" +
            "\"ireview\": [-] 리뷰 PK<br>" )
    public int delReview(@RequestParam Long ireview) {
        return SERVICE.delReview(ireview);
    }

*/
/*    @PutMapping(value = "리뷰 사진 수정",consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    @Operation(summary = "리뷰 사진 수정"
            , description = "" +
            "\"iuser\": [-] 유저 P,K<br>"+
            "\"ireview\": [-] 리뷰 PK,<br>"+
            "\"pic\": [-] 사진 이미지<br>" )
    public String putReviewPic(@RequestPart MultipartFile pic,
                               @RequestParam Long iuser,
                               @RequestParam Long ireview) {
        ReviewPicDto dto = new ReviewPicDto();
        dto.setIuser(iuser);
        dto.setIreview(ireview);
        return SERVICE.updReviewPic(pic, dto);
    }*//*


}
*/
