package com.green.campingsmore.community.board;

import com.green.campingsmore.config.security.AuthenticationFacade;
import com.green.campingsmore.user.community.board.model.*;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.constraints.Min;
import lombok.RequiredArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDate;
import java.util.List;

@RestController
@RequestMapping("/api/community")
@RequiredArgsConstructor
@Tag(name = "게시판")
public class BoardController1 {

    private final BoardService1 service;
    private final AuthenticationFacade FACADE;

    //    @PostMapping( consumes = {MediaType.MULTIPART_FORM_DATA_VALUE})
//    @Operation(summary = "게시판 등록")
//    public Long postBoard(/*@AuthenticationPrincipal MyUserDetails user
//            ,*/ @RequestPart BoardInsDto dto
//            , @RequestPart(required = false) List<MultipartFile> pics) throws Exception {
//        // 로그인 했을때만 수정할 수 있도록 해야함  // 본인 자신만 수정할 수 있도록 해야함..
////        System.out.println("controller-iuser {}"+ user.getIuser());
////        service.test();
//        return service.postBoard(dto, pics);
//    }
    @GetMapping("/iboard")
    @Operation(summary = "pk값 반환")
    public Long postboard() {
        return service.postboard();
    }

    @PostMapping(value = "/photo", consumes = {MediaType.MULTIPART_FORM_DATA_VALUE})
    @Operation(summary = "사진하나 업로드할때 url 반환")
    public String postPic(Long iboard, @RequestPart(required = false) MultipartFile pic) throws Exception {
        return service.postOnePic(iboard, pic);
    }

    @PostMapping(value = "/multiple", consumes = {MediaType.MULTIPART_FORM_DATA_VALUE})
    @Operation(summary = "사진 여러개 업로드 할때 리스트로 url 반환")
    public List<String> uploadFiles(@RequestPart Long iboard, @RequestPart(required = false) List<MultipartFile> pics) throws Exception {
        return service.postPic(iboard, pics);
    }

    @PostMapping("/board")
    @Operation(summary = "게시글 작성/수정")
    public Long updContent(@RequestBody BoardInsDto dto) {
        return service.updContent(dto);
    }

    @GetMapping("/my-list")
    @Operation(summary = "내가 작성한글 보기- 마이페이지에서 사용")
    public List<BoardMyVo> selMyBoard() {
        System.out.println("유저 PK  : {}" + FACADE.getLoginUserPk());
        BoardMyDto dto = new BoardMyDto();
        dto.setIuser(FACADE.getLoginUserPk());
        return service.selMyBoard(dto);
    }

    @DeleteMapping("/board")
    @Operation(summary = "게시글 작성 취소")
    public Long delWriteBoard(@RequestParam Long iboard) {
        return service.delWriteBoard(iboard);
    }

    @PutMapping("/{iboard}")
    @Operation(summary = "게시글 삭제 하기")
    public Long delBoard(@PathVariable Long iboard) {
        BoardDelDto dto = new BoardDelDto();
        dto.setIuser(FACADE.getLoginUserPk());
        dto.setIboard(iboard);
        return service.delBoard(dto);
    }

    @GetMapping("/list")
    @Operation(summary = "게시글 리스트 보기")
    public BoardRes1 selBoardList(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "15") @Min(value = 15) int row) {
        BoardPageDto dto = new BoardPageDto();
        dto.setPage(page);
        dto.setRow(row);
        return service.selBoardList(dto);
    }

    @GetMapping("/category-list")
    @Operation(summary = "카테고리별 게시글 리스트 보기")
    public BoardRes1 categoryBoardList(@RequestParam Long icategory
            , @RequestParam(defaultValue = "1", required = false) int page
            , @RequestParam(defaultValue = "15") @Min(value = 15) int row) {
        BoardPageDto dto = new BoardPageDto();
        dto.setIcategory(icategory);
        dto.setPage(page);
        dto.setRow(row);
        return service.categoryBoardList(dto);
    }

    @GetMapping("/title")
    @Operation(summary = "제목으로 검색")
    public BoardSelRes selBoard(@RequestParam String title, @RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "15") @Min(value = 15) int row) {
        BoardSelPageDto dto = new BoardSelPageDto();
        dto.setTitle(title);
        dto.setPage(page);
        dto.setRow(row);
        return service.selBoard(dto);
    }

    @GetMapping("/board/{iboard}")
    @Operation(summary = "게시글 디테일 보기"
            , description = "" +
            "\"첫줄iuser 로그인한 유저\"두번째 유저 글쓴 유저pk"
    )
    public BoardCmtDeVo deBoard(@PathVariable Long iboard) {
        BoardDeDto dto = new BoardDeDto();
        dto.setIboard(iboard);
        return service.deBoard(dto);
    }

    //    @PutMapping(value = "/update",consumes = {MediaType.MULTIPART_FORM_DATA_VALUE})
//    @Operation(summary = "게시판 수정x")
//    public Long updBoard(@RequestPart BoardUpdDto dto,@RequestPart(required = false) List<MultipartFile> pic){
//        return service.updBoard(pic, dto);
//    }
    @DeleteMapping("/pic")
    @Operation(summary = "게시글 사진 pk값으로 삭제 폴더에 사진없으면 폴더도 자동삭제")
    public Long delOnePic(@RequestBody BoardPicDelDto dto) {
        return service.delOnePic(dto);
    }


//    @PostMapping("/category")
//    @Operation(summary = "카테고리 생성")
//    public Long insCategory(String name) {
//        return service.insCategory(name);
//    }

//    @GetMapping("/notice-list")
//    @Operation(summary = "공지 리스트")
//    public List<BoardNoticeList> noticeList() {
//        return service.noticeList();
//    }
//
//    @GetMapping("/notice-count")
//    @Operation(summary = "공지 개수")
//    public String noticeCount(Long icategory) {
//        return service.noticeCount(icategory);
//    }
//
//    @PutMapping("/{iboard}/admin")
//    @Operation(summary = "게시글 삭제 하기")
//    public Long delAdminBoard(@PathVariable Long iboard) {
//        return service.delAdminBoard(iboard);
//    }
//
    @GetMapping("/sel-category")
    @Operation(summary = "카테고리 조회")
    public List<CategoryList> getCategory() {
        return service.getCategory();
    }
}
//
//    @GetMapping("/admin-board")
//    @Operation(summary = "보드관리자")
//    public List<BoardListVo> admin(@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate startDate,
//                                   @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate endDate,
//                                   @RequestParam(required = false) Long icategory,
//                                   @RequestParam(required = false) String title
//    ) {
//        return service.admin(startDate, endDate, title, icategory);
//    }
//}
