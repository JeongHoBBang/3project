package com.green.campingsmore.admin.order.ordermanage;

import com.green.campingsmore.admin.order.ordermanage.model.SelOrderManageVo;
import com.green.campingsmore.admin.order.ordermanage.model.PatchShipping;
import com.green.campingsmore.admin.order.refundmanage.model.ShippingRes;
import com.green.campingsmore.config.security.model.MyUserDetails;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@Slf4j
@Tag(name = "관리자 - 주문")
@RestController
@RequestMapping("/api/admin/order")
@RequiredArgsConstructor
public class OrderManageCotroller {
    private final OrderManageService SERVICE;

    @GetMapping
    @Operation(summary = "주문 관리",
            description =
                    "<h3> startDate : 시작 날짜\n" +
                            "<h3> endDate : 끝 날짜 (생략가능)\n" +
                            "<h3> listBox : " +
                            "<h3>   └주문번호(PK) : 0\n" +
                            "<h3>   └주문자명 : 1\n" +
                            "<h3>   └주문자 아이디 : 2\n" +
                            "<h3>   └주문자 휴대전화 : 3\n" +
                            "<h3>   └주문서 이메일 : 4\n" +
                            "<h3> keyword : 검색어\n" +
                            "<h3> ## 오늘 날만 찍을때는 startDate에만 오늘날짜 기입 \n" +
                            "<h3> ## listBox 기입시 keyword 기입도 필수 \n" +
                            "<h3> ## listBox에 문자 입력시엔 큰따옴표 붙여서 입력할것 ex)\" 문자 \", \"asd\" \n" +
                            "<h3>-----------------------------------\n" +
                            "<h3> orderDate : 주문 날짜\n" +
                            "<h3> iorder : 주문 PK (주문번호)\n" +
                            "<h3> name : 주문자 이름\n" +
                            "<h3> orderPrice : 주문 가격\n" +
                            "<h3> shippingStatus : 총 가격\n" +
                            "<h3> refundStatus : 취소(환불상태)\n"
    )
    public List<SelOrderManageVo> selOrderManageList(@RequestParam LocalDate startDate,
                                                     @RequestParam(required = false) LocalDate endDate,
                                                     @RequestParam(required = false) Integer listBox,
                                                     @RequestParam(required = false) Object keyword
//                                                     @RequestParam Integer page, @RequestParam Integer row
                                                     ) throws Exception {
        return SERVICE.selOrderManageList(startDate, endDate, listBox, keyword);
    }

    @PatchMapping
    @Operation(summary = "배송 상태 변경",
            description =
                    "<h3> iorder : 주문 PK\n" +
                            "<h3> shipping : 배송 상태" +
                            "<h3>   └0 : 배송 준비중\n" +
                            "<h3>   └1 : 배송 중\n" +
                            "<h3>   └2 : 배송 완료\n" +
                            "<h3>   └3 : 배송 취소\n" +
                            "<h3> ## 0 일땐 1과 3으로만 변경가능(1 : 배송 중, 3 : 배송 취소) \n" +
                            "<h3> ## 1 일땐 2로만 변경가능(2 : 배송 완료) \n" +
                            "<h3> ## 2, 3일땐 변경 불가 \n" +
                            "<h3>-----------------------------------\n" +
                            "<h3> iorder : 주문 PK \n" +
                            "<h3> shipping : 배송 상태" +
                            "<h3>   └0 : 배송 준비중\n" +
                            "<h3>   └1 : 배송 중\n" +
                            "<h3>   └2 : 배송 완료\n" +
                            "<h3>   └3 : 배송 취소\n"
    )
    public ShippingRes patchShipping(@AuthenticationPrincipal MyUserDetails user,
                                     @RequestBody PatchShipping dto) throws Exception {
        dto.setIuser(user.getIuser());
        return SERVICE.patchShipping(dto);
    }
}