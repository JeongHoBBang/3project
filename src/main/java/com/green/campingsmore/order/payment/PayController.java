package com.green.campingsmore.order.payment;

import com.green.campingsmore.order.payment.model.*;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/payment")
@RequiredArgsConstructor
@Tag(name = "결제")
public class PayController {

    private final PayService SERVICE;

    @PostMapping
    @Operation(summary = "결제 정보 저장",
            description = "<h3> iuser : 결제한 유저 PK\n" +
            "<h3> address : 배송지\n" +
            "<h3> addressDetail : 상세 배송지\n" +
            "<h3> totalPrice : 총 결제 금액\n" +
            "<h3> shippingPrice : 배송비\n" +
            "<h3> shippingMemo : 배송 메모\n" +
            "<h3>purchaseList : 구입 목록\n" +
            "<h3>   └iitem : 결제한 아이템 PK\n" +
            "<h3>   └quantity : 아이템 수량\n" +
            "<h3>   └totalPrice : 아이템별 총 가격\n" +
            "\n" +
            "\n" +
            "\n" +
            "<h3>   CODE 1 : DB 정보 저장 성공\n" +
            "<h3>   CODE 2 : DB 정보 저장 실패\n"
    )
    private int postPayInfo(@RequestBody InsPayInfoDto dto) {
        return SERVICE.insPayInfo(dto);
    }

    @GetMapping("/{iuser}/{iorder}")
    @Operation(summary = "결제 내역 보기",
            description = "<h3> iuser : 결제한 유저 PK\n" +
            "<h3> iorder : 주문 PK\n"
    )    //유저 결제시 띄움(결제창에서 바로띄움)
    private PaymentCompleteDto getPaymentComplete(@PathVariable Long iuser, @PathVariable Long iorder) {
        return SERVICE.selPaymentComplete(iorder);
    }

    @GetMapping("/paymentList/{iuser}")
    @Operation(summary = "전체 결제 내역 보기(마이 페이지)",
            description = "<h3> iuser : 유저 PK\n"
    ) //유저마이페이지에서 조회, 마이페이지 이동예정
    private List<SelPaymentDetailDto> getPaymentList(@PathVariable Long iuser) {
        return SERVICE.selPaymentDetailAll(iuser);
    }

    @PostMapping("/order/cart")  //예정
    @Operation(summary = "장바구니 결제 버튼 -> 체크된 장바구니 아이템 정보들을 결제 페이지에서 보여주기")
    private List<PaymentDetailDto> getPaymentItemList(@RequestBody CartPKDto dto) {
        return SERVICE.selPaymentPageItemList(dto);
    }

    @GetMapping("/order/{iitem}")
    @Operation(summary = "아이템 구매 버튼 -> 단일 아이템 정보를 결제 페이지에서 보여주기")
    private PaymentDetailDto getPaymentItemList(@PathVariable Long iitem, @RequestParam Long quantity) {
        return SERVICE.selPaymentPageItem(iitem, quantity);
    }
}