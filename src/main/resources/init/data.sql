
SET foreign_key_checks = 0;
INSERT IGNORE  `best_item` (`iitem`, `month_like`, `created_at`)
VALUES (1, '2023-07-11', '2023-07-28 16:51:42'),
	(3, '2023-07-11', '2023-07-28 16:50:42'),
	(8, '2023-08-11', '2023-07-28 17:17:34'),
	(11, '2023-08-11', '2023-07-28 17:18:10'),
	(12, '2023-08-11', '2023-07-28 17:18:03'),
	(16, '2023-07-11', '2023-07-28 16:52:57'),
	(24, '2023-07-11', '2023-07-28 16:52:50'),
	(29, '2023-07-11', '2023-07-28 16:51:13'),
	(31, '2023-07-11', '2023-07-28 16:52:01'),
	(41, '2023-07-11', '2023-07-28 16:52:24'),
	(55, '2023-08-11', '2023-07-28 17:18:07'),
	(59, '2023-08-11', '2023-07-28 17:17:12'),
	(61, '2023-08-11', '2023-07-28 17:17:23'),
	(62, '2023-08-11', '2023-07-28 17:17:19'),
	(63, '2023-07-11', '2023-07-28 16:53:13'),
	(65, '2023-07-11', '2023-07-28 16:53:35'),
	(73, '2023-08-11', '2023-07-28 17:18:14'),
	(74, '2023-08-11', '2023-07-28 17:18:17');

INSERT IGNORE  `board` (`iboard`, `iuser`, `icategory`, `title`, `ctnt`, `created_at`, `updated_at`, `del_yn`,
                     `board_view`)
VALUES (1, 1, 1, '123', '123', '2023-07-25 15:28:40', '2023-07-25 15:28:40', 1, 0),
       (2, 1, 1, '123', '123', '2023-07-25 15:28:47', '2023-07-25 15:28:47', 1, 0),
       (3, 1, 1, '123', '123', '2023-07-25 15:29:04', '2023-07-25 16:48:39', 0, 0),
       (4, 1, 1, '123', '123', '2023-07-25 15:32:03', '2023-07-25 15:32:03', 1, 0),
       (5, 1, 1, '123', '123', '2023-07-25 15:33:42', '2023-07-25 15:33:42', 1, 0),
       (9, 1, 1, '123', '123', '2023-07-25 15:37:31', '2023-07-25 15:37:31', 1, 0),
       (12, 1, 1, '123', '123', '2023-07-25 15:38:48', '2023-07-25 15:38:48', 1, 0),
       (13, 1, 1, '123', '123', '2023-07-25 15:41:12', '2023-07-25 15:41:12', 1, 0),
       (14, 1, 1, '123', '123', '2023-07-25 15:42:08', '2023-07-25 15:42:08', 1, 0),
       (15, 1, 1, '123', '123', '2023-07-25 15:43:02', '2023-07-25 15:43:02', 1, 0),
       (17, 1, 1, '123', '123', '2023-07-25 15:47:29', '2023-07-25 15:47:29', 1, 0),
       (18, 1, 1, '123', '123', '2023-07-25 17:53:13', '2023-07-25 17:53:13', 1, 0),
       (19, 1, 1, '123', '123', '2023-07-25 17:53:27', '2023-07-25 17:53:27', 1, 0),
       (20, 1, 1, '123', '123', '2023-07-25 17:53:37', '2023-07-25 17:53:37', 1, 0),
       (21, 1, 1, '123', '123', '2023-07-25 17:53:38', '2023-07-25 17:53:38', 1, 0),
       (22, 1, 1, '123', '123', '2023-07-25 17:53:38', '2023-07-25 17:53:38', 1, 0),
       (23, 1, 1, '123', '123', '2023-07-25 17:53:39', '2023-07-25 17:53:39', 1, 0),
       (24, 1, 1, '123', '123', '2023-07-25 17:53:40', '2023-07-25 17:53:40', 1, 0),
       (25, 1, 1, '123', '123', '2023-07-25 17:53:40', '2023-07-25 17:53:40', 1, 0),
       (26, 1, 1, '123', '123', '2023-07-25 17:54:00', '2023-07-25 17:54:00', 1, 0),
       (27, 1, 1, '123', '123', '2023-07-25 18:17:50', '2023-07-25 18:17:50', 1, 0),
       (29, 1, 1, '123', '123', '2023-07-25 18:18:34', '2023-07-25 18:18:34', 1, 0),
       (31, 1, 1, '123', '123', '2023-07-25 18:19:21', '2023-07-25 18:19:21', 1, 0),
       (32, 1, 1, '123', '123', '2023-07-26 13:03:36', '2023-07-26 13:03:36', 1, 0);

INSERT IGNORE  `board_category` (`icategory`, `name`)
VALUES (1, '중고거래');

INSERT IGNORE  `board_image` (`iboardpic`, `iboard`, `pic`)
VALUES (1, 17, '333844fe-6c82-4d0a-87ec-fc2510af978b.jpeg'),
       (2, 17, '333844fe-6c82-4d0a-87ec-fc2510af978b.jpeg'),
       (3, 17, '22671f5d-33d9-4603-839d-77c51504237b.png'),
       (4, 18, '9b2da0cd-a783-4691-99bd-c161006bdb99.jpeg'),
       (5, 18, '9b2da0cd-a783-4691-99bd-c161006bdb99.jpeg'),
       (6, 18, 'ed65ec2b-e8ab-42d4-bb76-756e58fe650d.png'),
       (7, 19, '2df1d04d-8e60-4d7b-8c51-73b83602ef8e.jpeg'),
       (8, 19, '2df1d04d-8e60-4d7b-8c51-73b83602ef8e.jpeg'),
       (9, 19, 'c153f17f-f057-4b30-b00a-86610d2692b9.png'),
       (10, 20, '8cb06bc6-209c-4674-9032-bc68960a100e.jpeg'),
       (11, 20, '8cb06bc6-209c-4674-9032-bc68960a100e.jpeg'),
       (12, 20, 'cbd6362e-689b-4db9-bad8-4b4f47620cfc.png'),
       (13, 21, '48ebf903-a159-4225-9b10-ef860ceb53c4.jpeg'),
       (14, 21, '48ebf903-a159-4225-9b10-ef860ceb53c4.jpeg'),
       (15, 21, '11b6f60c-39b8-41b7-8984-45f6e048708b.png'),
       (16, 22, '1da88690-ca51-4e52-8da8-34575a663642.jpeg'),
       (17, 22, '1da88690-ca51-4e52-8da8-34575a663642.jpeg'),
       (18, 22, '7b019628-1dc2-4d24-9d92-247bf7482917.png'),
       (19, 23, '5dafc697-baf3-4099-bf35-04b62635af78.jpeg'),
       (20, 23, '5dafc697-baf3-4099-bf35-04b62635af78.jpeg'),
       (21, 23, '6f41c461-7de6-4d20-b745-a99632cd06a5.png'),
       (22, 24, '4b8e4a77-60e4-45e0-8510-23301c15b7a4.jpeg'),
       (23, 24, '4b8e4a77-60e4-45e0-8510-23301c15b7a4.jpeg'),
       (24, 24, '454c7a53-554d-414b-a094-91ea02ebc551.png'),
       (25, 25, 'da1bbeac-4e6b-4509-bf01-761db4703cbb.jpeg'),
       (26, 25, 'da1bbeac-4e6b-4509-bf01-761db4703cbb.jpeg'),
       (27, 25, '17304dd0-44e1-42d3-89c7-ff53d49338d2.png'),
       (28, 26, '5ce3c342-b748-42d6-abe6-2b6fc90fda90.jpeg'),
       (29, 26, '5ce3c342-b748-42d6-abe6-2b6fc90fda90.jpeg'),
       (30, 26, '0b9c53ab-a802-44b4-ae1b-7be1fccfba51.png'),
       (31, 27, 'fece4f81-64f8-4633-99e1-44c94dbac463.jpeg'),
       (32, 27, 'fece4f81-64f8-4633-99e1-44c94dbac463.jpeg'),
       (33, 27, '5c3afcc3-f941-4969-8a5b-7b656dacc7a4.png'),
       (34, 29, 'c8d4d68b-dfc3-4891-b8af-33c879f2968f.jpeg'),
       (35, 29, 'c8d4d68b-dfc3-4891-b8af-33c879f2968f.jpeg'),
       (36, 29, '5d1140dd-1206-493d-9470-684e970f45fa.png'),
       (37, 31, 'bfb320e9-000e-4bb5-a51d-777f1af931b3.jpeg'),
       (38, 31, 'bfb320e9-000e-4bb5-a51d-777f1af931b3.jpeg'),
       (39, 31, '3fa03102-f420-42e0-b2dd-20deecc5e9ad.png'),
       (40, 32, '4fd91403-c641-48b0-a022-76c45b98002a.jpeg'),
       (41, 32, '4fd91403-c641-48b0-a022-76c45b98002a.jpeg'),
       (42, 32, 'b9368068-5ed7-4ee1-b47e-38db7965b1a5.png');

INSERT IGNORE  `cart` (`icart`, `iuser`, `iitem`, `quantity`, `created_at`)
VALUES (1, 1, 1, 1, '2023-07-25 15:08:23'),
       (2, 1, 2, 2, '2023-07-25 18:15:58');

INSERT IGNORE  `comment` (`icomment`, `iboard`, `iuser`, `ctnt`, `created_at`, `updated_at`, `del_yn`)
VALUES (1, 1, 1, 'hello', '2023-07-25 19:21:08', '2023-07-26 14:47:34', 0),
       (2, 1, 1, 'hi', '2023-07-25 19:25:26', '2023-07-26 14:47:34', 0),
       (3, 1, 2, 'string', '2023-07-26T14:49:43', '2023-07-26 14:50:37', 1),
       (4, 1, 2, 'string', '2023-07-26 14:49:44', '2023-07-26 14:49:44', 1),
       (5, 1, 2, 'string', '2023-07-26 14:49:44', '2023-07-26 14:49:44', 1),
       (6, 1, 2, 'string', '2023-07-26 14:49:45', '2023-07-26 14:49:45', 1);

INSERT IGNORE  `item` (`iitem`, `iitem_category`, `name`, `price`, `info`, `pic`, `created_at`, `updated_at`, `del_yn`)
VALUES (1, 11, '양의나라 유기농 양고기 양갈비 양꼬치 프렌치렉 숄더랙 캠핑 냉장 냉동', 16500, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_8014052/80140522706.10.jpg', '2023-07-25 17:50:07', '2023-07-27 12:32:38', 1),
	(2, 11, '3개월미만 프렌치랙- 양갈비 양고기 밀키트 캠핑 쉽새끼 프랜치랙 프렌치렉 수육', 39800, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_8211829/82118298959.5.jpg', '2023-07-25 17:56:09', '2023-07-27 18:01:06', 0),
	(3, 11, '양의나라 유기농 양고기 양갈비 양꼬치 프렌치렉 숄더랙 캠핑 냉장 냉동', 16500, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_8014052/80140522706.10.jpg', '2023-07-26 18:17:53', '2023-07-27 18:01:34', 0),
	(4, 11, '3개월미만 프렌치랙- 양갈비 양고기 밀키트 캠핑 쉽새끼 프랜치랙 프렌치렉 수육', 39800, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_8211829/82118298959.5.jpg', '2023-07-26 18:17:53', '2023-07-27 18:01:37', 0),
	(5, 11, '양의나라 유기농 양고기 양갈비 양꼬치 프렌치렉 숄더랙 캠핑 냉장 냉동', 16500, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_8014052/80140522706.10.jpg', '2023-07-26 18:23:45', '2023-07-27 18:01:39', 0),
	(6, 11, '3개월미만 프렌치랙- 양갈비 양고기 밀키트 캠핑 쉽새끼 프랜치랙 프렌치렉 수육', 39800, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_8211829/82118298959.5.jpg', '2023-07-26 18:23:45', '2023-07-27 18:01:41', 0),
	(7, 11, '국내산 돼지 김해 뒷고기 도래창 특수부위 꼬들살 두항정살 뽈살 돼지혀 콧등살 덜미살 돈설 모듬 뽈항정살 돈뽈항정 캠핑고기 캠핑음식', 4500, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_8289380/82893809192.2.jpg', '2023-07-26 18:23:45', '2023-08-03 15:09:03', 1),
	(8, 11, '램 양꼬치 양깍두기 양고기 캠핑음식 1kg', 18500, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_8245209/82452098289.5.jpg', '2023-07-26 18:23:45', '2023-07-27 18:01:44', 1),
	(9, 11, '냉동삼겹살 구이용 보쌈용 대패삼겹살 1+1행사 1kg', 11900, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_8281068/82810684113.jpg', '2023-07-26 18:23:45', '2023-07-27 18:01:45', 1),
	(10, 11, '육감 캠핑고기세트 바베큐세트 2인 4인', 50000, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_8303290/83032900875.4.jpg', '2023-07-26 18:23:45', '2023-08-03 15:09:34', 1),
	(11, 11, '삼겹살 목살 통삼겹살 통항정살 옛날 냉삼 냉동 수입 통삼겹 캠핑', 24800, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_8389050/83890505368.8.jpg', '2023-07-26 18:23:45', '2023-07-27 18:01:47', 1),
	(12, 11, '양어깨살(큐브) 1kg 양고기 양깍두기 양꼬치', 18900, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_8201110/82011103794.3.jpg', '2023-07-26 18:23:45', '2023-07-27 18:01:49', 0),
	(13, 11, '삼겹살2kg 항정살 등갈비 이베리코 오겹살 듀록 통삼겹 냉동 통오겹살', 23200, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_8360077/83600770944.2.jpg', '2023-07-26 18:23:45', '2023-07-27 18:01:50', 1),
	(14, 11, '2kg 돼지 뒷다리살 후지 앞다리살 제육볶음 불고기용 다짐육 삼겹살 냉동 (업소용 도매)', 13900, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_8335629/83356294014.jpg', '2023-07-26 18:23:45', '2023-08-03 15:10:20', 1),
	(15, 13, '농심 짜파게티 만능소스 280g', 2930, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_4100556/41005566619.20230705093223.jpg', '2023-07-26 18:24:35', '2023-08-03 15:10:38', 1),
	(16, 13, '후이펑 스리라차 소스 255g 후이퐁 쓰리라차 0칼로리소스', 35690, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_8447907/84479074958.1.jpg', '2023-07-26 18:24:35', '2023-08-03 15:11:02', 1),
	(17, 13, '오뚜기 데리야끼소스 2kg', 3980, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_1406049/14060497106.20180417173145.jpg', '2023-07-26 18:24:35', '2023-08-03 15:11:12', 1),
	(18, 13, '면사랑 멸치육수 1.8L', 6870, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_2624743/26247430523.20210305113618.jpg', '2023-07-26 18:24:35', '2023-07-27 18:01:56', 1),
	(19, 13, '스리라차 핫 칠리 시즈닝 481g', 9980, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_2620517/26205177524.20210302110914.jpg', '2023-07-26 18:24:35', '2023-07-27 18:01:57', 1),
	(20, 13, '마라탕 소스 재료 하이디라오 마라 소스 요리 만들기 110g', 2200, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_8022068/80220686582.8.jpg', '2023-07-26 18:24:35', '2023-08-03 15:11:36', 1),
	(21, 13, '청수식품 우동 다시 1.8L', 5670, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_7418098/7418098825.20180411103557.jpg', '2023-07-26 18:24:35', '2023-07-27 18:01:59', 1),
	(22, 13, '플라잉구스 스리라차 소스 저칼로리 핫칠리 200ml', 4950, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_8451844/84518448049.115.jpg', '2023-07-26 18:24:35', '2023-08-03 15:11:51', 1),
	(23, 13, '핫칠리 0칼로리 닭가슴살 스리라차 후이펑 소스793g', 16640, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_3087768/30877682359.jpg', '2023-07-26 18:24:35', '2023-08-03 15:56:05', 0),
	(24, 13, '라오간마 라조장 고추 유라죠우 275g 라오깐마 중국 고추 기름 두반장 소스', 2440, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_1034198/10341987371.6.jpg', '2023-07-26 18:24:35', '2023-08-03 15:12:34', 1),
	(25, 16, '반건조생선 볼락 가자미 참돔 열기 민어 임연수 서대박대 고등어 참가자미 조기 구이 말린', 1650, 'https://i.ibb.co/x8HFS2t/image.png', 'https://shopping-phinf.pstatic.net/main_8262024/82620243855.3.jpg', '2023-07-26 18:29:47', '2023-08-03 15:13:04', 1),
	(26, 16, '반건조생선볼락 고등어 열기 민어 박대 서대 임연수 우럭 참돔 가자미 참가자미 구이 말린', 1350, NULL, 'https://shopping-phinf.pstatic.net/main_8231933/82319336566.72.jpg', '2023-07-26 18:29:47', '2023-08-03 15:13:16', 1),
	(27, 16, '가자미밥상 손질 순살 가자미 흰살생선 구이 튀김', 13900, NULL, 'https://shopping-phinf.pstatic.net/main_8232057/82320579052.3.jpg', '2023-07-26 18:29:47', '2023-08-03 15:13:29', 1),
	(28, 16, '반건조 생선 임연수 이면수 양미리 명태 코다리 가자미 열기 볼락 도루묵 조기', 3900, NULL, 'https://shopping-phinf.pstatic.net/main_8233281/82332810228.4.jpg', '2023-07-26 18:29:47', '2023-08-03 15:16:05', 1),
	(29, 16, '군산 박대 서대 반건조 말린생선구이 제수용 생선 10미', 16800, NULL, 'https://shopping-phinf.pstatic.net/main_8528317/85283177378.jpg', '2023-07-26 18:29:47', '2023-08-03 17:56:08', 1),
	(30, 16, '[민어청년] 임자도 자연산 활 민어 민어회 민어전', 40000, NULL, 'https://shopping-phinf.pstatic.net/main_8076730/80767305066.9.jpg', '2023-07-26 18:29:47', '2023-07-26 18:29:47', 1),
	(31, 16, '목포 민어 자연산 민어회 450g 민어부레 뱃살 껍질', 35000, NULL, 'https://shopping-phinf.pstatic.net/main_9974290/9974290462.3.jpg', '2023-07-26 18:29:47', '2023-07-26 18:29:47', 1),
	(32, 16, '특별기획 국내산 반건조 민어 5마리생선구이', 19900, NULL, 'https://shopping-phinf.pstatic.net/main_8500902/85009028143.jpg', '2023-07-26 18:29:47', '2023-08-03 17:56:16', 1),
	(33, 16, '군산 반건조 서대 박대 말린 생선 구이 조림 가자미', 14900, NULL, 'https://shopping-phinf.pstatic.net/main_1105981/11059811344.4.jpg', '2023-07-26 18:29:47', '2023-08-03 17:56:25', 1),
	(34, 16, '커클랜드 틸라피아 1.13kg (아이스박스 무료)', 27490, NULL, 'https://shopping-phinf.pstatic.net/main_1201386/12013863594.jpg', '2023-07-26 18:29:47', '2023-07-26 18:29:47', 1),
	(35, 13, '[문츠바베큐] 문츠BBQ소스 문츠 바베큐소스 330ml', 9100, NULL, 'https://shopping-phinf.pstatic.net/main_8306938/83069380257.1.jpg', '2023-07-26 18:30:31', '2023-08-03 17:56:34', 1),
	(36, 13, '청우 염통 꼬치 소스 닭꼬치 양념 치킨 구이 숯불 바베큐소스 매운 순한맛 비빔', 3600, NULL, 'https://shopping-phinf.pstatic.net/main_8411299/84112995370.jpg', '2023-07-26 18:30:31', '2023-08-03 17:56:41', 1),
	(37, 13, '비비드 키친 저칼로리 저당소스 세트(양념치킨/숯불매콤/데리야끼/바베큐)', 13690, NULL, 'https://shopping-phinf.pstatic.net/main_3994976/39949765646.jpg', '2023-07-26 18:30:31', '2023-08-03 17:56:53', 1),
	(38, 13, '캘러핏 0칼로리 무지방 저지방 샐러드 드레싱 바베큐 소스 300ml CALLOWFIT', 6900, NULL, 'https://shopping-phinf.pstatic.net/main_8249912/82499124871.2.jpg', '2023-07-26 18:30:31', '2023-08-04 17:07:30', 1),
	(39, 13, '스텁스 텍사스 바베큐 스모키 소스 1.02kg 대용량 bbq 스모크 찹 스테이크 폭립 풀드포크 등갈비소스', 9890, NULL, 'https://shopping-phinf.pstatic.net/main_8240666/82406663933.3.jpg', '2023-07-26 18:30:31', '2023-08-03 17:57:18', 1),
	(40, 13, '불스아이 오리지널 바비큐소스 355g', 5780, NULL, 'https://shopping-phinf.pstatic.net/main_8331555/83315557045.jpg', '2023-07-26 18:30:31', '2023-08-03 17:57:26', 1),
	(41, 13, '숯불 바베큐 양념치킨소스 쪽갈비 곱창 불족발 지코바 닭발 양념소스 10kg', 60000, NULL, 'https://shopping-phinf.pstatic.net/main_8559092/85590924745.jpg', '2023-07-26 18:30:31', '2023-08-03 17:57:47', 1),
	(42, 13, 'STUBBS 스텁스 스모키 바베큐 소스 1.02kgX2 [코스트코] 폭립 소스', 18790, NULL, 'https://shopping-phinf.pstatic.net/main_8404617/84046176664.jpg', '2023-07-26 18:30:31', '2023-08-03 17:57:59', 1),
	(43, 13, '콜진 리퀴드 스모크향 바베큐 훈제 훈연 히코리 스모크 소스 472ml', 8900, NULL, 'https://shopping-phinf.pstatic.net/main_8583485/85834854767.jpg', '2023-07-26 18:30:31', '2023-08-03 17:58:06', 1),
	(44, 13, '아이엠소스 시카고숯불소스 1kg 바베큐 불맛 매운꼬치 삼겹살 양념치킨 디핑', 11000, NULL, 'https://shopping-phinf.pstatic.net/main_8350708/83507082147.2.jpg', '2023-07-26 18:30:31', '2023-08-03 17:58:22', 1),
	(45, 17, '강원도 찰옥수수 미백 흑 찰옥수수 홍천 햇옥수수 [발송중]', 9900, NULL, 'https://shopping-phinf.pstatic.net/main_8322622/83226221436.1.jpg', '2023-07-26 18:31:21', '2023-07-26 18:31:21', 1),
	(46, 17, '[친환경 수경재배] 유럽 샐러드 채소 야채 1kg 버터헤드 로메인 상추 쌈채소', 14900, NULL, 'https://shopping-phinf.pstatic.net/main_8401857/84018577995.jpg', '2023-07-26 18:31:21', '2023-08-03 17:58:44', 1),
	(47, 17, '손질 공심채 500G 1KG 모닝글로리 채소 야채', 4500, NULL, 'https://shopping-phinf.pstatic.net/main_8260788/82607882151.jpg', '2023-07-26 18:31:21', '2023-08-03 17:58:53', 1),
	(48, 17, '[언밸런스마켓] 못난이 농산물 꾸러미 과일 야채 채소 박스', 15000, NULL, 'https://shopping-phinf.pstatic.net/main_8421368/84213685322.1.jpg', '2023-07-26 18:31:21', '2023-08-04 17:02:29', 1),
	(49, 17, '루꼴라 500g 와일드루꼴라 로케트루꼴라 효능 요리 샐러드야채채소 루콜라 - 정직한 이웃 농부', 9600, NULL, 'https://shopping-phinf.pstatic.net/main_2957280/29572803476.jpg', '2023-07-26 18:31:21', '2023-08-04 17:02:20', 1),
	(50, 17, '야채왕 청경채4kg 박스 무배', 69900, NULL, 'https://shopping-phinf.pstatic.net/main_8312593/83125937927.2.jpg', '2023-07-26 18:31:21', '2023-08-04 17:02:13', 1),
	(51, 17, '야채왕 비타민 채소 다채 2kg (1.8~2kg)박스', 39900, NULL, 'https://shopping-phinf.pstatic.net/main_8277101/82771014875.jpg', '2023-07-26 18:31:21', '2023-08-04 17:01:43', 1),
	(52, 17, '고들빼기 생 꼬들빼기 1.5kg 여수 노지 꼬들배기', 16900, NULL, 'https://shopping-phinf.pstatic.net/main_8342382/83423820945.jpg', '2023-07-26 18:31:21', '2023-07-26 18:31:21', 1),
	(53, 17, '로메인 로메인상추 통로메인 모듬 쌈채소 특수 야채 2kg', 30900, NULL, 'https://shopping-phinf.pstatic.net/main_8346231/83462311502.jpg', '2023-07-26 18:31:21', '2023-08-04 17:01:55', 1),
	(54, 17, '[부드러운] 호박잎 조선 호박잎나물 쌈', 4500, NULL, 'https://shopping-phinf.pstatic.net/main_8309361/83093614794.jpg', '2023-07-26 18:31:21', '2023-07-26 18:31:21', 1),
	(55, 11, '수제 돼지갈비 맛 양념목살 왕구이 300G', 4600, NULL, 'https://shopping-phinf.pstatic.net/main_8212746/82127461753.7.jpg', '2023-07-26 18:32:07', '2023-07-26 18:32:07', 1),
	(56, 11, '갈비다움 양념 돼지갈비 국내산 한돈 냉장 수제갈비 1.9kg', 36900, NULL, 'https://shopping-phinf.pstatic.net/main_8003650/80036507193.4.jpg', '2023-07-26 18:32:07', '2023-07-26 18:32:07', 1),
	(57, 11, '전통서서갈비 전통서서 돼지양념왕구이 600g x 4팩 총2 4kg', 7870, NULL, 'https://shopping-phinf.pstatic.net/main_3786192/37861920333.20230210202420.jpg', '2023-07-26 18:32:07', '2023-07-26 18:32:07', 1),
	(58, 11, '쫀득쫀득한 돼지꼬리 꼬리족발 300g', 6900, NULL, 'https://shopping-phinf.pstatic.net/main_8265975/82659754234.2.jpg', '2023-07-26 18:32:07', '2023-07-26 18:32:07', 1),
	(59, 11, '마녀 북성로 연탄 불고기 300gx8팩', 4111, NULL, 'https://shopping-phinf.pstatic.net/main_3991466/39914660790.20230509194222.jpg', '2023-07-26 18:32:07', '2023-07-26 18:32:07', 1),
	(60, 11, '양념 돼지갈비 구이 양념육 양념목살 500g 1kg', 6900, NULL, 'https://shopping-phinf.pstatic.net/main_3913304/39133046176.20230404200300.jpg', '2023-07-26 18:32:07', '2023-08-04 17:01:27', 1),
	(61, 11, '돼지 양념 돼지갈비 목살양념구이 700g 캠핑 고기 바베큐 요리', 9800, NULL, 'https://shopping-phinf.pstatic.net/main_8423430/84234301035.4.jpg', '2023-07-26 18:32:07', '2023-07-26 18:32:07', 1),
	(62, 11, '대구 북성로 연탄 불고기 돼지불고기', 4500, NULL, 'https://shopping-phinf.pstatic.net/main_1119399/11193997295.8.jpg', '2023-07-26 18:32:07', '2023-07-26 18:32:07', 1),
	(63, 11, '2팩 뼈없는 돼지갈비 포천이동갈비 돈왕구이 1kg 2팩', 28800, NULL, 'https://shopping-phinf.pstatic.net/main_8347086/83470860610.5.jpg', '2023-07-26 18:32:07', '2023-07-26 18:32:07', 1),
	(64, 11, '가장 맛있는 48시간 숙성 쪽갈비 구이 등갈비 캠핑고기', 15900, NULL, 'https://shopping-phinf.pstatic.net/main_8534542/85345427407.jpg', '2023-07-26 18:32:07', '2023-07-26 18:32:07', 1),
	(65, 18, '캠핑음식 요리 밀키트 할머니가 말아주시는 손말이고기', 13900, NULL, 'https://shopping-phinf.pstatic.net/main_8537516/85375160553.jpg', '2023-07-26 18:32:27', '2023-08-04 17:01:17', 1),
	(66, 18, '캠핑 음식 요리 밀키트 소꼬리 찜 수육', 29900, NULL, 'https://shopping-phinf.pstatic.net/main_8559606/85596066328.jpg', '2023-07-26 18:32:27', '2023-08-04 17:01:12', 1),
	(67, 18, '조조칼국수 동죽칼국수 2 3인분 간편칼국수 택배 캠핑밀키트 물총칼국수 간편조리', 17000, NULL, 'https://shopping-phinf.pstatic.net/main_8302743/83027433275.1.jpg', '2023-07-26 18:32:27', '2023-08-04 17:01:33', 1),
	(68, 18, '햄지 사태스지수육 밀키트 한우육수 기승전골', 23900, NULL, 'https://shopping-phinf.pstatic.net/main_8599595/85995950329.9.jpg', '2023-07-26 18:32:27', '2023-08-04 17:01:22', 1),
	(69, 18, '[밀키트] 문현 전통한우 곱창전골 프리미엄 2-3인분', 22160, NULL, 'https://shopping-phinf.pstatic.net/main_8149989/81499898584.8.jpg', '2023-07-26 18:32:27', '2023-08-04 17:00:58', 1),
	(70, 18, '장사의신 소곱창전골 800g', 10900, NULL, 'https://shopping-phinf.pstatic.net/main_8625769/86257694095.1.jpg', '2023-07-26 18:32:27', '2023-07-26 18:32:27', 1),
	(71, 18, '[충북 괴산] 진한 국물의 깊은맛 흑염소 탕 염소탕 보양식 전골 밀키트', 16000, NULL, 'https://shopping-phinf.pstatic.net/main_8567013/85670139222.jpg', '2023-07-26 18:32:27', '2023-08-04 17:01:04', 1),
	(72, 18, '바로 끓여먹는 해신탕 당일출고 국내산 A급 생닭 해물보양식 복날 몸보신 삼계탕 초복 말복', 29800, NULL, 'https://shopping-phinf.pstatic.net/main_8273689/82736895920.5.jpg', '2023-07-26 18:32:27', '2023-07-26 18:32:27', 1),
	(73, 18, '고양옥 염소홍탕 염소탕 보양식 몸보신 밀키트 여름 캠핑 요리 음식 염소전골 흑염소 진액', 13000, NULL, 'https://shopping-phinf.pstatic.net/main_8341575/83415753763.14.jpg', '2023-07-26 18:32:27', '2023-08-04 17:01:08', 1),
	(74, 18, '프레시지 밀푀유나베 밀키트 2인분 850g', 13900, NULL, 'https://shopping-phinf.pstatic.net/main_3652015/36520154622.20221214170558.jpg', '2023-07-26 18:32:27', '2023-08-04 17:00:51', 1);


INSERT IGNORE  `item_category` (`iitem_category`, `name`)
VALUES (11, '축산물'),
       (13, '소스/드레싱'),
       (16, '수산물'),
       (17, '농산물'),
       (18, '밀키트');

INSERT IGNORE  `item_detail_pic` (`idetail`, `iitem`, `pic`, `created_at`)
VALUES (6, 1, 'https://shop-phinf.pstatic.net/20230707_82/1688717233690Q4wyF_JPEG/2023-07-05-%ED%86%B5%ED%95%A9(%EB%A0%88%EC%8A%A4%ED%84%B0%ED%99%94)_00-B(%EB%A9%94%EC%9D%B8%EC%BB%B7)-White.jpg?type=w860', '2023-07-27 17:49:14'),
	(7, 1, 'https://shop-phinf.pstatic.net/20230707_9/1688711081470OpcqO_JPEG/2023-07-05-%ED%86%B5%ED%95%A9(%EB%A0%88%EC%8A%A4%ED%84%B0%ED%99%94)_00-F(%EC%96%91%EC%9D%98%EB%82%98%EB%9D%BC-%EC%83%81%ED%92%88%EC%86%8C%EA%B0%9C).jpg?type=w860', '2023-07-27 17:49:14'),
	(8, 1, 'https://shop-phinf.pstatic.net/20230727_41/1690420072542etFSx_JPEG/%EC%88%84%EB%8D%94%EB%9E%99_02.jpg?type=w860', '2023-07-27 17:49:14'),
	(9, 1, 'https://shop-phinf.pstatic.net/20230727_267/1690420081407BxGDX_JPEG/%EC%88%84%EB%8D%94%EB%9E%99_03.jpg?type=w860', '2023-07-27 17:49:14'),
	(12, 7, 'https://shop-phinf.pstatic.net/20230517_264/1684295111010qDJNq_GIF/KakaoTalk_20230517_120843241.gif?type=wg860', '2023-08-03 15:57:31'),
	(13, 7, 'https://shop-phinf.pstatic.net/20230505_228/1683294197732KiNAg_GIF/ezgif.com-video-to-gif_(2).gif?type=wg860', '2023-08-03 15:57:31'),
	(14, 7, 'https://shop-phinf.pstatic.net/20230201_244/16752328140812mSnV_JPEG/1.jpg?type=w860', '2023-08-03 15:57:31'),
	(15, 7, 'https://shop-phinf.pstatic.net/20230201_130/1675233745595PTuKQ_JPEG/1.jpg?type=w860', '2023-08-03 15:57:31'),
	(16, 8, ' https://shop-phinf.pstatic.net/20220507_287/1651898800013xVfC4_JPEG/detail_01.jpg?type=w860', '2023-08-03 15:58:03'),
	(17, 8, 'https://shop-phinf.pstatic.net/20220507_8/1651900053368Cg2QX_JPEG/SE-a975f8b8-c6f6-4b55-a471-59ef6e600a57.jpg?type=w860', '2023-08-03 15:58:03'),
	(18, 8, 'https://shop-phinf.pstatic.net/20220507_281/1651898799296kegCp_JPEG/detail_03.jpg?type=w860', '2023-08-03 15:58:03'),
	(19, 8, 'https://shop-phinf.pstatic.net/20220507_140/1651898799375nI8Sq_JPEG/detail_05.jpg?type=w860', '2023-08-03 15:58:03'),
	(20, 9, 'https://shop-phinf.pstatic.net/20201209_163/1607494693105FQjAG_JPEG/%EC%82%BC%EA%B2%B9%EC%82%B4%EA%B5%AC%EC%9D%B4(%EC%98%A4%EC%8A%A4)_1+1.jpg?type=w860', '2023-08-03 15:58:12'),
	(21, 10, 'https://shop-phinf.pstatic.net/20211109_260/1636390226272fcDSK_JPEG/KakaoTalk_20211108_134311425_04.jpg?type=w860', '2023-08-03 15:58:29'),
	(22, 10, 'https://shop-phinf.pstatic.net/20211211_45/1639210045924pBHLw_JPEG/%EC%85%80%EB%A0%89_(2).jpg?type=w860', '2023-08-03 15:58:29'),
	(23, 10, 'https://shop-phinf.pstatic.net/20230609_21/1686283174658kA3Lt_JPEG/002.jpg?type=w860', '2023-08-03 15:58:29'),
	(24, 11, 'https://shop-phinf.pstatic.net/20230509_15/1683638054424jPfWT_JPEG/-%EC%82%BC%EA%B2%B9%EC%82%B4-%EC%83%81%EB%8B%A8_01.jpg?type=w860', '2023-08-03 15:58:44'),
	(25, 11, 'https://shop-phinf.pstatic.net/20230509_129/1683638061504a456f_JPEG/-%EC%82%BC%EA%B2%B9%EC%82%B4-%EC%83%81%EB%8B%A8_02.jpg?type=w860', '2023-08-03 15:58:44'),
	(26, 12, 'https://shop-phinf.pstatic.net/20220205_173/16440202585505JOOR_JPEG/%EB%B0%B0%EC%86%A1%EC%95%88%EB%82%B4_%EB%B3%B5%EC%82%AC.jpg?type=w860', '2023-08-03 15:59:18'),
	(27, 12, 'https://shop-phinf.pstatic.net/20190419_214/101408045_15556529270115MWXx_JPEG/%BB%F3%BC%BC1.jpg?type=w860', '2023-08-03 15:59:18'),
	(28, 12, 'https://shop-phinf.pstatic.net/20220430_19/1651287107243IxX2J_JPEG/%EC%83%81%EC%84%B81.jpg?type=w860', '2023-08-03 15:59:18'),
	(29, 12, 'https://shop-phinf.pstatic.net/20190315_102/101408045_1552625850247EgRq1_JPEG/%BB%F3%BC%BC%BE%E7%B3%E4.jpg?type=w860', '2023-08-03 15:59:18'),
	(30, 12, 'https://shop-phinf.pstatic.net/20190329_267/101408045_1553835715549V6f9X_JPEG/%B9%E8%BC%DB%BE%C8%B3%BB%BB%F3%BC%BC.jpg?type=w860', '2023-08-03 15:59:18'),
	(31, 13, 'https://shop-phinf.pstatic.net/20230112_181/167348536493023NGg_JPEG/%EC%9E%AC%EA%B5%AC%EB%A7%A4%EC%9C%A8.jpg?type=w860', '2023-08-03 15:59:44'),
	(32, 13, 'https://shop-phinf.pstatic.net/20230112_89/1673484695527KJINw_JPEG/%EB%A9%94%EC%9D%B8%EC%9D%B4%EB%AF%B8%EC%A7%80.jpg?type=w860', '2023-08-03 15:59:44'),
	(33, 13, 'https://shop-phinf.pstatic.net/20230112_127/1673485373783C5yYJ_JPEG/8p_%EB%82%98%EB%A7%8C%EC%9D%98-%EC%A3%BC%EB%AC%B8%EC%A0%9C%EC%9E%91.jpg?type=w860', '2023-08-03 15:59:44'),
	(34, 13, 'https://shop-phinf.pstatic.net/20230503_186/16830788589545xqFe_PNG/%EC%A0%9C%EB%AA%A9%EC%9D%84-%EC%9E%85%EB%A0%A5%ED%95%B4%EC%A3%BC%EC%84%B8%EC%9A%94_-001_(6).png?type=w860', '2023-08-03 15:59:44'),
	(35, 13, 'https://shop-phinf.pstatic.net/20230112_287/1673490547641yesFs_JPEG/%EA%B0%88%EB%B3%80%ED%98%84%EC%83%81.jpg?type=w860', '2023-08-03 15:59:44'),
	(36, 14, ' https://shop-phinf.pstatic.net/20210824_296/16297850856438vMzm_JPEG/2.jpg?type=w860', '2023-08-03 16:00:11'),
	(37, 14, ' https://shop-phinf.pstatic.net/20210824_49/1629785111248Hf6W5_JPEG/3.jpg?type=w860', '2023-08-03 16:00:11'),
	(38, 14, ' https://shop-phinf.pstatic.net/20210824_70/1629785128979nkTat_JPEG/4.jpg?type=w860', '2023-08-03 16:00:11'),
	(39, 14, ' https://shop-phinf.pstatic.net/20210825_111/1629869656035dspoe_JPEG/2.jpg?type=w860', '2023-08-03 16:00:11'),
	(40, 15, 'https://ai.esmplus.com/goandup/nongshim/nongshimsauce01.jpg', '2023-08-03 16:00:23'),
	(44, 16, 'https://coudae.s3.ap-northeast-2.amazonaws.com/A00564592/s/1228670/55603284033.png', '2023-08-03 16:00:54'),
	(45, 16, 'https://coudae.s3.ap-northeast-2.amazonaws.com/A00564592/cloud/610/823B%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202023-07-18%20160039.png', '2023-08-03 16:00:54'),
	(46, 17, 'https://thumbnail6.coupangcdn.com/thumbnails/remote/q89/image/vendor_inventory/730b/9568f03f5809cf9df6c169a597d638013fd4a8c400963042a56e866ad32f.jpg', '2023-08-03 16:01:01'),
	(47, 18, 'https://shop-phinf.pstatic.net/20211028_147/1635420211219chd3Q_JPEG/%EB%B0%91%EA%B5%AD%EB%AC%BC%EB%A9%B8%EC%B9%98860detail.jpg?type=w860', '2023-08-03 16:01:07'),
	(48, 19, 'https://gi.esmplus.com/matti01/%EC%8A%A4%EB%A6%AC%EB%9D%BC%EC%B0%A8%ED%95%AB%EC%B9%A0%EB%A6%AC%EC%8B%9C%EC%A6%88%EB%8B%9D481g%EC%9C%84%EC%95%84%EB%9E%98%EB%BA%8C%EC%83%81%EC%84%B8%ED%8E%98%EC%9D%B4%EC%A7%80_20200428.jpg', '2023-08-03 16:01:14'),
	(49, 20, 'https://shop-phinf.pstatic.net/20220913_253/1663036466044E2vfK_JPEG/haidilao_package_notice.jpg?type=w860', '2023-08-03 16:01:32'),
	(50, 20, 'https://shop-phinf.pstatic.net/20211126_139/1637901689687AebzW_JPEG/%EA%B0%84%ED%8E%B8%ED%95%9C%EC%8B%9D_%EB%86%8D%EC%B6%95%EC%95%A1_%EC%83%81%EC%84%B8%EB%B0%B0%EB%84%88_01.jpg?type=w860', '2023-08-03 16:01:32'),
	(51, 20, 'https://shop-phinf.pstatic.net/20220621_171/1655776787547w2vk9_JPEG/%EA%B0%84%ED%8E%B8%ED%95%9C%EC%8B%9D_%EB%86%8D%EC%B6%95%EC%95%A1_%EC%83%81%EC%84%B8%EB%B0%B0%EB%84%88_02.jpg?type=w860', '2023-08-03 16:01:32'),
	(52, 20, 'https://shop-phinf.pstatic.net/20211126_265/1637901689701caibq_JPEG/%EA%B0%84%ED%8E%B8%ED%95%9C%EC%8B%9D_%EB%86%8D%EC%B6%95%EC%95%A1_%EC%83%81%EC%84%B8%EB%B0%B0%EB%84%88_03.jpg?type=w860', '2023-08-03 16:01:32'),
	(53, 21, 'https://shop-phinf.pstatic.net/20200910_7/1599712332405z0pIl_JPEG/good_detail304.jpg', '2023-08-03 16:01:39'),
	(54, 22, ' https://gi.esmplus.com/yourim003/saem/huyfong/bn-intro.jpg', '2023-08-03 16:01:51'),
	(55, 22, 'https://gi.esmplus.com/yourim003/saem/flying-goose/flying-goose.jpg', '2023-08-03 16:01:51'),
	(56, 24, 'https://shop-phinf.pstatic.net/20190926_112/1569482096799I1VlJ_JPEG/%C1%DF%B1%B9%BF%E4%B8%AE%C0%E7%B7%E1_%C6%E4%C0%CC%C1%F6_1.jpg?type=w860', '2023-08-03 16:01:59'),
	(57, 25, 'https://shop-phinf.pstatic.net/20230615_139/1686794660028qJ0dI_PNG/%EB%B0%98%EA%B1%B4%EC%A1%B0%EC%83%9D%EC%84%A0_%ED%8A%B9%EA%B0%80_%EC%9D%B4%EB%B2%A4%ED%8A%B8.png?type=w860', '2023-08-03 16:02:18'),
	(58, 25, 'https://shop-phinf.pstatic.net/20210923_78/1632374431411WlJ0T_PNG/%EB%B0%98%EA%B1%B4%EC%A1%B0%EC%83%9D%EC%84%A0_2.png?type=w860', '2023-08-03 16:02:18'),
	(59, 25, 'https://shop-phinf.pstatic.net/20210923_35/1632374448482sLVlc_PNG/%EB%B0%98%EA%B1%B4%EC%A1%B0_%EC%83%9D%EC%84%A03.png?type=w860', '2023-08-03 16:02:18'),
	(60, 26, 'https://shop-phinf.pstatic.net/20230325_148/1679747759682BcwDF_PNG/%EC%82%AC%EB%B3%B8_-%EC%A0%9C%EB%AA%A9%EC%9D%84-%EC%9E%85%EB%A0%A5%ED%95%B4%EC%A3%BC%EC%84%B8%EC%9A%94_-001_(7).png?type=w860', '2023-08-03 16:02:43'),
	(61, 26, 'https://shop-phinf.pstatic.net/20230621_88/1687317342413feGD8_JPEG/%EC%86%8D%EC%B4%88%EC%82%AC%EC%9D%B4%EB%B2%84_%EB%B0%98%EA%B1%B4%EC%A1%B0%EC%83%9D%EC%84%A0_%EC%9E%84%EC%97%B0%EC%88%98_%EB%B3%BC%EB%9D%BD_%EC%B0%B8%EB%8F%94_%EB%AF%BC%EC%96%B4_%EC%97%B4%EA%B8%B0_%EA%B0%80%EC%9E%90%EB%AF%B8_%EC%9A%B0%EB%9F%AD_%EA%B3%A0%EB%93%B1%EC%96%B4_%EC%96%91%EB%AF%B8%EB%A6%AC_%EB%B0%95%EB%8C%80_%EC%84%9C%EB%8C%80_%EA%B8%88%EC%A1%B0%EA%B8%B0_%EC%95%8C%EB%8F%84%EB%A3%A8%EB%AC%B5%EA%B5%AC%EC%9D%B4_%EB%A7%90%EB%A6%B0%EC%82%BC%EC%B9%98_%EA%B3%A0%EB%93%B1%EC%96%B4_001_1.jpg?type=w860', '2023-08-03 16:02:43'),
	(62, 26, 'https://shop-phinf.pstatic.net/20230224_133/1677211688676bl1pQ_GIF/%EC%86%8D%EC%B4%88_%EB%B0%98%EA%B1%B4%EC%A1%B0%EC%83%9D%EC%84%A0_%EC%9E%84%EC%97%B0%EC%88%98_%EB%B3%BC%EB%9D%BD_%EC%B0%B8%EB%8F%94_%EB%AF%BC%EC%96%B4_%EC%97%B4%EA%B8%B0_%EA%B0%80%EC%9E%90%EB%AF%B8_%EC%9A%B0%EB%9F%AD_%EA%B3%A0%EB%93%B1%EC%96%B4_%EC%96%91%EB%AF%B8%EB%A6%AC_%EB%B0%95%EB%8C%80_%EC%84%9C%EB%8C%80_%EC%A1%B0%EA%B8%B0_%EA%B8%88%EC%A1%B0%EA%B8%B0_%EB%8F%84%EB%A3%A8%EB%AC%B5__%EC%95%8C_%EA%B5%AC%EC%9D%B4_%EB%A7%90%EB%A6%B0_%EC%82%BC%EC%B9%98_%EA%B3%A0%EB%93%B1%EC%96%B4_50.gif?type=wg860', '2023-08-03 16:02:43'),
	(63, 26, 'https://shop-phinf.pstatic.net/20230224_125/1677211688555kt8lV_GIF/%EC%86%8D%EC%B4%88_%EB%B0%98%EA%B1%B4%EC%A1%B0%EC%83%9D%EC%84%A0_%EC%9E%84%EC%97%B0%EC%88%98_%EB%B3%BC%EB%9D%BD_%EC%B0%B8%EB%8F%94_%EB%AF%BC%EC%96%B4_%EC%97%B4%EA%B8%B0_%EA%B0%80%EC%9E%90%EB%AF%B8_%EC%9A%B0%EB%9F%AD_%EA%B3%A0%EB%93%B1%EC%96%B4_%EC%96%91%EB%AF%B8%EB%A6%AC_%EB%B0%95%EB%8C%80_%EC%84%9C%EB%8C%80_%EC%A1%B0%EA%B8%B0_%EA%B8%88%EC%A1%B0%EA%B8%B0_%EB%8F%84%EB%A3%A8%EB%AC%B5__%EC%95%8C_%EA%B5%AC%EC%9D%B4_%EB%A7%90%EB%A6%B0_%EC%82%BC%EC%B9%98_%EA%B3%A0%EB%93%B1%EC%96%B4_51.gif?type=wg860', '2023-08-03 16:02:43'),
	(64, 27, 'https://shop-phinf.pstatic.net/20210120_265/1611109910379gSRmq_JPEG/SE-230ff03a-2da1-42db-a5d7-ca53903da2d2.jpg?type=w860', '2023-08-03 16:02:58'),
	(65, 27, 'https://shop-phinf.pstatic.net/20200316_231/15843439624832aeh9_JPEG/%B0%A1%C0%DA%B9%CC%B9%E4%BB%F3_%BB%F3%BC%BC%C6%E4%C0%CC%C1%F6200316-1-02.jpg?type=w860', '2023-08-03 16:02:58'),
	(66, 27, 'https://shop-phinf.pstatic.net/20230621_52/1687335214615kfkfi_JPEG/%EA%B0%80%EC%9E%90%EB%AF%B8%EB%B0%A5%EC%83%81_%EC%83%81%EC%84%B8%ED%8E%98%EC%9D%B4%EC%A7%80200316-1-03.jpg?type=w860', '2023-08-03 16:02:58'),
	(67, 28, 'https://shop-phinf.pstatic.net/20200713_136/1594568579354hddow_JPEG/%EB%AA%85%EC%A0%95%EC%96%B4%EA%B0%80_%EB%A9%94%EC%9D%B8_04.jpg?type=w860', '2023-08-03 16:03:11'),
	(68, 28, 'https://shop-phinf.pstatic.net/20200713_84/1594568579333eXwf2_JPEG/%EB%AA%85%EC%A0%95%EC%96%B4%EA%B0%80_%EB%A9%94%EC%9D%B8_05.jpg?type=w860', '2023-08-03 16:03:11'),
	(69, 28, 'https://shop-phinf.pstatic.net/20200713_59/1594569207430KaPyY_JPEG/%EB%AA%85%EC%A0%95%EC%96%B4%EA%B0%80_%EB%A9%94%EC%9D%B8_43.jpg?type=w860', '2023-08-03 16:03:11'),
	(70, 2, 'https://shop-phinf.pstatic.net/20230707_82/1688717233690Q4wyF_JPEG/2023-07-05-%ED%86%B5%ED%95%A9(%EB%A0%88%EC%8A%A4%ED%84%B0%ED%99%94)_00-B(%EB%A9%94%EC%9D%B8%EC%BB%B7)-White.jpg?type=w860\r\n', '2023-08-03 16:38:46'),
	(71, 2, 'https://shop-phinf.pstatic.net/20230707_82/1688717233690Q4wyF_JPEG/2023-07-05-%ED%86%B5%ED%95%A9(%EB%A0%88%EC%8A%A4%ED%84%B0%ED%99%94)_00-B(%EB%A9%94%EC%9D%B8%EC%BB%B7)-White.jpg?type=w860\r\n', '2023-08-03 16:40:14'),
	(72, 3, 'https://shop-phinf.pstatic.net/20230727_267/1690420081407BxGDX_JPEG/%EC%88%84%EB%8D%94%EB%9E%99_03.jpg?type=w860\r\n		  ', '2023-08-03 16:40:14');


INSERT IGNORE  `order` (`iorder`, `iuser`, `address`, `address_detail`, `total_price`, `shipping_price`, `shipping_memo`,
                     `created_at`, `updated_at`, `del_yn`)
VALUES (1, 1, '서울특별시 마포구 상암동 495-81', NULL, 40000, 3000, '맛있는고기', '2023-07-25 17:53:13', '2023-07-26 19:42:59', 1),
       (2, 1, '무슨무슨주소', NULL, 40000, 3000, NULL, '2023-07-26 20:01:29', '2023-07-26 20:01:29', 1),
       (3, 2, '무슨무슨주소', NULL, 40000, 3000, '배송배송', '2023-07-26 20:35:37', '2023-07-26 20:35:37', 1),
       (6, 1, '무슨무슨주소', NULL, 401000, 3000, '친절한배송', '2023-07-28 13:04:42', '2023-07-28 13:04:42', 1),
(11, 1, 'string', NULL, 2, 4, NULL, '2023-08-07 14:52:51', '2023-08-07 14:52:51', 1),
	(12, 3, 'string', NULL, 0, 0, NULL, '2023-08-08 18:01:02', '2023-08-08 18:01:02', 1);

INSERT IGNORE  `order_item` (`iorder`, `iitem`, `price`, `quantity`, `total_price`, `refund`, `del_yn`)
VALUES (1, 1, 30000, 1, 30000, 0, 1),
       (1, 2, 5000, 2, 10000, 0, 1),
       (2, 4, 39800, 2, 79600, 0, 1),
    (11, 10, 50000, 22, 333, 0, 1),
	(12, 1, 16500, 0, 0, 0, 1);

INSERT IGNORE  `shipping_address` (`iaddress`, `iuser`, `address`, `address_detail`, `name`, `phone`)
VALUES (1, 1, '싸다구동동동', NULL, '신형만', '01011002200');

INSERT IGNORE  `user` (`iuser`, `user_id`, `password`, `email`, `name`, `birth_date`, `phone`, `gender`, `user_address`,
                    `user_address_detail`, `role`, `pic`, `created_at`, `updated_at`, `del_yn`)
VALUES (1, '1', '{bcrypt}$2a$10$jEI8vsdhg8Fb6cB8mmdhh.X/v4kvXxcoh5T2TEww1wYQ.PBy0CSNm', 'newzoo@gmail.com', '신형주',
        '1995-11-23', '01021625328', 0, '서울특별시 마포구 상암동 495-81', NULL, 'ROLE_ADMIN', 'asdf.jpg', '2023-07-24 15:47:27',
        '2023-07-27 14:29:25', 1),
       (2, '2', '{bcrypt}$2a$10$jEI8vsdhg8Fb6cB8mmdhh.X/v4kvXxcoh5T2TEww1wYQ.PBy0CSNm', 'rlahfld54@gmail.com', '황주은',
        '1998-06-12', '01025521540', 1, '경기 남양주시 화도읍 북한강로 1630-18', NULL, 'ROLE_USER', 'qwer.jpg',
        '2023-07-24 15:53:48', '2023-07-27 14:29:23', 1),
       (3, '3', '{bcrypt}$2a$10$jEI8vsdhg8Fb6cB8mmdhh.X/v4kvXxcoh5T2TEww1wYQ.PBy0CSNm', 'haun0@naver.com', '장하은',
        '1991-12-16', '01062931624', 1, '충남 공주시 반포면 동학사1로 46', NULL, 'ROLE_USER', '123.jpg', '2023-07-24 15:53:48',
        '2023-07-27 14:29:21', 1),
       (4, '4', '{bcrypt}$2a$10$jEI8vsdhg8Fb6cB8mmdhh.X/v4kvXxcoh5T2TEww1wYQ.PBy0CSNm', 'dlawjdghbn@naver.com', '임정호',
        '1998-06-05', '01092158817', 0, '경기 가평군 가평읍 자라섬로 60', NULL, 'ROLE_USER', NULL, '2023-07-24 15:53:48',
        '2023-07-27 14:29:18', 1),
    (7, '7', '{bcrypt}$2a$10$aPFGifea7LEEOhWlUQA/vOxaUxPVWxFwrYm9qa0FAZB1IH0Vrm97C', 'rlahfld54@naver.com', '황주은',
    '1998-06-12', '01025521549', 1, '경기 남양주시 화도읍 북한강로 1630-18', NULL, 'ROLE_USER', 'qwer.jpg',
    '2023-07-24 15:53:48', '2023-07-27 14:29:23', 1);

    SET foreign_key_checks = 1;