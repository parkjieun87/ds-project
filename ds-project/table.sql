--------------------------------------------------------
--  파일이 생성됨 - 월요일-3월-18-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CHAT_MESSAGE
--------------------------------------------------------

  CREATE TABLE "CHAT_MESSAGE" 
   (	"MESSAGE_NO" NUMBER, 
	"MEMBER_ID" VARCHAR2(40), 
	"ROOM_NO" NUMBER, 
	"MESSAGE_BODY" VARCHAR2(300), 
	"MESSAGE_TIME" DATE DEFAULT sysdate
   )
--------------------------------------------------------
--  DDL for Table CHAT_VISIT
--------------------------------------------------------

  CREATE TABLE "CHAT_VISIT" 
   (	"MEMBER_ID" VARCHAR2(40), 
	"ROOM_NO" NUMBER
   )
--------------------------------------------------------
--  DDL for Table ENTRY
--------------------------------------------------------

  CREATE TABLE "ENTRY" 
   (	"ENTRY_NO" NUMBER, 
	"MATCH_NO" NUMBER, 
	"TEAM_NO" NUMBER, 
	"MEMBER_ID" VARCHAR2(40), 
	"TEAM_TYPE" VARCHAR2(16)
   )
--------------------------------------------------------
--  DDL for Table GROUND
--------------------------------------------------------

  CREATE TABLE "GROUND" 
   (	"GROUND_NO" NUMBER, 
	"GROUND_BASIC_ADDR" VARCHAR2(150), 
	"GROUND_DETAIL_ADDR" VARCHAR2(150), 
	"GROUND_SHOWER" VARCHAR2(30), 
	"GROUND_PARK" VARCHAR2(30), 
	"GROUND_SIZE" VARCHAR2(30), 
	"GROUND_NAME" VARCHAR2(150), 
	"GROUND_PRICE" NUMBER, 
	"GROUND_ADDR" VARCHAR2(100)
   )
--------------------------------------------------------
--  DDL for Table GROUND_IMAGE
--------------------------------------------------------

  CREATE TABLE "GROUND_IMAGE" 
   (	"IMG_NO" NUMBER, 
	"GROUND_NO" NUMBER
   )
--------------------------------------------------------
--  DDL for Table IMG
--------------------------------------------------------

  CREATE TABLE "IMG" 
   (	"IMG_NO" NUMBER, 
	"IMG_NAME" VARCHAR2(100), 
	"IMG_TYPE" VARCHAR2(60), 
	"IMG_SIZE" NUMBER
   )
--------------------------------------------------------
--  DDL for Table MAIN_IMG
--------------------------------------------------------

  CREATE TABLE "MAIN_IMG" 
   (	"MAIN_NO" NUMBER, 
	"IMG_NO" NUMBER, 
	"MAIN_TITLE" VARCHAR2(100)
   )
--------------------------------------------------------
--  DDL for Table MAIN_IMG_CONNECT
--------------------------------------------------------

  CREATE TABLE "MAIN_IMG_CONNECT" 
   (	"IMG_NO" NUMBER, 
	"MAIN_NO" NUMBER
   )
--------------------------------------------------------
--  DDL for Table MATCH
--------------------------------------------------------

  CREATE TABLE "MATCH" 
   (	"MATCH_NO" NUMBER, 
	"MATCH_CITY" VARCHAR2(30), 
	"MATCH_LOCATION" VARCHAR2(30), 
	"MATCH_DATE" DATE, 
	"MATCH_TIME" VARCHAR2(60), 
	"MATCH_AGE" VARCHAR2(20), 
	"MATCH_SIZE" VARCHAR2(20), 
	"MATCH_STATUS" VARCHAR2(12) DEFAULT '모집중', 
	"TEAM_NO" NUMBER, 
	"OPPOSING_NO" NUMBER, 
	"MATCH_BOARD_NO" NUMBER
   )
--------------------------------------------------------
--  DDL for Table MATCH_BOARD
--------------------------------------------------------

  CREATE TABLE "MATCH_BOARD" 
   (	"MATCH_BOARD_NO" NUMBER, 
	"MEMBER_ID" VARCHAR2(20), 
	"MATCH_BOARD_CONTENT" VARCHAR2(3000), 
	"MATCH_BOARD_TIME" DATE DEFAULT SYSDATE, 
	"MATCH_BOARD_READ" NUMBER DEFAULT 0, 
	"MATCH_BOARD_CITY" VARCHAR2(20), 
	"MATCH_BOARD_LOCATION" VARCHAR2(20), 
	"MATCH_BOARD_DATE" DATE, 
	"MATCH_BOARD_TIME2" VARCHAR2(20), 
	"MATCH_BOARD_AGE" VARCHAR2(20), 
	"MATCH_BOARD_SIZE" VARCHAR2(20), 
	"MATCH_BOARD_TITLE" VARCHAR2(100), 
	"MATCH_BOARD_STATUS" VARCHAR2(20) DEFAULT '모집중', 
	"MATCH_BOARD_VIDEO" NUMBER
   )
--------------------------------------------------------
--  DDL for Table MATCH_RECORD
--------------------------------------------------------

  CREATE TABLE "MATCH_RECORD" 
   (	"RECORD_NO" NUMBER, 
	"MATCH_NO" NUMBER, 
	"HOME_NO" NUMBER, 
	"AWAY_NO" NUMBER, 
	"HOME_SCORE" NUMBER DEFAULT 0, 
	"AWAY_SCORE" NUMBER DEFAULT 0
   )
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"MEMBER_ID" VARCHAR2(40), 
	"MEMBER_PW" VARCHAR2(80), 
	"MEMBER_NAME" VARCHAR2(40), 
	"MEMBER_LEVEL" VARCHAR2(12) DEFAULT '일반회원', 
	"MEMBER_EMAIL" VARCHAR2(100), 
	"MEMBER_GENDER" VARCHAR2(30), 
	"MEMBER_MANNER" NUMBER DEFAULT 36.5, 
	"MEMBER_BIRTH" CHAR(10), 
	"IMG_NO" NUMBER
   )
--------------------------------------------------------
--  DDL for Table PAYMENT
--------------------------------------------------------

  CREATE TABLE "PAYMENT" 
   (	"PAYMENT_NO" NUMBER, 
	"PAYMENT_TID" VARCHAR2(20), 
	"PAYMENT_NAME" VARCHAR2(300), 
	"RESERVE_NO" NUMBER, 
	"PAYMENT_TOTAL" NUMBER, 
	"PAYMENT_REMAIN" NUMBER, 
	"PAYMENT_TIME" DATE DEFAULT sysdate, 
	"MEMBER_ID" VARCHAR2(20), 
	"METHOD_TYPE" VARCHAR2(20)
   )
--------------------------------------------------------
--  DDL for Table RESERVE
--------------------------------------------------------

  CREATE TABLE "RESERVE" 
   (	"RESERVE_NO" NUMBER, 
	"MEMBER_ID" VARCHAR2(40), 
	"GROUND_NO" NUMBER, 
	"RESERVE_STATUS" VARCHAR2(30), 
	"SCHEDULE_NO" NUMBER, 
	"RESERVE_DATE" DATE
   )
--------------------------------------------------------
--  DDL for Table SCHEDULE
--------------------------------------------------------

  CREATE TABLE "SCHEDULE" 
   (	"SCHEDULE_NO" NUMBER, 
	"GROUND_NO" NUMBER, 
	"SCHEDULE_START" VARCHAR2(40), 
	"SCHEDULE_END" VARCHAR2(40)
   )
--------------------------------------------------------
--  DDL for Table TEAM
--------------------------------------------------------

  CREATE TABLE "TEAM" 
   (	"TEAM_NO" NUMBER, 
	"TEAM_NAME" VARCHAR2(30), 
	"TEAM_DAY" VARCHAR2(9), 
	"TEAM_TIME" VARCHAR2(30), 
	"TEAM_CITY" VARCHAR2(30), 
	"TEAM_LOCATION" VARCHAR2(30), 
	"TEAM_GENDER" VARCHAR2(12), 
	"TEAM_AGE" VARCHAR2(12), 
	"TEAM_WIN" NUMBER DEFAULT 0, 
	"TEAM_LOSE" NUMBER DEFAULT 0, 
	"TEAM_DATE" DATE DEFAULT SYSDATE, 
	"TEAM_LEADER" VARCHAR2(40), 
	"TEAM_INFO" VARCHAR2(150), 
	"TEAM_READ" NUMBER DEFAULT 0, 
	"TEAM_UPDATE" DATE DEFAULT sysdate, 
	"IMG_NO" NUMBER
   )
--------------------------------------------------------
--  DDL for Table TEAM_MEMBER
--------------------------------------------------------

  CREATE TABLE "TEAM_MEMBER" 
   (	"TEAM_MEMBER_NO" NUMBER, 
	"MEMBER_ID" VARCHAR2(40), 
	"TEAM_NO" NUMBER, 
	"TEAM_MEMBER_LEVEL" VARCHAR2(12) DEFAULT '일반회원'
   )
--------------------------------------------------------
--  DDL for Table WAITING
--------------------------------------------------------

  CREATE TABLE "WAITING" 
   (	"WAITING_NO" NUMBER, 
	"MEMBER_ID" VARCHAR2(40), 
	"TEAM_NO" NUMBER, 
	"MEMBER_STATUS" VARCHAR2(15) DEFAULT '대기중', 
	"INTRODUCTION" VARCHAR2(300)
   )
REM INSERTING into CHAT_MESSAGE
SET DEFINE OFF;
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (151,'testuser1',218,'{"memberId":"testuser1","content":"ㅎㅇ","time":1686304598850}',to_date('23/06/09','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (152,'testuser5',218,'{"memberId":"testuser5","content":"hi","time":1686318962880}',to_date('23/06/09','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (161,'testuser1',218,'{"memberId":"testuser1","content":"hi","memberName":"손푸름","time":1686534678072}',to_date('23/06/12','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (150,'testuser1',216,'{"memberId":"testuser1","content":"ㅋㅋ","time":1686303812728}',to_date('23/06/09','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (162,'testuser14',219,'{"memberId":"testuser14","content":"gg","memberName":"테스터십사","time":1686534782504}',to_date('23/06/12','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (163,'testuser1',247,'{"memberId":"testuser1","content":"하이","memberName":"손푸름","time":1686541384044}',to_date('23/06/12','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (164,'testuser10',247,'{"memberId":"testuser10","content":"ㅎㅇㅎㅇ","memberName":"테스터십","time":1686541405445}',to_date('23/06/12','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (165,'testuser14',247,'{"memberId":"testuser14","content":"ㅎㅇㅎㅇ","memberName":"테스터십사","time":1686541432905}',to_date('23/06/12','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (181,'testuser5',186,'{"memberId":"testuser5","content":"휴","memberName":"내가접수","time":1686551598209}',to_date('23/06/12','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (182,'testuser11',268,'{"memberId":"testuser11","content":"ㅎㅇ","memberName":"테스터십일","time":1686567483187}',to_date('23/06/12','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (148,'testuser10',216,'{"memberId":"testuser10","content":"test","time":1686124337709}',to_date('23/06/07','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (149,'testuser888',219,'{"memberId":"testuser888","content":"ㅅㄷㄴㅅ","time":1686215356561}',to_date('23/06/08','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (183,'testuser5',268,'{"memberId":"testuser5","content":"종건이형 바보","memberName":"내가접수","time":1686567489352}',to_date('23/06/12','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (184,'testuser11',268,'{"memberId":"testuser11","content":"종권이형","memberName":"테스터십일","time":1686567495325}',to_date('23/06/12','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (185,'testuser11',268,'{"memberId":"testuser11","content":"뭘보세요","memberName":"테스터십일","time":1686567496512}',to_date('23/06/12','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (199,'testuser5',328,'{"memberId":"testuser5","content":"안녕 태호","memberName":"내가접수","time":1686623803960}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (200,'testuser5',328,'{"memberId":"testuser5","content":"안녕","memberName":"내가접수","time":1686623826864}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (188,'testuser11',268,'{"memberId":"testuser11","content":"안녕하세요","memberName":"테스터십일","time":1686568134898}',to_date('23/06/12','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (189,'testuser11',268,'{"memberId":"testuser11","content":"반갑습니다","memberName":"테스터십일","time":1686568138006}',to_date('23/06/12','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (190,'testuser11',268,'{"memberId":"testuser11","content":"안녕하세요","memberName":"테스터십일","time":1686568156084}',to_date('23/06/12','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (191,'testuser5',268,'{"memberId":"testuser5","content":"네네","memberName":"내가접수","time":1686568168839}',to_date('23/06/12','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (192,'testuser5',268,'{"memberId":"testuser5","content":"안녕하세요","memberName":"내가접수","time":1686568170495}',to_date('23/06/12','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (193,'testuser5',268,'{"memberId":"testuser5","content":"반갑습니다","memberName":"내가접수","time":1686568173003}',to_date('23/06/12','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (194,'testuser11',268,'{"memberId":"testuser11","content":"잘 부탁드립니다","memberName":"테스터십일","time":1686568197582}',to_date('23/06/12','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (195,'testuser5',268,'{"memberId":"testuser5","content":"네네","memberName":"내가접수","time":1686568200475}',to_date('23/06/12','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (196,'testuser5',218,'{"memberId":"testuser5","content":"뭐야","memberName":"내가접수","time":1686568344172}',to_date('23/06/12','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (197,'testuser5',274,'{"memberId":"testuser5","content":"ㅎㅇ","memberName":"내가접수","time":1686623360270}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (198,'testuser20',328,'{"memberId":"testuser20","content":"반갑습니다","memberName":"이십테","time":1686623800917}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (201,'testuser5',328,'{"memberId":"testuser5","content":"태호","memberName":"내가접수","time":1686623827752}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (202,'testuser20',328,'{"memberId":"testuser20","content":"안녕하세요","memberName":"이십테","time":1686623826294}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (203,'testuser5',328,'{"memberId":"testuser5","content":"태호야","memberName":"내가접수","time":1686623830120}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (204,'testuser5',328,'{"memberId":"testuser5","content":"이게무슨일ㅇ이야!!!","memberName":"내가접수","time":1686623837847}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (205,'testuser20',273,'{"memberId":"testuser20","content":"dd","memberName":"이십테","time":1686623870430}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (206,'testuser5',273,'{"memberId":"testuser5","content":"dd","memberName":"내가접수","time":1686623872271}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (207,'testuser5',328,'{"memberId":"testuser5","content":"dd","memberName":"내가접수","time":1686623893806}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (208,'testuser5',328,'{"memberId":"testuser5","content":"ㅇㅇㅇ","memberName":"내가접수","time":1686623899320}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (209,'testuser5',328,'{"memberId":"testuser5","content":"dd","memberName":"내가접수","time":1686623902109}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (210,'testuser5',328,'{"memberId":"testuser5","content":"안녕","memberName":"내가접수","time":1686623925831}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (211,'testuser5',328,'{"memberId":"testuser5","content":"안녕","memberName":"내가접수","time":1686623928536}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (212,'testuser20',328,'{"memberId":"testuser20","content":"dk","memberName":"이십테","time":1686623929917}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (213,'testuser20',328,'{"memberId":"testuser20","content":"아","memberName":"이십테","time":1686623930751}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (214,'testuser5',328,'{"memberId":"testuser5","content":"아아ㅏㅇ","memberName":"내가접수","time":1686623931319}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (215,'testuser20',328,'{"memberId":"testuser20","content":"뭐야ㅐ","memberName":"이십테","time":1686623931495}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (216,'testuser24',328,'{"memberId":"testuser24","content":"ddd","memberName":"이사테","time":1686623994983}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (217,'testuser5',328,'{"memberId":"testuser5","content":"ㅋㅋㅋ","memberName":"내가접수","time":1686623998376}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (218,'testuser24',328,'{"memberId":"testuser24","content":"dddd","memberName":"이사테","time":1686624004215}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (219,'testuser5',328,'{"memberId":"testuser5","content":"ㅁㄴㅇㄹ","memberName":"내가접수","time":1686624180648}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (220,'testuser20',328,'{"memberId":"testuser20","content":"아","memberName":"이십테","time":1686624183719}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (221,'testuser5',328,'{"memberId":"testuser5","content":"ㅁㄴㅇㄹ","memberName":"내가접수","time":1686624203577}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (222,'testuser20',328,'{"memberId":"testuser20","content":"이게","memberName":"이십테","time":1686624491529}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (223,'testuser20',328,'{"memberId":"testuser20","content":"무슨일이지","memberName":"이십테","time":1686624493272}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (224,'testuser1',328,'{"memberId":"testuser1","content":"뭐가","memberName":"손푸름","time":1686624497135}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (225,'testuser1',328,'{"memberId":"testuser1","content":"문제야","memberName":"손푸름","time":1686624497912}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (226,'testuser1',328,'{"memberId":"testuser1","content":"ㅇㅇ","memberName":"손푸름","time":1686624520991}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (227,'testuser20',328,'{"memberId":"testuser20","content":"ㅇㅇ","memberName":"이십테","time":1686624522743}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (228,'testuser24',328,'{"memberId":"testuser24","content":"asdf","memberName":"이사테","time":1686624563583}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (229,'testuser1',328,'{"memberId":"testuser1","content":"ㅇㅇ","memberName":"손푸름","time":1686624576687}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (230,'testuser1',274,'{"memberId":"testuser1","content":"ㅎㅎㅎ","memberName":"손푸름","time":1686624662280}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (231,'testuser24',328,'{"memberId":"testuser24","content":"asdf","memberName":"이사테","time":1686624679776}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (232,'testuser24',328,'{"memberId":"testuser24","content":"ㅁㄴ어라ㅣㄴㅁㅇㄹ","memberName":"이사테","time":1686624734945}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (233,'testuser24',328,'{"memberId":"testuser24","content":"ㄴㅇㄻㄴㅇㄹ","memberName":"이사테","time":1686624750393}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (234,'testuser24',328,'{"memberId":"testuser24","content":"ㄴㅁㅇㄹㄴㅁㅇㄹ","memberName":"이사테","time":1686624763360}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (235,'testuser24',328,'{"memberId":"testuser24","content":"ㅁㄴㅇㄹ","memberName":"이사테","time":1686624788969}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (236,'testuser24',328,'{"memberId":"testuser24","content":"1ㄹ11111","memberName":"이사테","time":1686624812785}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (237,'testuser24',328,'{"memberId":"testuser24","content":"22222","memberName":"이사테","time":1686624877896}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (238,'testuser24',328,'{"memberId":"testuser24","content":"3333","memberName":"이사테","time":1686624908696}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (239,'testuser24',328,'{"memberId":"testuser24","content":"asdfsadf","memberName":"이사테","time":1686624956585}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (240,'testuser24',328,'{"memberId":"testuser24","content":"sadfsadf","memberName":"이사테","time":1686624962776}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (241,'testuser24',328,'{"memberId":"testuser24","content":"lskadfjls","memberName":"이사테","time":1686624964168}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (242,'testuser24',328,'{"memberId":"testuser24","content":"ㅋㅋㅋㅋ","memberName":"이사테","time":1686627663308}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (243,'testuser24',328,'{"memberId":"testuser24","content":"ㅁㄴ이라ㅓㅣㅏㅈㅁㄷ기ㅏㅁㅈㄷㄹ","memberName":"이사테","time":1686627669618}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (244,'testuser24',328,'{"memberId":"testuser24","content":"ㅁ지다ㅜ림다ㅜㄹ","memberName":"이사테","time":1686627670706}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (245,'testuser24',328,'{"memberId":"testuser24","content":"몰?루","memberName":"이사테","time":1686627672081}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (246,'testuser20',271,'{"memberId":"testuser20","content":"ikkkkk","memberName":"이십테","time":1686628266917}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (247,'testuser20',271,'{"memberId":"testuser20","content":"kkkkkkk","memberName":"이십테","time":1686628268749}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (248,'testuser20',273,'{"memberId":"testuser20","content":"kkkkk","memberName":"이십테","time":1686628278869}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (249,'testuser20',328,'{"memberId":"testuser20","content":"kkkkkk","memberName":"이십테","time":1686628283389}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (250,'testuser20',328,'{"memberId":"testuser20","content":"kkkkk","memberName":"이십테","time":1686628287990}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (251,'testuser20',271,'{"memberId":"testuser20","content":"우와","memberName":"이십테","time":1686628309265}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (252,'testuser23',273,'{"memberId":"testuser23","content":"ㅎㅇ","memberName":"조아쒀","time":1686628433925}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (253,'testuser23',272,'{"memberId":"testuser23","content":"하이하이","memberName":"이삼테","time":1686628438359}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (254,'testuser23',272,'{"memberId":"testuser23","content":"채팅 할 사람","memberName":"이삼테","time":1686628441080}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (255,'testuser20',273,'{"memberId":"testuser20","content":"ㅇㅎㅇㅎㅇㅎㅇㅎ","memberName":"이십테","time":1686628447561}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (256,'testuser20',273,'{"memberId":"testuser20","content":"ㅇㅇ","memberName":"이십테","time":1686628454433}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (257,'testuser23',273,'{"memberId":"testuser23","content":"ㅇ_ㅇ","memberName":"조아쒀","time":1686628456342}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (258,'testuser20',328,'{"memberId":"testuser20","content":"ㅎㅇ","memberName":"이십테","time":1686628461572}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (259,'testuser23',273,'{"memberId":"testuser23","content":"모가","memberName":"조아쒀","time":1686628463276}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (260,'testuser20',328,'{"memberId":"testuser20","content":"오","memberName":"이십테","time":1686628464238}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (261,'testuser23',273,'{"memberId":"testuser23","content":"하이","memberName":"이삼테","time":1686628466218}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (262,'testuser20',328,'{"memberId":"testuser20","content":"ㄷㄷ","memberName":"이십테","time":1686628467214}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (263,'testuser23',273,'{"memberId":"testuser23","content":"하이","memberName":"이삼테","time":1686628467265}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (264,'testuser23',273,'{"memberId":"testuser23","content":"누구야","memberName":"조아쒀","time":1686628473725}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (265,'testuser23',273,'{"memberId":"testuser23","content":"동접","memberName":"조아쒀","time":1686628475093}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (266,'testuser23',273,'{"memberId":"testuser23","content":"누구야","memberName":"이삼테","time":1686628478452}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (267,'testuser23',273,'{"memberId":"testuser23","content":"너 누구야","memberName":"이삼테","time":1686628480836}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (268,'testuser23',273,'{"memberId":"testuser23","content":"--","memberName":"조아쒀","time":1686628482205}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (269,'testuser23',273,'{"memberId":"testuser23","content":"who are you","memberName":"이삼테","time":1686628486051}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (270,'testuser20',273,'{"memberId":"testuser20","content":"뉘기야","memberName":"이십테","time":1686628488202}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (271,'testuser23',273,'{"memberId":"testuser23","content":"?????","memberName":"조아쒀","time":1686628493492}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (272,'testuser23',273,'{"memberId":"testuser23","content":"콱 씨","memberName":"이삼테","time":1686628495125}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (273,'testuser23',273,'{"memberId":"testuser23","content":"주현이니","memberName":"조아쒀","time":1686628503045}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (274,'testuser23',273,'{"memberId":"testuser23","content":"누구야","memberName":"이삼테","time":1686628507838}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (275,'testuser20',273,'{"memberId":"testuser20","content":"알림 오나요","memberName":"이십테","time":1686628508889}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (276,'testuser23',273,'{"memberId":"testuser23","content":"ㅇ-ㅇ","memberName":"조아쒀","time":1686628512739}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (277,'testuser23',273,'{"memberId":"testuser23","content":"조아쒀!","memberName":"이삼테","time":1686628518637}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (278,'testuser23',273,'{"memberId":"testuser23","content":"안옴","memberName":"조아쒀","time":1686628525325}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (279,'testuser20',328,'{"memberId":"testuser20","content":"ㅇ","memberName":"이십테","time":1686628528058}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (280,'testuser20',328,'{"memberId":"testuser20","content":"ㅇ","memberName":"이십테","time":1686628528613}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (281,'testuser23',273,'{"memberId":"testuser23","content":"만족스럽다","memberName":"이삼테","time":1686628551852}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (282,'testuser20',273,'{"memberId":"testuser20","content":"ㅎㅇ","memberName":"이십테","time":1686629078311}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (283,'testuser20',273,'{"memberId":"testuser20","content":"거기 누구없어요?","memberName":"이십테","time":1686629117685}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (284,'testuser20',328,'{"memberId":"testuser20","content":"a","memberName":"이름변경","time":1686629218934}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (285,'testuser20',328,'{"memberId":"testuser20","content":"a","memberName":"이름변경","time":1686629219830}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (286,'testuser20',328,'{"memberId":"testuser20","content":"a","memberName":"이름변경","time":1686629220311}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (287,'testuser20',328,'{"memberId":"testuser20","content":"a","memberName":"이름변경","time":1686629220687}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (288,'testuser20',328,'{"memberId":"testuser20","content":"a","memberName":"이름변경","time":1686629220951}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (289,'testuser20',328,'{"memberId":"testuser20","content":"a","memberName":"이름변경","time":1686629222103}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (290,'testuser20',328,'{"memberId":"testuser20","content":"a","memberName":"이름변경","time":1686629222582}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (291,'testuser20',328,'{"memberId":"testuser20","content":"a","memberName":"이름변경","time":1686629223327}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (292,'testuser20',273,'{"memberId":"testuser20","content":"s","memberName":"이름변경","time":1686629231150}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (293,'testuser22',272,'{"memberId":"testuser22","content":"ㅎㅇㅎㅇ","memberName":"이이테","time":1686629231651}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (294,'testuser20',273,'{"memberId":"testuser20","content":"s","memberName":"이름변경","time":1686629231719}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (295,'testuser20',273,'{"memberId":"testuser20","content":"s","memberName":"이름변경","time":1686629231982}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (296,'testuser20',273,'{"memberId":"testuser20","content":"s","memberName":"이름변경","time":1686629233303}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (297,'testuser20',273,'{"memberId":"testuser20","content":"s","memberName":"이름변경","time":1686629233775}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (298,'testuser22',272,'{"memberId":"testuser22","content":"ㅎㅇㅎㅇ","memberName":"이이테","time":1686629234196}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (299,'testuser20',273,'{"memberId":"testuser20","content":"s","memberName":"이름변경","time":1686629234670}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (300,'testuser20',273,'{"memberId":"testuser20","content":"ㄴ","memberName":"이십테","time":1686629234959}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (301,'testuser20',273,'{"memberId":"testuser20","content":"ㄴ","memberName":"이십테","time":1686629235839}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (302,'testuser20',273,'{"memberId":"testuser20","content":"s","memberName":"이름변경","time":1686629236007}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (303,'testuser20',273,'{"memberId":"testuser20","content":"s","memberName":"이름변경","time":1686629236526}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (304,'testuser20',273,'{"memberId":"testuser20","content":"s","memberName":"이름변경","time":1686629236694}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (305,'testuser20',273,'{"memberId":"testuser20","content":"s","memberName":"이름변경","time":1686629236918}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (306,'testuser20',273,'{"memberId":"testuser20","content":"s","memberName":"이름변경","time":1686629237870}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (307,'testuser20',273,'{"memberId":"testuser20","content":"s","memberName":"이름변경","time":1686629238758}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (308,'testuser20',273,'{"memberId":"testuser20","content":"s","memberName":"이름변경","time":1686629239686}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (309,'testuser20',273,'{"memberId":"testuser20","content":"s","memberName":"이름변경","time":1686629240183}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (310,'testuser20',273,'{"memberId":"testuser20","content":"ㄱㄷ","memberName":"이십테","time":1686629242896}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (311,'testuser20',273,'{"memberId":"testuser20","content":"누구야 너","memberName":"이십테","time":1686629244759}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (312,'testuser22',273,'{"memberId":"testuser22","content":"ㅎㅇ","memberName":"이이테","time":1686629245083}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (313,'testuser22',273,'{"memberId":"testuser22","content":"ㅎㅇ","memberName":"이이테","time":1686629245852}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (314,'testuser20',273,'{"memberId":"testuser20","content":"ㅎㅇ","memberName":"이십테","time":1686629247767}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (315,'testuser20',328,'{"memberId":"testuser20","content":"as","memberName":"이름변경","time":1686629249646}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (316,'testuser20',328,'{"memberId":"testuser20","content":"s","memberName":"이름변경","time":1686629250503}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (317,'testuser22',273,'{"memberId":"testuser22","content":"어디사는","memberName":"이이테","time":1686629251056}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (318,'testuser20',328,'{"memberId":"testuser20","content":"s","memberName":"이름변경","time":1686629251278}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (319,'testuser20',328,'{"memberId":"testuser20","content":"a","memberName":"이름변경","time":1686629252038}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (320,'testuser22',273,'{"memberId":"testuser22","content":"몇살>?","memberName":"이이테","time":1686629252178}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (321,'testuser20',328,'{"memberId":"testuser20","content":"s","memberName":"이름변경","time":1686629252415}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (322,'testuser20',328,'{"memberId":"testuser20","content":"s","memberName":"이름변경","time":1686629252686}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (323,'testuser20',328,'{"memberId":"testuser20","content":"as","memberName":"이름변경","time":1686629252958}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (324,'testuser20',328,'{"memberId":"testuser20","content":"s","memberName":"이름변경","time":1686629253438}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (325,'testuser20',328,'{"memberId":"testuser20","content":"s","memberName":"이름변경","time":1686629254030}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (326,'testuser20',328,'{"memberId":"testuser20","content":"sa","memberName":"이름변경","time":1686629255446}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (327,'testuser20',273,'{"memberId":"testuser20","content":"당산살아요","memberName":"이십테","time":1686629257414}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (328,'testuser22',273,'{"memberId":"testuser22","content":"헐","memberName":"이이테","time":1686629262372}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (329,'testuser22',273,'{"memberId":"testuser22","content":"저도 당산 살아요","memberName":"이이테","time":1686629266328}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (330,'testuser20',273,'{"memberId":"testuser20","content":"내성격 까먹었나보네","memberName":"이십테","time":1686629269527}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (331,'testuser20',273,'{"memberId":"testuser20","content":"d","memberName":"이름변경","time":1686629280799}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (332,'testuser20',273,'{"memberId":"testuser20","content":"d","memberName":"이름변경","time":1686629282718}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (333,'testuser20',273,'{"memberId":"testuser20","content":"d","memberName":"이름변경","time":1686629283502}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (334,'testuser22',273,'{"memberId":"testuser22","content":"ㅎㅇ","memberName":"이이테","time":1686629289550}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (335,'testuser22',273,'{"memberId":"testuser22","content":"ㅎㅇ","memberName":"이이테","time":1686629291163}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (336,'testuser20',273,'{"memberId":"testuser20","content":"ㅎㅇ","memberName":"이십테","time":1686629292566}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (337,'testuser22',273,'{"memberId":"testuser22","content":"보면 답장 좀","memberName":"이이테","time":1686629303990}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (338,'testuser22',273,'{"memberId":"testuser22","content":"해주삼","memberName":"이이테","time":1686629305276}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (339,'testuser22',273,'{"memberId":"testuser22","content":"ㅎ","memberName":"이이테","time":1686629306209}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (340,'testuser22',273,'{"memberId":"testuser22","content":"ㅎ","memberName":"이이테","time":1686629307494}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (341,'testuser22',273,'{"memberId":"testuser22","content":"ㅎ","memberName":"이이테","time":1686629307921}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (342,'testuser22',273,'{"memberId":"testuser22","content":"ㅎ","memberName":"이이테","time":1686629308199}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (343,'testuser22',273,'{"memberId":"testuser22","content":"ㅎ","memberName":"이이테","time":1686629308414}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (344,'testuser22',273,'{"memberId":"testuser22","content":"ㅎ","memberName":"이이테","time":1686629308614}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (345,'testuser22',273,'{"memberId":"testuser22","content":"ㅎ","memberName":"이이테","time":1686629308829}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (346,'testuser22',273,'{"memberId":"testuser22","content":"ㅎ","memberName":"이이테","time":1686629309031}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (347,'testuser20',273,'{"memberId":"testuser20","content":"ㅇ","memberName":"이십테","time":1686629310959}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (348,'testuser20',273,'{"memberId":"testuser20","content":"d","memberName":"이름변경","time":1686629311134}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (349,'testuser20',273,'{"memberId":"testuser20","content":"ㅇ","memberName":"이십테","time":1686629311151}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (350,'testuser20',273,'{"memberId":"testuser20","content":"ㅇ","memberName":"이십테","time":1686629311319}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (351,'testuser20',273,'{"memberId":"testuser20","content":"ㅇㅇ","memberName":"이십테","time":1686629311462}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (352,'testuser20',273,'{"memberId":"testuser20","content":"ㅇ","memberName":"이십테","time":1686629311590}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (353,'testuser20',273,'{"memberId":"testuser20","content":"dd","memberName":"이름변경","time":1686629311678}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (354,'testuser20',273,'{"memberId":"testuser20","content":"ㅇ","memberName":"이십테","time":1686629311734}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (355,'testuser20',273,'{"memberId":"testuser20","content":"ㅇ","memberName":"이십테","time":1686629311855}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (356,'testuser20',273,'{"memberId":"testuser20","content":"ㅇ","memberName":"이십테","time":1686629311983}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (357,'testuser20',273,'{"memberId":"testuser20","content":"ㅇ","memberName":"이십테","time":1686629312142}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (358,'testuser20',273,'{"memberId":"testuser20","content":"ㅇ","memberName":"이십테","time":1686629312295}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (359,'testuser20',273,'{"memberId":"testuser20","content":"ㅇ","memberName":"이십테","time":1686629312439}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (360,'testuser20',273,'{"memberId":"testuser20","content":"ㅇ","memberName":"이십테","time":1686629312567}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (361,'testuser20',273,'{"memberId":"testuser20","content":"ㅇ","memberName":"이십테","time":1686629312719}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (362,'testuser20',273,'{"memberId":"testuser20","content":"ㅇ","memberName":"이십테","time":1686629312871}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (363,'testuser20',273,'{"memberId":"testuser20","content":"ㅇㅇ","memberName":"이십테","time":1686629313014}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (364,'testuser20',273,'{"memberId":"testuser20","content":"ㅇ","memberName":"이십테","time":1686629313175}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (365,'testuser20',273,'{"memberId":"testuser20","content":"ㅇ","memberName":"이십테","time":1686629313455}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (366,'testuser23',273,'{"memberId":"testuser23","content":"ㅎㅇㅎㅇ","memberName":"조아쒀","time":1686629400215}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (367,'testuser23',273,'{"memberId":"testuser23","content":"ㅎㅇㅎㅇ","memberName":"조아쒀","time":1686629410318}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (368,'testuser23',328,'{"memberId":"testuser23","content":"weqesd","memberName":"조아쒀","time":1686629801550}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (369,'testuser20',329,'{"memberId":"testuser20","content":"ㅎㅇㅎㅇ","memberName":"이름변경","time":1686629801889}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (370,'testuser23',328,'{"memberId":"testuser23","content":"af","memberName":"조아쒀","time":1686629803429}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (371,'adminuser1',329,'{"memberId":"adminuser1","content":"ㅎㅇㅎㅇ","memberName":"관리자","time":1686629804361}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (372,'testuser23',328,'{"memberId":"testuser23","content":"asa","memberName":"조아쒀","time":1686629804662}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (373,'testuser22',329,'{"memberId":"testuser22","content":"ㅎㅇㅎㅇ","memberName":"이이테","time":1686629805688}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (374,'adminuser1',329,'{"memberId":"adminuser1","content":"누구야","memberName":"관리자","time":1686629809138}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (375,'testuser22',329,'{"memberId":"testuser22","content":"나 누군지 몰라","memberName":"이이테","time":1686629813072}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (376,'testuser22',329,'{"memberId":"testuser22","content":"??","memberName":"이이테","time":1686629815290}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (377,'testuser23',328,'{"memberId":"testuser23","content":"?","memberName":"조아쒀","time":1686629820343}',to_date('23/06/13','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (378,'testuser10',186,'{"memberId":"testuser10","content":"gvv","memberName":"테스터십","time":1710413490126}',to_date('24/03/14','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (379,'testuser09',340,'{"memberId":"testuser09","content":"dfdf","memberName":"테유구","time":1710414014192}',to_date('24/03/14','RR/MM/DD'));
Insert into CHAT_MESSAGE (MESSAGE_NO,MEMBER_ID,ROOM_NO,MESSAGE_BODY,MESSAGE_TIME) values (380,'cloud1123',340,'{"memberId":"cloud1123","content":"지은바보","memberName":"지은이","time":1710414048532}',to_date('24/03/14','RR/MM/DD'));
REM INSERTING into CHAT_VISIT
SET DEFINE OFF;
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser5',218);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser1',218);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser5',236);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser1',236);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser10',236);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser14',219);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser11',268);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser1',186);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('tt7899',236);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser10',186);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser5',186);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser10',216);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser1',247);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser10',247);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser10',218);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser1',216);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser10',219);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser1',219);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser888',219);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser5',274);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser14',247);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser5',247);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser5',268);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser5',328);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser29',271);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser20',271);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser29',272);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser30',272);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser30',271);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser24',272);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser30',273);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser5',272);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser5',273);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser22',271);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser22',272);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser22',273);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser1',268);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser20',273);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser20',328);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser24',328);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser1',328);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser1',274);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser23',273);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser23',272);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser23',273);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('adminuser1',329);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser23',328);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser20',329);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser22',329);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser09',340);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('cloud1123',340);
Insert into CHAT_VISIT (MEMBER_ID,ROOM_NO) values ('testuser1',340);
REM INSERTING into ENTRY
SET DEFINE OFF;
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (467,186,77,'testuser5','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (468,186,77,'mamama78','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (530,268,1,'tt7899','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (531,268,122,'testuser11','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (532,268,122,'test0314','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (481,236,1,'testuser5','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (482,236,1,'tt7899','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (745,328,1,'tt7899','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (528,268,1,'testuser5','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (483,236,1,'testuser10','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (529,268,1,'testuser1','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (746,328,68,'testuser20','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (747,328,68,'testuser24','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (584,274,77,'testuser30','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (585,274,77,'testuser32','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (511,247,68,'testuser14','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (512,247,68,'testuser10','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (546,271,68,'testuser20','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (547,271,68,'testuser21','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (199,186,1,'testuser1','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (200,186,1,'testuser10','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (586,274,77,'testuser31','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (750,329,161,'testuser74','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (548,271,68,'testuser22','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (513,247,68,'testuser5','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (556,272,77,'testuser30','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (557,272,77,'testuser32','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (315,216,1,'testuser10','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (558,272,77,'testuser31','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (552,271,77,'testuser29','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (553,271,77,'testuser32','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (554,271,77,'testuser30','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (555,272,77,'testuser29','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (559,272,68,'testuser5','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (328,219,1,'testuser10','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (323,218,68,'testuser5','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (324,218,68,'testuser10','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (560,272,68,'testuser24','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (330,219,1,'testuser14','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (561,272,68,'testuser23','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (562,272,68,'testuser22','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (563,273,68,'testuser24','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (564,273,68,'testuser23','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (565,273,68,'testuser20','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (566,273,68,'testuser22','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (567,273,68,'testuser21','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (568,273,68,'testuser10','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (569,273,77,'testuser30','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (570,273,77,'testuser32','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (571,273,77,'testuser5','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (572,273,77,'mamama78','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (573,273,77,'testuser31','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (574,273,77,'testuser29','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (575,274,1,'testuser5','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (576,274,1,'testuser1','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (577,274,1,'tt7899','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (578,275,68,'testuser5','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (579,275,68,'testuser24','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (580,275,68,'testuser23','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (743,328,1,'testuser5','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (744,328,1,'testuser1','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (748,328,68,'testuser23','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (749,329,161,'adminuser1','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (751,329,161,'testuser5','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (757,329,68,'testuser24','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (755,329,68,'testuser20','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (756,329,68,'testuser22','away');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (758,330,161,'adminuser1','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (768,332,161,'adminuser1','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (769,332,161,'testuser74','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (770,332,161,'testuser5','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (771,333,1,'testuser1','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (772,333,1,'tt7899','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (773,333,1,'testuser10','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (774,333,1,'testuser14','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (793,340,176,'testuser09','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (794,340,176,'testuser13','home');
Insert into ENTRY (ENTRY_NO,MATCH_NO,TEAM_NO,MEMBER_ID,TEAM_TYPE) values (795,340,176,'testuser12','home');
REM INSERTING into GROUND
SET DEFINE OFF;
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (391,'서울','강남구',null,'무료주차','20x10m','서울 논현 누리풋볼클럽',70000,'서울 강남구 논현로 748 지하1층');
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (4,'서울','노원구',null,'무료주차','19x7M','서울 노원 R 실내 풋살장',35000,'서울특별시 노원구 한글비석로326');
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (370,'경기','고양시',null,'무료주차','37x20M','고양 라보나 풋살',110000,'경기도 고양시 일산동구 산황동 630-3');
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (6,'경기','고양시',null,'무료주차','38x18m','고양 싸커스토리 축구클럽 운정점',110000,'경기도 고양시 일산서구 덕이로 310-2');
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (7,'경기','광주시','샤워실','무료주차','90x50M','경기 광주 팀업캠퍼스',30000,'경기 광주시 곤지암읍 경충대로 729');
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (21,'경기','구리시',null,'유료주차','32x20m','구리 언더플레이 풋살파크',50000,'경기 구리시 인창동 127');
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (22,'경기','김포시',null,'무료주차','40x20m','김포 B&C 풋살파크',120000,'경기도 김포시 고촌읍 풍곡로 36-15');
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (23,'경기','남양주시',null,'무료주차','40x20m','남양주 드림 야외풋살장',80000,'경기도 남양주시 진건읍 용정리 184');
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (24,'대구','동구','샤워실','무료주차','40x20m','대구 방촌 첼시 구장',50000,'대구 동구 호반길 85');
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (25,'대구','서구',null,'무료주차','40x20m','대구 비산 실내 풋살파크',120000,'대구광역시 서구 문화로 322');
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (26,'인천','계양구',null,'무료주차','23x12m','인천 계양 쿠FC 축구센터',50000,'인천광역시 계양구 아나지로424번길 13, 3층');
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (27,'인천','남동구',null,'무료주차','33x17m','인천 서창 유나이티드 풋살장',50000,'인천 남동구 서창남순환로 215번길 20, 7층');
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (28,'충남','천안시',null,'무료주차','42x22m','천안 더피치 신방점(홈플러스 천안신방점)',50000,'천안시 동남구 신촌1길 23');
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (29,'인천','연수구',null,'무료주차','38x18m','인천 송도 트리플 스트리트 풋살장',80000,'인천 연수구 송도과학로16번길 33-3');
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (382,'경기','구리시','샤워장','무료주차','40x20m','구리 대복 풋살파크',120000,'경기 구리시 코스모스길 129-42');
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (379,'경기','고양시','샤워실','무료주차','38x18m','고양 쾨닉스 풋살파크',120000,'경기도 고양시 덕양구 대주로 1-4');
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (384,'경기','군포시',null,null,'38x18m','군포 풋살공간 군포역점',120000,'경기도 군포시 당정동327-10');
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (385,'경기','군포시',null,null,'38x18m','군포 풋살공간 군포역점',120000,'경기도 군포시 당정동327-10');
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (376,'경기','고양시','샤워실','무료주차','40x20m','고양 제이 풋살장',110000,'경기 고양시 덕양구 화랑로 195');
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (389,'서울','노원구',null,'무료주차','35x18m','서울 노원 하라 풋살장',45000,'서울 노원구 동일로 1323');
Insert into GROUND (GROUND_NO,GROUND_BASIC_ADDR,GROUND_DETAIL_ADDR,GROUND_SHOWER,GROUND_PARK,GROUND_SIZE,GROUND_NAME,GROUND_PRICE,GROUND_ADDR) values (390,'서울','노원구',null,'무료주차','35x18m','서울 노원 하라 풋살장',45000,'서울 노원구 동일로 1323');
REM INSERTING into GROUND_IMAGE
SET DEFINE OFF;
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (471,370);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (472,370);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (473,370);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (474,370);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (475,370);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (479,6);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (480,6);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (481,6);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (482,376);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (483,376);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (484,376);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (485,376);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (486,379);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (487,379);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (488,379);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (489,382);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (490,382);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (491,21);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (492,385);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (493,22);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (494,22);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (495,22);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (496,22);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (497,7);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (498,7);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (499,23);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (500,23);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (501,25);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (502,25);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (503,25);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (504,26);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (505,26);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (506,26);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (507,27);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (508,27);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (509,27);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (510,28);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (511,28);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (512,28);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (513,29);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (514,29);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (515,29);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (516,390);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (517,390);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (518,390);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (519,391);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (520,391);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (521,391);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (537,4);
Insert into GROUND_IMAGE (IMG_NO,GROUND_NO) values (538,4);
REM INSERTING into IMG
SET DEFINE OFF;
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (22,'쏘아베 그린백 배변봉투 리필.jpg','image/jpeg',66728);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (1,'wef','wef',45);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (21,'쏘아베 그린백 배변봉투 리필 (1).jpg','image/jpeg',66728);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (23,'쏘아베 그린백 배변봉투 리필.jpg','image/jpeg',66728);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (24,'쏘아베 그린백 배변봉투 리필.jpg','image/jpeg',66728);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (25,'쏘아베 그린백 배변봉투 리필.jpg','image/jpeg',66728);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (26,'쏘아베 그린백 배변봉투 리필.jpg','image/jpeg',66728);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (27,'쏘아베 그린백 배변봉투 리필.jpg','image/jpeg',66728);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (28,'쏘아베 그린백 배변봉투 리필.jpg','image/jpeg',66728);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (29,'쏘아베 그린백 배변봉투 리필 (2).jpg','image/jpeg',66728);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (31,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (32,'토게피.png','image/png',158633);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (41,'꼬부기.png','image/png',92358);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (42,'꼬부기.png','image/png',92358);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (43,'토게피.png','image/png',158633);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (44,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (45,'토게피.png','image/png',158633);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (46,'라이츄.png','image/png',95207);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (47,'라이츄.png','image/png',95207);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (48,'가디.png','image/png',120595);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (49,'꼬부기.png','image/png',92358);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (50,'라이츄.png','image/png',95207);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (51,'라이츄.png','image/png',95207);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (52,'라이츄.png','image/png',95207);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (53,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (54,'라이츄.png','image/png',95207);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (55,'라이츄.png','image/png',95207);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (56,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (57,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (58,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (59,'토게피.png','image/png',158633);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (60,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (61,'토게피.png','image/png',158633);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (62,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (63,'꼬부기.png','image/png',92358);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (64,'토게피.png','image/png',158633);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (65,'꼬부기.png','image/png',92358);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (66,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (67,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (68,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (69,'토게피.png','image/png',158633);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (70,'가디.png','image/png',120595);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (71,'토게피.png','image/png',158633);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (72,'토게피.png','image/png',158633);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (73,'라이츄.png','image/png',95207);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (74,'user.png','image/png',119999);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (75,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (76,'토게피.png','image/png',158633);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (77,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (78,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (79,'라이츄.png','image/png',95207);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (80,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (81,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (82,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (83,'토게피.png','image/png',158633);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (84,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (85,'라이츄.png','image/png',95207);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (86,'토게피.png','image/png',158633);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (87,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (88,'토게피.png','image/png',158633);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (89,'user.jpg','image/jpeg',4842);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (90,'토게피.png','image/png',158633);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (91,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (92,'꼬부기.png','image/png',92358);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (93,'토게피.png','image/png',158633);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (94,'토게피.png','image/png',158633);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (95,'꼬부기.png','image/png',92358);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (96,'가디.png','image/png',120595);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (97,'스벅.png','image/png',102924);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (98,'스벅.png','image/png',102924);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (101,'sad-icons-logos-emojis-emojis.png','image/png',9903);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (102,'sad-icons-logos-emojis-emojis.png','image/png',9903);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (103,'sad-icons-logos-emojis-emojis.png','image/png',9903);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (104,'스벅.png','image/png',102924);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (121,'꼬부기.png','image/png',92358);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (122,'꼬부기.png','image/png',92358);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (123,'토게피.png','image/png',158633);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (124,'user.png','image/png',119999);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (125,'스벅.png','image/png',102924);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (135,'꼬부기.png','image/png',92358);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (137,'라이츄.png','image/png',95207);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (139,'가디.png','image/png',120595);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (140,'sign.png','image/png',4807);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (141,'sign.png','image/png',4807);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (142,'스벅.png','image/png',102924);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (143,'가디.png','image/png',120595);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (145,'kakaotalk.png','image/png',4319);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (147,'facebook.png','image/png',3105);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (149,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (151,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (152,'sign.png','image/png',4807);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (156,'가디.png','image/png',120595);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (157,'스벅.png','image/png',102924);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (158,'sign.png','image/png',4807);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (159,'스벅.png','image/png',102924);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (160,'스벅.png','image/png',102924);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (161,'스벅.png','image/png',102924);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (162,'어니부기.png','image/png',121716);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (235,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (242,'스벅.png','image/png',102924);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (168,'토게피.png','image/png',158633);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (170,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (254,'스벅.png','image/png',102924);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (253,'스벅.png','image/png',102924);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (255,'icon-crown.png','image/png',28717);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (256,'스벅.png','image/png',102924);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (257,'스벅.png','image/png',102924);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (258,'sign.png','image/png',4807);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (259,'sign.png','image/png',4807);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (260,'sign.png','image/png',4807);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (261,'스벅.png','image/png',102924);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (262,'icon-crown.png','image/png',28717);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (263,'스벅.png','image/png',102924);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (264,'admin.png','image/png',7147);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (265,'dummy1.png','image/png',77812);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (266,'icon-crown.png','image/png',28717);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (267,'sign.png','image/png',4807);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (268,'icon-crown.png','image/png',28717);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (269,'어니부기.png','image/png',121716);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (270,'admin.png','image/png',7147);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (271,'icon-crown.png','image/png',28717);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (272,'dummy1.png','image/png',77812);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (273,'kakao.png','image/png',1236);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (274,'dummy1.png','image/png',77812);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (275,'member 제약조건.png','image/png',86674);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (276,'어니부기.png','image/png',121716);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (277,'어니부기.png','image/png',121716);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (278,'리아코.png','image/png',46999);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (279,'리아코.png','image/png',46999);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (280,'asdf.png','image/png',69149);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (281,'asdf.png','image/png',69149);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (282,'kakao.png','image/png',1236);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (283,'invalid.png','image/png',3868);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (284,'어니부기.png','image/png',121716);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (285,'admin.png','image/png',7147);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (286,'dummy1.png','image/png',77812);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (287,'dummy2.png','image/png',249471);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (288,'list.png','image/png',2384);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (289,'img.png','image/png',3501);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (290,'member 제약조건.png','image/png',86674);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (291,'리아코.png','image/png',46999);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (292,'asdf.png','image/png',69149);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (293,'어니부기.png','image/png',121716);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (294,'어니부기.png','image/png',121716);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (295,'list.png','image/png',2384);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (296,'valid.png','image/png',3705);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (297,'list.png','image/png',2384);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (298,'list.png','image/png',2384);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (299,'matchUp.png','image/png',27781);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (300,'img.png','image/png',3501);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (335,'.png','image/png',6587);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (313,'리아코.png','image/png',46999);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (314,'asdf.png','image/png',69149);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (352,'invalid.png','image/png',3868);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (350,'어니부기.png','image/png',121716);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (351,'valid.png','image/png',3705);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (355,'[세미프로젝트] Recommed_Write.jpg','image/jpeg',175972);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (356,'icon-crown.png','image/png',28717);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (357,'sign.png','image/png',4807);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (358,'skin_0001.jpg','image/jpeg',335864);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (359,'skin_0001.jpg','image/jpeg',335864);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (360,'skin_0002.jpg','image/jpeg',337630);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (361,'skin_0003.jpg','image/jpeg',287743);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (362,'skin_0001.jpg','image/jpeg',335864);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (363,'skin_0002.jpg','image/jpeg',337630);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (364,'skin_0003.jpg','image/jpeg',287743);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (365,'skin_0002.jpg','image/jpeg',337630);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (366,'skin_0003.jpg','image/jpeg',287743);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (367,'skin_0002.jpg','image/jpeg',337630);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (368,'skin_0003.jpg','image/jpeg',287743);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (369,'skin_0003.jpg','image/jpeg',287743);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (370,'skin_0004.jpg','image/jpeg',293330);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (371,'skin_0005.jpg','image/jpeg',312873);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (372,'skin_0003.jpg','image/jpeg',287743);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (373,'skin_0003.jpg','image/jpeg',287743);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (374,'skin_0009.jpg','image/jpeg',333911);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (375,'skin_0005.jpg','image/jpeg',312873);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (376,'12344.jpg','image/jpeg',1837);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (377,'12344.jpg','image/jpeg',1837);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (378,'12344.jpg','image/jpeg',1837);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (379,'어니부기.png','image/png',121716);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (380,'리아코.png','image/png',46999);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (381,'스벅.png','image/png',102924);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (382,'.png','image/png',6587);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (383,'어니부기.png','image/png',121716);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (384,'어니부기.png','image/png',121716);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (385,'리아코.png','image/png',46999);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (386,'invalid.png','image/png',3868);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (387,'valid.png','image/png',3705);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (401,'skin_0009.jpg','image/jpeg',333911);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (402,'skin_0018.jpg','image/jpeg',314545);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (403,'default_stadium.jpg','image/jpeg',513262);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (404,'skin_0018.jpg','image/jpeg',314545);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (405,'skin_0012.jpg','image/jpeg',251567);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (406,'sad-icons-logos-emojis-emojis.png','image/png',9903);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (407,'ms-icon-150x150.png','image/png',9209);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (408,'3.5x4.5 Web2.jpg','image/jpeg',246027);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (409,'초안.PNG','image/png',16886);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (410,'555 (1).PNG','image/png',16886);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (411,'555 (1).PNG','image/png',16886);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (412,'555 (1).PNG','image/png',16886);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (413,'555 (1).PNG','image/png',16886);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (414,'555 (1).PNG','image/png',16886);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (415,'555 (1).PNG','image/png',16886);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (416,'555 (1).PNG','image/png',16886);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (417,'555 (1).PNG','image/png',16886);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (418,'555 (1).PNG','image/png',16886);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (419,'555 (1).PNG','image/png',16886);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (420,'555 (1).PNG','image/png',16886);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (421,'555 (1).PNG','image/png',16886);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (422,'555 (1).PNG','image/png',16886);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (423,'555 (1).PNG','image/png',16886);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (424,'555 (1).PNG','image/png',16886);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (425,'555 (1).PNG','image/png',16886);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (426,'다운로드.png','image/png',2741);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (427,'163869 (720p).mp4','video/mp4',10237213);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (428,'163869 (720p).mp4','video/mp4',10237213);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (429,'163869 (720p).mp4','video/mp4',10237213);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (430,'163869 (720p).mp4','video/mp4',10237213);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (431,'163869 (720p).mp4','video/mp4',10237213);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (434,'.png','image/png',6587);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (436,'메가리자몽X.png','image/png',115893);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (435,'.png','image/png',6587);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (437,'토게피.png','image/png',158633);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (438,'user.jpg','image/jpeg',4842);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (441,'스벅.png','image/png',102924);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (442,'리아코.png','image/png',46999);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (444,'icon-crown.png','image/png',28717);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (554,'윈터.jpg','image/jpeg',152890);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (529,'football_sample.mp4','video/mp4',62466517);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (469,'리아코.png','image/png',46999);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (570,'강아지.jpeg','image/jpeg',7359);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (470,'어니부기.png','image/png',121716);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (471,'Goyang_rabona_corner2.jpg','image/jpeg',8149449);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (472,'Goyang_rabona_goal2.jpg','image/jpeg',8613795);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (473,'Goyang_rabona_half2.jpg','image/jpeg',8192206);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (474,'Goyang_rabona_corner3.jpg','image/jpeg',8186192);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (475,'Goyang_rabona_half.jpg','image/jpeg',8076097);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (476,'어니부기.png','image/png',121716);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (477,'리아코.png','image/png',46999);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (478,'asdf.png','image/png',69149);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (479,'gy_storywj_out_corner.jpg','image/jpeg',7556670);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (480,'gy_storywj_out_corner2.jpg','image/jpeg',8369142);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (481,'gy_storywj_out_goal.jpg','image/jpeg',6758590);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (482,'Goyang_J_1.jpg','image/jpeg',1564062);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (483,'Goyang_J_2.jpg','image/jpeg',1058182);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (484,'Goyang_J_3.jpg','image/jpeg',1464387);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (485,'Goyang_J_4.jpg','image/jpeg',1123614);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (486,'Goyang_Konics_corner1_edit.jpg','image/jpeg',1407712);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (487,'Goyang_Konics_half_edit.jpg','image/jpeg',1249074);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (488,'Goyang_Konics_corner2_edit.jpg','image/jpeg',1535784);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (489,'40391D57-0405-463F-9765-9255D5605721.jpeg','image/jpeg',950302);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (490,'FDE355B9-E6DA-49F9-9BA0-310FBDC33AB0.jpeg','image/jpeg',591651);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (491,'gr_under_coner.jpeg','image/jpeg',5987209);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (492,'m_Gunpo_gongan_1_goal2.jpg','image/jpeg',7875482);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (493,'Gimpo_BC_A_half.jpg','image/jpeg',9228364);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (494,'Gimpo_BC_A_goal.jpg','image/jpeg',7950486);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (495,'Gimpo_BC_A_corner5.jpg','image/jpeg',8596718);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (496,'Gimpo_BC_A_corner2.jpg','image/jpeg',8134465);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (497,'KakaoTalk_Photo_2023-01-30-16-09-56_003.jpeg','image/jpeg',719968);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (498,'KakaoTalk_Photo_2023-01-30-16-09-56_001.jpeg','image/jpeg',798069);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (499,'IMG_0293.jpg','image/jpeg',1983317);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (500,'IMG_0294.jpg','image/jpeg',1875459);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (501,'?????????1.jpg','image/jpeg',308901);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (502,'?????????2.jpg','image/jpeg',285022);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (503,'i_ec2096ec7600.jpg','image/jpeg',3407716);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (504,'ic_coofc.png','image/png',1804304);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (505,'coofc_1.jpeg','image/jpeg',39557);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (506,'coofc_2.jpeg','image/jpeg',693241);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (507,'1_.jpg','image/jpeg',1709057);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (508,'20210714_121444.jpg','image/jpeg',3813601);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (509,'20210714_121533.jpg','image/jpeg',1446318);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (510,'sinbang_sideline.jpeg','image/jpeg',7669186);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (511,'sinbang_goalline.jpeg','image/jpeg',5899926);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (512,'sinbang_cornerline.jpeg','image/jpeg',3229864);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (513,'songdo_triple_a_side1.jpg','image/jpeg',5249692);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (514,'songdo_triple_a_side2.jpg','image/jpeg',5051715);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (515,'songdo_triple_a_half.jpg','image/jpeg',4474781);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (516,'coner_U7jEVnu.jpg','image/jpeg',4212861);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (517,'goalline_55nKjvh.jpg','image/jpeg',3244018);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (518,'halfline_JuMQ19j.jpg','image/jpeg',2622390);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (519,'Nuri_3.jpg','image/jpeg',713844);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (520,'Nuri_7.jpg','image/jpeg',990153);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (521,'Nuri_9.jpg','image/jpeg',1043870);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (522,'football_sample.mp4','video/mp4',62466517);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (571,'강아지.jpeg','image/jpeg',7359);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (530,'skin_0032.jpg','image/jpeg',333976);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (531,'skin_0019.jpg','image/jpeg',299043);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (532,'skin_0020.jpg','image/jpeg',331451);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (533,'skin_0011.jpg','image/jpeg',330627);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (534,'skin_0013.jpg','image/jpeg',312076);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (535,'skin_0019.jpg','image/jpeg',299043);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (536,'skin_0062.jpg','image/jpeg',324783);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (537,'????_????_??????_2.jpg','image/jpeg',480177);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (538,'????_????_??????_1.jpg','image/jpeg',511948);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (539,'images.jpg','image/jpeg',6366);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (540,'error.png','image/png',60802);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (541,'images.jpg','image/jpeg',6366);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (546,'images.jpg','image/jpeg',6366);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (544,'erd1.png','image/png',226720);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (545,'images.jpg','image/jpeg',6366);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (547,'8.jpg','image/jpeg',4535);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (548,'ㅋㄹㄴ5.jpg','image/jpeg',64340);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (549,'ㄱㅇ.jpg','image/jpeg',61066);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (550,'하니2.jpg','image/jpeg',55543);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (551,'retriever_waifu2x_art_noise0_scale.png','image/png',2735434);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (596,'강아지.jpeg','image/jpeg',7359);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (569,'강아지.jpeg','image/jpeg',7359);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (572,'강아지.jpeg','image/jpeg',7359);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (573,'강아지.jpeg','image/jpeg',7359);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (574,'강아지.jpeg','image/jpeg',7359);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (576,'강아지.jpeg','image/jpeg',7359);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (595,'강아지.jpeg','image/jpeg',7359);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (597,'강아지.jpeg','image/jpeg',7359);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (598,'강아지.jpeg','image/jpeg',7359);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (599,'강아지.jpeg','image/jpeg',7359);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (600,'강아지.jpeg','image/jpeg',7359);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (601,'강아지.jpeg','image/jpeg',7359);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (602,'강아지.jpeg','image/jpeg',7359);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (603,'강아지.jpeg','image/jpeg',7359);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (604,'강아지.jpeg','image/jpeg',7359);
Insert into IMG (IMG_NO,IMG_NAME,IMG_TYPE,IMG_SIZE) values (605,'강아지.jpeg','image/jpeg',7359);
REM INSERTING into MAIN_IMG
SET DEFINE OFF;
Insert into MAIN_IMG (MAIN_NO,IMG_NO,MAIN_TITLE) values (575,576,'zzz');
REM INSERTING into MAIN_IMG_CONNECT
SET DEFINE OFF;
Insert into MAIN_IMG_CONNECT (IMG_NO,MAIN_NO) values (576,575);
REM INSERTING into MATCH
SET DEFINE OFF;
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (266,'인천','동구',to_date('23/06/16','RR/MM/DD'),'10:00','20','3','모집중',2,null,241);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (236,'서울','종로구',to_date('23/06/15','RR/MM/DD'),'13:00','20','3','경기종료',2,1,212);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (247,'서울','종로구',to_date('23/06/13','RR/MM/DD'),'10:00','20','3','경기종료',2,68,222);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (271,'서울','용산구',to_date('23/06/17','RR/MM/DD'),'16:00','20','3','경기종료',68,77,246);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (268,'서울','종로구',to_date('23/06/13','RR/MM/DD'),'10:00','20','3','경기종료',1,122,243);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (272,'대구','중구',to_date('23/06/01','RR/MM/DD'),'18:00','20','4','경기종료',77,68,247);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (186,'서울','종로구',to_date('23/06/08','RR/MM/DD'),'12:00','20','2','경기종료',1,77,176);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (273,'제주','서귀포시',to_date('23/06/01','RR/MM/DD'),'15:00','20','6','경기종료',68,77,248);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (216,'서울','종로구',to_date('23/06/15','RR/MM/DD'),'16:00','20','2','경기종료',1,2,191);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (274,'울산','중구',to_date('23/06/22','RR/MM/DD'),'18:00','20','3','경기종료',1,77,249);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (218,'서울','종로구',to_date('23/06/07','RR/MM/DD'),'22:00','30','2','경기종료',68,2,193);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (219,'부산','중구',to_date('23/06/15','RR/MM/DD'),'14:00','20','3','경기종료',2,1,194);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (275,'대전','서구',to_date('23/06/17','RR/MM/DD'),'10:00','20','3','모집중',68,null,250);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (329,'서울','종로구',to_date('23/06/15','RR/MM/DD'),'12:00','20','3','경기종료',161,68,304);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (328,'서울','중구',to_date('23/06/23','RR/MM/DD'),'23:00','20','3','경기종료',1,68,303);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (330,'서울','종로구',to_date('24/03/21','RR/MM/DD'),'08:00','20','5','모집중',161,null,307);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (331,'서울','종로구',to_date('24/03/21','RR/MM/DD'),'08:00','20','5','모집중',161,null,308);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (332,'서울','종로구',to_date('24/03/21','RR/MM/DD'),'09:00','30','3','모집중',161,null,309);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (333,'서울','종로구',to_date('24/03/20','RR/MM/DD'),'08:00','30','4','모집중',1,null,310);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (334,'서울','종로구',to_date('24/03/15','RR/MM/DD'),'08:00','30','3','모집중',175,null,311);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (335,'서울','종로구',to_date('24/03/15','RR/MM/DD'),'08:00','30','3','모집중',175,null,312);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (336,'서울','종로구',to_date('24/03/15','RR/MM/DD'),'08:00','30','3','모집중',175,null,313);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (337,'서울','종로구',to_date('24/03/15','RR/MM/DD'),'08:00','30','3','모집중',175,null,314);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (338,'서울','종로구',to_date('24/03/15','RR/MM/DD'),'08:00','30','3','모집중',175,null,315);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (339,'서울','종로구',to_date('24/03/15','RR/MM/DD'),'08:00','30','3','모집중',175,null,316);
Insert into MATCH (MATCH_NO,MATCH_CITY,MATCH_LOCATION,MATCH_DATE,MATCH_TIME,MATCH_AGE,MATCH_SIZE,MATCH_STATUS,TEAM_NO,OPPOSING_NO,MATCH_BOARD_NO) values (340,'부산','중구',to_date('24/03/14','RR/MM/DD'),'22:00','30','3','경기종료',176,175,317);
REM INSERTING into MATCH_BOARD
SET DEFINE OFF;
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (222,'testuser1','test',to_date('23/06/12','RR/MM/DD'),6,'서울','종로구',to_date('23/06/13','RR/MM/DD'),'10:00','20','3','test 0612','경기종료',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (212,'testuser1','tt',to_date('23/06/09','RR/MM/DD'),7,'서울','종로구',to_date('23/06/15','RR/MM/DD'),'13:00','20','3','0609test','경기종료',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (241,'testuser888','ㅁㄴㅇㄹ',to_date('23/06/12','RR/MM/DD'),6,'인천','동구',to_date('23/06/16','RR/MM/DD'),'10:00','20','3','테스트제목43','모집중',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (246,'testuser20','주말에 용산 아이파크에서 공 차실분 매칭 신청 바랍니다~',to_date('23/06/12','RR/MM/DD'),3,'서울','용산구',to_date('23/06/17','RR/MM/DD'),'16:00','20','3','서울에서 공 차실분~','경기종료',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (243,'testuser5','test',to_date('23/06/12','RR/MM/DD'),2,'서울','종로구',to_date('23/06/13','RR/MM/DD'),'10:00','20','3','test','경기종료',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (247,'testuser29','동성로에서 공차실분 신청 바랍니다~',to_date('23/06/12','RR/MM/DD'),6,'대구','중구',to_date('23/06/01','RR/MM/DD'),'18:00','20','4','대구에서 공차실 분~','경기종료',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (248,'testuser24','서귀포에서 풋살 6:6 하수꽝?',to_date('23/06/12','RR/MM/DD'),11,'제주','서귀포시',to_date('23/06/01','RR/MM/DD'),'15:00','20','6','혼저 옵서예','경기종료',529);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (249,'testuser5','삼산에서 3:3 하실 분 구합니다',to_date('23/06/13','RR/MM/DD'),5,'울산','중구',to_date('23/06/22','RR/MM/DD'),'18:00','20','3','울산 삼산에서 풋살 한 게임','경기종료',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (176,'testuser1','ttest16',to_date('23/06/02','RR/MM/DD'),9,'서울','종로구',to_date('23/06/08','RR/MM/DD'),'12:00','20','2','test16','경기종료',522);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (250,'testuser5','둔산동에서 3:3 한 게임 하실 분 신청해주세요',to_date('23/06/13','RR/MM/DD'),13,'대전','서구',to_date('23/06/17','RR/MM/DD'),'10:00','20','3','둔산동에서 3:3 한 게임','모집중',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (191,'testuser10','test',to_date('23/06/07','RR/MM/DD'),12,'서울','종로구',to_date('23/06/15','RR/MM/DD'),'16:00','20','2','0607test','경기종료',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (194,'testuser1','test',to_date('23/06/07','RR/MM/DD'),11,'부산','중구',to_date('23/06/15','RR/MM/DD'),'14:00','20','3','test','경기종료',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (193,'testuser5','ㅎㅇㅎㅇ',to_date('23/06/07','RR/MM/DD'),25,'서울','종로구',to_date('23/06/07','RR/MM/DD'),'22:00','30','2','ㅎㅇ','경기종료',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (304,'adminuser1','ㅅㄷㄴㅅ',to_date('23/06/13','RR/MM/DD'),3,'서울','종로구',to_date('23/06/15','RR/MM/DD'),'12:00','20','3','테스트','경기종료',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (303,'testuser5','종로에서 축구해요~',to_date('23/06/13','RR/MM/DD'),9,'서울','중구',to_date('23/06/23','RR/MM/DD'),'23:00','20','3','kh에서 한판 뜨자','경기종료',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (307,'adminuser1','ㅌㅌㅌㅌ',to_date('24/03/14','RR/MM/DD'),0,'서울','종로구',to_date('24/03/21','RR/MM/DD'),'08:00','20','5','ㅋㅋㅋ','모집중',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (308,'adminuser1','ㅌㅌㅌㅌ',to_date('24/03/14','RR/MM/DD'),0,'서울','종로구',to_date('24/03/21','RR/MM/DD'),'08:00','20','5','ㅋㅋㅋ','모집중',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (309,'adminuser1','ㄹㄹㄹ',to_date('24/03/14','RR/MM/DD'),0,'서울','종로구',to_date('24/03/21','RR/MM/DD'),'09:00','30','3','아ㅓ이ㅏㄹ','모집중',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (310,'testuser1','여기서 모여요',to_date('24/03/14','RR/MM/DD'),1,'서울','종로구',to_date('24/03/20','RR/MM/DD'),'08:00','30','4','ㅎㅎ','모집중',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (311,'cloud1123','dd',to_date('24/03/14','RR/MM/DD'),0,'서울','종로구',to_date('24/03/15','RR/MM/DD'),'08:00','30','3','test','모집중',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (312,'cloud1123','dd',to_date('24/03/14','RR/MM/DD'),0,'서울','종로구',to_date('24/03/15','RR/MM/DD'),'08:00','30','3','test','모집중',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (313,'cloud1123','dd',to_date('24/03/14','RR/MM/DD'),0,'서울','종로구',to_date('24/03/15','RR/MM/DD'),'08:00','30','3','test','모집중',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (314,'cloud1123','dd',to_date('24/03/14','RR/MM/DD'),0,'서울','종로구',to_date('24/03/15','RR/MM/DD'),'08:00','30','3','test','모집중',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (315,'cloud1123','dd',to_date('24/03/14','RR/MM/DD'),0,'서울','종로구',to_date('24/03/15','RR/MM/DD'),'08:00','30','3','test','모집중',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (316,'cloud1123','dd',to_date('24/03/14','RR/MM/DD'),0,'서울','종로구',to_date('24/03/15','RR/MM/DD'),'08:00','30','3','test','모집중',null);
Insert into MATCH_BOARD (MATCH_BOARD_NO,MEMBER_ID,MATCH_BOARD_CONTENT,MATCH_BOARD_TIME,MATCH_BOARD_READ,MATCH_BOARD_CITY,MATCH_BOARD_LOCATION,MATCH_BOARD_DATE,MATCH_BOARD_TIME2,MATCH_BOARD_AGE,MATCH_BOARD_SIZE,MATCH_BOARD_TITLE,MATCH_BOARD_STATUS,MATCH_BOARD_VIDEO) values (317,'testuser09','서울특별시 영등포구 동네축구장 8시 ㄱㄱ',to_date('24/03/14','RR/MM/DD'),1,'부산','중구',to_date('24/03/14','RR/MM/DD'),'22:00','30','3','박바보','경기종료',null);
REM INSERTING into MATCH_RECORD
SET DEFINE OFF;
REM INSERTING into MEMBER
SET DEFINE OFF;
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser2','$2a$10$iLBvLhlQVuTIBntSrJzhQeoGlOxVbBpiEF4WCLRBVYlZkTgxjcaKy','김도현짱','일반회원','testuser2@gmail.com','남',36.5,'1970-03-15',541);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('e789546','$2a$10$8t6RB7c3CYPaWEc3Fskzp..Qu0qpLpfEfjFsxms235BUE5Cn7hBim','박지은','일반회원','etew@naver.com','남',5,'1941-10-18',335);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser0316','$2a$10$kgGCByeK4FD5gVY1Zz9iteklmGsjLDtlw5hrggvuMwhQIU91PLS5u','베베베','일반회원','st@st.net','여',36.5,'1938-02-18',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser5','$2a$10$7grb8qDEECUsTMZv4nXZcurgqsxfL5g3rLUOzTtkyPujZbwS5kMnW','내가접수','매니저','limchaewoo4819@gmail.com','여',11.5,'1986-10-1 ',546);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser0318','$2a$10$wQ2bzV/Yr9b3JrytFTunIuU9UUCngDpSVHvAro7y/Yaxjf5T.urSq','메메','일반회원','st22@st.net','남',36.5,'1939-11-18',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testeeee','$2a$10$mqajOKczsGxC02vxYBAX9uYReWY0LEMzGc/amIMMr/9fJch3IVysa','박지은','매니저','test4545@gmail.com','여',36.5,'1990-1-1  ',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser20','$2a$10$5mmoqqx4JrlhjtNuX4fCzegY1ybmGH1scqNpqEuwWsHlcCy.5v.pS','이름변경','일반회원','testuser20@gmail.com','남',36.5,'1996-03-07',547);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser10','$2a$10$mqajOKczsGxC02vxYBAX9uYReWY0LEMzGc/amIMMr/9fJch3IVysa','테스터십','일반회원','testuser10@gmail.com','남',37.5,'1996-03-07',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser11','$2a$10$mqajOKczsGxC02vxYBAX9uYReWY0LEMzGc/amIMMr/9fJch3IVysa','테스터십일','일반회원','testuser11@gmail.com','남',36.5,'1996-03-07',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser21','$2a$10$mqajOKczsGxC02vxYBAX9uYReWY0LEMzGc/amIMMr/9fJch3IVysa','이일테','일반회원','testuser20@gmail.com','남',36.5,'1996-03-07',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser22','$2a$10$mqajOKczsGxC02vxYBAX9uYReWY0LEMzGc/amIMMr/9fJch3IVysa','이이테','일반회원','testuser21@gmail.com','남',36.5,'1996-03-07',554);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser14','$2a$10$mqajOKczsGxC02vxYBAX9uYReWY0LEMzGc/amIMMr/9fJch3IVysa','테스터십사','일반회원','testuser14@gmail.com','여',80.5,'1996-03-15',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser23','$2a$10$mqajOKczsGxC02vxYBAX9uYReWY0LEMzGc/amIMMr/9fJch3IVysa','조아쒀','일반회원','testuser22@gmail.com','남',36.5,'1996-03-07',549);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser24','$2a$10$mqajOKczsGxC02vxYBAX9uYReWY0LEMzGc/amIMMr/9fJch3IVysa','이사테','일반회원','testuser23@gmail.com','남',36.5,'1996-03-07',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser25','$2a$10$mqajOKczsGxC02vxYBAX9uYReWY0LEMzGc/amIMMr/9fJch3IVysa','이오테','일반회원','testuser24@gmail.com','남',36.5,'1996-03-07',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser26','$2a$10$mqajOKczsGxC02vxYBAX9uYReWY0LEMzGc/amIMMr/9fJch3IVysa','이육테','일반회원','testuser25@gmail.com','남',36.5,'1996-03-07',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser27','$2a$10$mqajOKczsGxC02vxYBAX9uYReWY0LEMzGc/amIMMr/9fJch3IVysa','이칠테','일반회원','testuser26@gmail.com','남',36.5,'1996-03-07',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser28','$2a$10$mqajOKczsGxC02vxYBAX9uYReWY0LEMzGc/amIMMr/9fJch3IVysa','이팔테','일반회원','testuser27@gmail.com','남',36.5,'1996-03-07',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser29','$2a$10$mqajOKczsGxC02vxYBAX9uYReWY0LEMzGc/amIMMr/9fJch3IVysa','이구테','일반회원','testuser28@gmail.com','남',36.5,'1996-03-07',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser30','$2a$10$mqajOKczsGxC02vxYBAX9uYReWY0LEMzGc/amIMMr/9fJch3IVysa','삼십테','일반회원','testuser29@gmail.com','남',36.5,'1996-03-07',548);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser31','$2a$10$mqajOKczsGxC02vxYBAX9uYReWY0LEMzGc/amIMMr/9fJch3IVysa','삼일테','일반회원','testuser30@gmail.com','남',36.5,'1996-03-07',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser32','$2a$10$mqajOKczsGxC02vxYBAX9uYReWY0LEMzGc/amIMMr/9fJch3IVysa','삼이테','일반회원','testuser31@gmail.com','남',36.5,'1996-03-07',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('dong87','$2a$10$MhgxTfGec7QUhdLRLBYEe.//egjCvsgg8DxzgcQ3xYgh3AJSoeIz6','동원','관리자','scan0807@nate.com','남',36.5,'1939-03-18',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('tt7899','$2a$10$5mmoqqx4JrlhjtNuX4fCzegY1ybmGH1scqNpqEuwWsHlcCy.5v.pS','태호짱','일반회원','wef789@naver.com','남',36.5,'1938-03-02',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('adminuser1','$2a$10$o9p1o2rlwnjPDE0761x2UeAyMnjslmO0Hb8z01wWu1Cq6GDtvM1Uq','관리자여','관리자','adminuser1@gmail.com','남',36.5,'1923-02-07',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('manager1','$2a$10$EvJFQSEzn5EqTjbKS7YaK.ptwqkvYPsigGOHG55ocNtc0HFDq5uPC','매니저','매니저','manager1@gmail.com','남',36.5,'2023-06-15',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser1','$2a$10$mqajOKczsGxC02vxYBAX9uYReWY0LEMzGc/amIMMr/9fJch3IVysa','손푸름','일반회원','sonpulum@naver.com','남',70,'1996-03-07',595);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser88','$2a$10$bQ3DU3Ai6dxRwGiif3cAXeGohhwf9ZTeTIRHgEfptt3xCPriphcDG','고준원','일반회원','testuser88@gmail.com','남',36.5,'1990-03-14',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser888','$2a$10$V1waW1iotNsEuCIft7s32OHms9NB5H9UAVVihLLhFBJEjcC.hJLFi','김도현','관리자','testuser888@gmail.com','남',36.5,'2023-08-16',383);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser87','$2a$10$aseUVvIa//xaZp1vs7Q8Tu1e/uFVGuwfyffIHVQH9IasWoZRLdIpe','김도현이트','일반회원','asdf@gmail.com','남',36.5,'1940-10-15',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser45','$2a$10$qu/.xkIknIDygllJVHMoJe3HqSGZ62gUGduYJNrHwbEqRuRX/L3Qy','김도현','일반회원','testuser45@gmail.com','남',36.5,'1923-05-03',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('adminuser01','$2a$10$vsorcZ8DMODhgH3oj0dPzOm2D/ki0XIOkRbkq7DSiqC4FVJrj/uee','김관리','관리자','adminuser01@nate.com','남',99,'1998-06-11',161);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('qkekthfl20','$2a$10$5mmoqqx4JrlhjtNuX4fCzegY1ybmGH1scqNpqEuwWsHlcCy.5v.pS','현태호','일반회원','qkekekekekek20@naver.com','남',36.5,'2000-02-16',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('test0314','$2a$10$lYJhAgE8K63WenDGX5U9lOpDqkyvfEnjZY5n348r.SAliWjnGaVS2','준준','일반회원','123@123.net','남',36.5,'1939-01-18',377);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser59','$2a$10$s.7eJM98kAGuOMauIRA/JOgLdYm3TgIW7GvjaDN/3alpSSSf8HsOe','김김김','일반회원','testuser59@gmail.com','남',36.5,'1941-11-18',265);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('star78','$2a$10$4kBSAWQteDTZXIC7HX7k1ecMoeDauQgVnzxVy7gCQNqdWT/ICowxu','스타벅스','관리자','star78@kd.ek','남',36.5,'1939-10-18',382);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('mamama78','$2a$10$AZhEqotippqsZYuIrz3dROxrL44SzJ.bdeTt/kQfaOGPj7uMsWXye','뚱이님','관리자','dksxlzhd0807@naver.com','여',90,'1940-10-18',437);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('matchtest','$2a$10$oGaRQYnPvKjf/zAtS1qsjeamo7bH535yGMA0ORkbeCwJXSoaddYUq','두가자잇','일반회원','test@test.com','남',36.5,'1937-04-16',550);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser74','$2a$10$uR6PgVWdl.x.T58rYi02k.t2x5uX25.KW4qREutFA7ICQBxtcuWMS','김나디','일반회원','testuser74@gmail.com','남',36.5,'1940-11-19',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('kots524','$2a$10$rG0f7VI9QW1miVFPbqy7vOoEAKMguvuWbyyIfzMN69KGNChe/fIEu','형석이','일반회원','kots524@naver.com','남',36.5,'1923-01-01',551);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('jiji78','$2a$10$VvwfbfGrYZ02Z2xnedc/Reg1uwvwA3FkwzqevGlxzI5JemrNr6E2O','지지영','일반회원','jiji78@naver.com','남',36.5,'1938-09-17',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('cloud1123','$2a$10$yiUnPnGpwF6sJfj9MYLKMOxfoFsmjJpf7DGyjKUMQD6diPGTqR0g2','지은이','일반회원','hazel87.dev@gmail.com','남',36.5,'1924-04-01',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('dfwfw99','$2a$10$WQvZGub8w//WMmpzmDC.5uI/hPnhD3zCW8P3U088nAHZG6F9.Bjzq','안녕','일반회원','jieun@naver.com','여',36.5,'1925-03-03',569);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser08','$2a$10$WGmGWzTmOpxh/oCDvRVrCeWsbBZogSL2dMlOIi5x0GNKiBWaoi17u','테유팔','일반회원','testuser08@gmail.com','남',36.5,'1925-04-05',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser09','$2a$10$DEQVlqCddd0EMEJ/1vVZlO0DBST.LfQHxBmsZVMe.lFlEmKGYW2Zm','테유구','일반회원','testuser09@gmail.com','여',36.5,'1927-03-04',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuesr10','$2a$10$6yaNXzTWtWXKHSoXa8dti.oMUgte8HXw7lmetE.B.lA5.KGSOtMq6','테유십','일반회원','testuser10@gmil.com','남',36.5,'1926-06-04',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser12','$2a$10$6s.Xir0hERNZzOYx4J2gUeTFu61fwpayzWRixtz2uGvHAeiIuPLfu','테십이','일반회원','testuser12@gmail.com','남',36.5,'1926-04-02',0);
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_LEVEL,MEMBER_EMAIL,MEMBER_GENDER,MEMBER_MANNER,MEMBER_BIRTH,IMG_NO) values ('testuser13','$2a$10$A1Srd3fmOm1RQ/wWpbIO4uUP3bvbXO/2lJQymbTUVwr3L2RY/Al1q','테십삼','일반회원','testuser13@gmail.com','남',36.5,'1924-02-03',0);
REM INSERTING into PAYMENT
SET DEFINE OFF;
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (119,'T465ec39306d7b2d7b7c','테스트구장5',null,100000,0,to_date('23/05/19','RR/MM/DD'),'testuser999','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (95,'T4647baa306d7b2d645d','테스트구장5',null,100000,0,to_date('23/05/17','RR/MM/DD'),'testuser999','CARD');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (178,'T4744a660dc40ec9f6db','고양 싸커스토리 축구클럽 운정점',null,100000,0,to_date('23/05/20','RR/MM/DD'),'testuser47','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (96,'T4649b7a349946124092','테스트구장5',null,100000,0,to_date('23/06/18','RR/MM/DD'),'testuser999','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (177,'T47449f70dc40ec9f6d6','고양 싸커스토리 축구클럽 운정점',null,100000,0,to_date('23/05/30','RR/MM/DD'),'testuser47','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (179,'T4744fc262ea0baea0d4','고양 싸커스토리 축구클럽 운정점',null,100000,100000,to_date('23/05/28','RR/MM/DD'),'testuser47','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (155,'T46ec2d462ea0bae6223','경기 광주 팀업캠퍼스',null,30000,0,to_date('23/06/25','RR/MM/DD'),'testuser999','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (118,'T465eafd349946125504','테스트구장5',null,100000,0,to_date('23/05/19','RR/MM/DD'),'testuser999','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (157,'T46f081162ea0bae666a','고양 싸커스토리 축구클럽 운정점',null,100000,0,to_date('23/05/26','RR/MM/DD'),'testuser999','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (180,'T47468d162ea0baea1cd','고양 싸커스토리 축구클럽 운정점',null,100000,100000,to_date('23/05/30','RR/MM/DD'),'testuser999','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (181,'T47558020dc40ec9fe65','고양 싸커스토리 축구클럽 운정점',null,100000,100000,to_date('23/05/30','RR/MM/DD'),'testuser999','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (212,'T476edde62ea0baebccb','고양 싸커스토리 축구클럽 운정점',null,100000,0,to_date('23/06/01','RR/MM/DD'),'testuser777','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (213,'T476ee490dc40ec912d7','고양 싸커스토리 축구클럽 운정점',null,100000,0,to_date('23/06/01','RR/MM/DD'),'testuser777','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (210,'T476d4500dc40ec90efa','고양 싸커스토리 축구클럽 운정점',null,100000,100000,to_date('23/05/31','RR/MM/DD'),'testuser999','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (214,'T476ef3d0dc40ec912e1','고양 싸커스토리 축구클럽 운정점',null,100000,100000,to_date('23/06/01','RR/MM/DD'),'testuser777','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (211,'T476dffc62ea0baeb9b2','고양 싸커스토리 축구클럽 운정점',null,100000,100000,to_date('23/05/31','RR/MM/DD'),'testuser44','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (215,'T476f1600dc40ec912fd','고양 싸커스토리 축구클럽 운정점',null,100000,100000,to_date('23/06/01','RR/MM/DD'),'testuser777','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (216,'T47712dc62ea0baebfae','고양 싸커스토리 축구클럽 운정점',null,100000,100000,to_date('23/06/01','RR/MM/DD'),'testuser777','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (217,'T477e7a262ea0baec597','고양 싸커스토리 축구클럽 운정점',null,100000,100000,to_date('23/06/01','RR/MM/DD'),'testuser777','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (235,'T4799ca60dc40ec930f4','고양 싸커스토리 축구클럽 운정점',null,100000,100000,to_date('23/06/03','RR/MM/DD'),'testuser888','CARD');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (255,'T483b5eb62ea0bae3c0f','경기 광주 팀업캠퍼스',687,30000,30000,to_date('23/06/10','RR/MM/DD'),'testuser1','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (275,'T485e04f62ea0bae4b0d','서울 노원 R 실내 풋살장',null,35000,0,to_date('23/06/12','RR/MM/DD'),'testuser888','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (276,'T485e1d462ea0bae4b25','서울 노원 R 실내 풋살장',null,35000,0,to_date('23/06/12','RR/MM/DD'),'testuser888','CARD');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (277,'T485e6ad0dc40ec9a0c8','서울 노원 R 실내 풋살장',704,35000,35000,to_date('23/06/12','RR/MM/DD'),'testuser888','CARD');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (278,'T485edcb0dc40ec9a0f8','서울 노원 R 실내 풋살장',705,35000,35000,to_date('23/06/12','RR/MM/DD'),'testuser888','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (295,'T486cda70dc40ec9aabc','서울 노원 R 실내 풋살장',722,35000,35000,to_date('23/06/13','RR/MM/DD'),'testuser2','CARD');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (296,'T487010162ea0bae578e','인천 계양 쿠FC 축구센터',724,50000,50000,to_date('23/06/13','RR/MM/DD'),'testuser888','CARD');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (297,'T487347a0dc40ec9aeb4','테스트구장1001',null,50000,0,to_date('23/06/13','RR/MM/DD'),'testuser888','CARD');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (298,'T487d13462ea0bae5dca','서울 노원 R 실내 풋살장',726,35000,35000,to_date('23/06/13','RR/MM/DD'),'testeeee','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (299,'T487ec970dc40ec9b48a','경기 광주 팀업캠퍼스',null,30000,0,to_date('23/06/13','RR/MM/DD'),'adminuser1','MONEY');
Insert into PAYMENT (PAYMENT_NO,PAYMENT_TID,PAYMENT_NAME,RESERVE_NO,PAYMENT_TOTAL,PAYMENT_REMAIN,PAYMENT_TIME,MEMBER_ID,METHOD_TYPE) values (300,'T487ec9b62ea0bae5ef8','서울 노원 R 실내 풋살장',734,35000,35000,to_date('23/06/13','RR/MM/DD'),'testuser22','MONEY');
REM INSERTING into RESERVE
SET DEFINE OFF;
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (722,'testuser2',4,'예약완료',12,to_date('23/06/16','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (723,'testuser2',23,'대기중',84,to_date('23/06/16','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (724,'testuser888',26,'예약완료',93,to_date('23/06/17','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (684,'testuser1',7,'대기중',1,to_date('23/06/10','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (727,'testuser20',6,'대기중',15,to_date('23/06/18','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (685,'testuser1',7,'대기중',1,to_date('23/06/10','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (726,'testeeee',4,'예약완료',10,to_date('23/06/15','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (686,'testuser1',7,'대기중',1,to_date('23/06/10','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (728,'testuser20',6,'대기중',15,to_date('23/06/18','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (687,'testuser1',7,'예약완료',1,to_date('23/06/10','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (688,'testuser1',7,'대기중',1,to_date('23/06/15','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (689,'testuser1',7,'대기중',1,to_date('23/06/15','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (701,'testuser888',4,'대기중',11,to_date('23/06/12','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (705,'testuser888',4,'예약완료',13,to_date('23/06/16','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (704,'testuser888',4,'예약완료',13,to_date('23/06/15','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (721,'testuser888',370,'대기중',42,to_date('23/06/14','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (729,'adminuser1',26,'대기중',93,to_date('23/06/16','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (730,'adminuser1',26,'대기중',93,to_date('23/06/16','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (682,'testuser1',7,'대기중',2,to_date('23/06/10','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (683,'testuser1',7,'대기중',2,to_date('23/06/10','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (731,'adminuser1',4,'대기중',12,to_date('23/06/17','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (732,'adminuser1',6,'대기중',46,to_date('23/06/18','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (734,'testuser22',4,'예약완료',11,to_date('23/06/16','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (735,'testuser1',4,'대기중',10,to_date('24/03/20','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (736,'testuser1',4,'대기중',10,to_date('24/03/20','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (737,'testuser1',4,'대기중',13,to_date('24/03/15','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (738,'testuser1',4,'대기중',13,to_date('24/03/14','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (739,'cloud1123',4,'대기중',10,to_date('24/03/16','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (740,'cloud1123',4,'대기중',10,to_date('24/03/16','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (741,'cloud1123',4,'대기중',12,to_date('24/03/15','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (742,'cloud1123',7,'대기중',4,to_date('24/03/16','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (743,'cloud1123',4,'대기중',11,to_date('24/03/15','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (744,'cloud1123',4,'대기중',12,to_date('24/03/15','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (745,'testuser1',4,'대기중',10,to_date('24/03/17','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (746,'testuser1',4,'대기중',10,to_date('24/03/15','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (747,'testuser1',6,'대기중',15,to_date('24/03/15','RR/MM/DD'));
Insert into RESERVE (RESERVE_NO,MEMBER_ID,GROUND_NO,RESERVE_STATUS,SCHEDULE_NO,RESERVE_DATE) values (748,'testuser1',4,'대기중',10,to_date('24/03/15','RR/MM/DD'));
REM INSERTING into SCHEDULE
SET DEFINE OFF;
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (2,7,'06:00','08:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (3,7,'08:00','10:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (4,7,'10:00','12:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (5,7,'12:00','14:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (6,7,'14:00','16:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (7,7,'16:00','18:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (8,7,'18:00','20:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (9,7,'20:00','22:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (10,4,'06:00','07:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (11,4,'07:00','08:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (12,4,'08:00','09:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (13,4,'09:00','10:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (14,4,'10:00','11:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (15,6,'06:00','08:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (58,379,'10:00','12:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (63,382,'06:00','08:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (65,382,'08:00','10:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (66,382,'10:00','12:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (56,379,'06:00','08:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (44,6,'08:00','10:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (45,6,'10:00','12:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (46,6,'12:00','14:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (47,6,'14:00','16:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (57,379,'08:00','10:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (67,382,'12:00','14:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (68,21,'16:00','18:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (69,21,'18:00','20:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (74,385,'08:00','10:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (70,385,'06:00','08:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (75,385,'10:00','12:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (76,385,'12:00','14:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (77,385,'14:00','16:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (78,22,'18:00','20:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (79,22,'20:00','22:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (314,370,'06:00','08:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (324,370,'08:00','10:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (82,23,'18:00','20:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (83,23,'20:00','22:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (84,23,'22:00','24:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (85,24,'17:00','18:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (86,24,'18:00','19:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (87,24,'19:00','20:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (88,24,'20:00','21:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (89,24,'21:00','22:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (90,25,'20:00','22:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (91,25,'22:00','24:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (92,26,'18:00','20:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (93,26,'20:00','22:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (94,26,'22:00','24:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (95,27,'18:00','20:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (96,27,'20:00','22:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (97,27,'22:00','24:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (98,27,'24:00','26:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (99,29,'18:00','20:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (100,29,'20:00','22:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (101,29,'22:00','24:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (113,390,'10:00','12:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (102,390,'06:00','08:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (103,390,'08:00','10:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (123,390,'12:00','14:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (133,390,'14:00','16:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (143,390,'16:00','18:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (193,391,'06:00','08:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (204,391,'08:00','10:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (214,391,'10:00','12:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (224,391,'12:00','14:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (234,391,'14:00','16:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (244,391,'16:00','18:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (254,28,'06:00','08:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (264,28,'08:00','10:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (274,28,'10:00','12:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (284,389,'06:00','08:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (293,392,'06:00','08:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (303,392,'08:00','10:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (334,370,'10:00','12:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (344,370,'12:00','14:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (354,370,'14:00','16:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (364,376,'10:00','12:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (374,376,'12:00','14:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (384,376,'14:00','16:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (394,376,'16:00','18:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (404,384,'11:00','12:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (414,384,'12:00','13:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (424,384,'13:00','14:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (434,384,'14:00','15:00');
Insert into SCHEDULE (SCHEDULE_NO,GROUND_NO,SCHEDULE_START,SCHEDULE_END) values (444,384,'15:00','16:00');
REM INSERTING into TEAM
SET DEFINE OFF;
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (68,'테1','월요일','아침(06~10시)','경상북도','경산시','남자','10대',5,2,to_date('23/05/22','RR/MM/DD'),'testuser5','sdgsgssgdagsadagsgasgse',null,null,null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (1,'테스트B','월','15시','서울','마포구','남','20대',10,3,to_date('23/05/12','RR/MM/DD'),'testuser5',null,null,null,null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (69,'테2','월요일','아침(06~10시)','경상남도','거제시','남자','10대',1,0,to_date('23/05/22','RR/MM/DD'),'testuser5','gdg',null,null,null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (73,'테3','목요일','저녁(18~24시)','울산광역시','동구','여자','50대 이상',0,0,to_date('23/05/22','RR/MM/DD'),'testuser5','테3',null,null,null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (101,'하이룽','월요일','아침(06~10시)','대전광역시','대덕구','남자','10대',0,0,to_date('23/06/07','RR/MM/DD'),'testuser5','바갑스무닏르다',null,null,null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (77,'왜안될까','월요일','아침(06~10시)','서울특별시','강남구','남자','10대',5,1,to_date('23/05/26','RR/MM/DD'),'testuser5','gdgdgdgd22',null,null,null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (122,'ggg','월요일','아침(06~10시)','서울특별시','관악구','남자','10대',0,0,to_date('23/06/09','RR/MM/DD'),'test0314','ggg',0,to_date('23/06/09','RR/MM/DD'),null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (141,'불났다','월요일','아침(06~10시)','인천광역시','부평구','남자','10대',0,0,to_date('23/06/11','RR/MM/DD'),'testuser5','비온다',0,to_date('23/06/11','RR/MM/DD'),null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (145,'347','월요일','아침(06~10시)','울산광역시','남구','남자','10대',0,0,to_date('23/06/11','RR/MM/DD'),'testuser5','ㅎㅇㅎ',0,to_date('23/06/11','RR/MM/DD'),null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (143,'338테스트','월요일','아침(06~10시)','대전광역시','대덕구','남자','10대',0,0,to_date('23/06/11','RR/MM/DD'),'testuser5','수정했다 될까?',0,to_date('23/06/11','RR/MM/DD'),null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (144,'346테스트','월요일','아침(06~10시)','대전광역시','대덕구','남자','10대',0,0,to_date('23/06/11','RR/MM/DD'),'testuser5','ㅎㅇㅎ',0,to_date('23/06/11','RR/MM/DD'),null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (146,'349','월요일','아침(06~10시)','전라남도','광양시','남자','10대',0,0,to_date('23/06/11','RR/MM/DD'),'testuser5','ㅎㅇㅎ',0,to_date('23/06/11','RR/MM/DD'),null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (147,'350','월요일','아침(06~10시)','경상남도','거제시','남자','10대',0,0,to_date('23/06/11','RR/MM/DD'),'testuser5','ㅎㅇㅎ',0,to_date('23/06/11','RR/MM/DD'),null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (148,'351','월요일','아침(06~10시)','울산광역시','남구','남자','10대',0,0,to_date('23/06/11','RR/MM/DD'),'testuser5','ㅎㅇㅎ',0,to_date('23/06/11','RR/MM/DD'),null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (149,'하이','월요일','아침(06~10시)','경상북도','경산시','남자','10대',0,0,to_date('23/06/11','RR/MM/DD'),'testuser5','12',0,to_date('23/06/11','RR/MM/DD'),null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (150,'라이더','월요일','아침(06~10시)','대구광역시','남구','남자','10대',0,0,to_date('23/06/11','RR/MM/DD'),'testuser5','12',0,to_date('23/06/11','RR/MM/DD'),null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (162,'erd','월요일','저녁(18~24시)','인천광역시','계양구','남자','30대',0,0,to_date('23/06/13','RR/MM/DD'),'testeeee','erd를 잘하는 사람들만',0,to_date('23/06/13','RR/MM/DD'),null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (152,'아뭐라','월요일','아침(06~10시)','대구광역시','남구','남자','10대',0,0,to_date('23/06/11','RR/MM/DD'),'testuser5','151',0,to_date('23/06/11','RR/MM/DD'),null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (155,'잚못','월요일','아침(06~10시)','광주광역시','광산구','남자','10대',0,0,to_date('23/06/11','RR/MM/DD'),'testuser5','ㅎㅎ',0,to_date('23/06/11','RR/MM/DD'),null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (156,'444','월요일','아침(06~10시)','광주광역시','광산구','남자','10대',0,0,to_date('23/06/11','RR/MM/DD'),'testuser5','dgd',0,to_date('23/06/11','RR/MM/DD'),null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (157,'503','월요일','아침(06~10시)','경상남도','거제시','남자','10대',0,0,to_date('23/06/11','RR/MM/DD'),'testuser5','dg',0,to_date('23/06/11','RR/MM/DD'),null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (161,'아웃백스테이크하우스','월요일','아침(06~10시)','부산광역시','강서구','남자','10대',0,0,to_date('23/06/12','RR/MM/DD'),'testuser5','취업시켜줘 취업시켜줘 취업시켜줘',0,to_date('23/06/12','RR/MM/DD'),null);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (183,'어서와','월요일','아침(06~10시)','서울특별시','강남구','남자','10대',0,0,to_date('24/03/17','RR/MM/DD'),'manager1','어서와~',0,to_date('24/03/17','RR/MM/DD'),597);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (196,'구름이와지은이','금요일','아침(06~10시)','대구광역시','남구','남자','10대',0,0,to_date('24/03/17','RR/MM/DD'),'cloud1123','구름이와지은이',0,to_date('24/03/17','RR/MM/DD'),0);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (176,'바보','월요일','아침(06~10시)','대전광역시','대덕구','남자','10대',0,0,to_date('24/03/14','RR/MM/DD'),'testuser09','바보',0,to_date('24/03/14','RR/MM/DD'),574);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (190,'이게뭘까','월요일','아침(06~10시)','광주광역시','광산구','남자','10대',0,0,to_date('24/03/17','RR/MM/DD'),'testuser09','이리와보십숑',0,to_date('24/03/17','RR/MM/DD'),0);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (191,'테스트중입니다!','월요일','아침(06~10시)','부산광역시','강서구','남자','10대',0,0,to_date('24/03/17','RR/MM/DD'),'testuser09','테스트중입니다!',0,to_date('24/03/17','RR/MM/DD'),0);
Insert into TEAM (TEAM_NO,TEAM_NAME,TEAM_DAY,TEAM_TIME,TEAM_CITY,TEAM_LOCATION,TEAM_GENDER,TEAM_AGE,TEAM_WIN,TEAM_LOSE,TEAM_DATE,TEAM_LEADER,TEAM_INFO,TEAM_READ,TEAM_UPDATE,IMG_NO) values (192,'강아지테스트','월요일','아침(06~10시)','대구광역시','남구','남자','10대',0,0,to_date('24/03/17','RR/MM/DD'),'testuser09','테스트중입니다!',0,to_date('24/03/17','RR/MM/DD'),603);
REM INSERTING into TEAM_MEMBER
SET DEFINE OFF;
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (1,'tt7899',1,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (42,'testuser1',1,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (3,'testuser5',68,'팀장');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (5,'testuser5',69,'팀장');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (7,'testuser5',73,'팀장');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (8,'testuser10',1,'팀장');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (182,'testuser74',161,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (86,'test0314',122,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (167,'testuser20',68,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (12,'testuser14',1,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (168,'testuser21',68,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (83,'testuser5',101,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (169,'testuser22',68,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (87,'mamama78',77,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (170,'testuser23',68,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (18,'testuser5',1,'운영진');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (19,'testuser10',68,'용병');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (102,'mamama78',73,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (22,'testuser5',77,'팀장');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (171,'testuser24',68,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (104,'testuser5',141,'팀장');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (107,'testuser5',143,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (172,'testuser25',69,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (115,'testuser5',146,null);
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (121,'testuser5',149,null);
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (125,'testuser5',150,null);
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (149,'testuser14',68,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (133,'testuser5',152,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (137,'testuser5',155,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (139,'testuser5',156,'팀장');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (148,'mamama78',157,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (143,'mamama78',156,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (145,'testuser5',157,'팀장');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (173,'testuser26',69,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (163,'testuser5',161,'팀장');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (166,'testuser11',122,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (174,'testuser27',69,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (175,'testuser28',69,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (176,'testuser29',77,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (177,'testuser30',77,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (178,'testuser31',77,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (179,'testuser32',77,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (181,'testeeee',162,'팀장');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (183,'adminuser1',161,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (205,'manager1',183,'팀장');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (225,'cloud1123',196,'팀장');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (215,'testuser09',190,'팀장');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (192,'testuser09',176,'팀장');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (193,'testuser12',176,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (194,'testuser13',176,'일반회원');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (217,'testuser09',191,'팀장');
Insert into TEAM_MEMBER (TEAM_MEMBER_NO,MEMBER_ID,TEAM_NO,TEAM_MEMBER_LEVEL) values (219,'testuser09',192,'팀장');
REM INSERTING into WAITING
SET DEFINE OFF;
Insert into WAITING (WAITING_NO,MEMBER_ID,TEAM_NO,MEMBER_STATUS,INTRODUCTION) values (188,'test0314',122,'대기중','ㅎㅎ');
Insert into WAITING (WAITING_NO,MEMBER_ID,TEAM_NO,MEMBER_STATUS,INTRODUCTION) values (221,'testuser0318',122,'대기중','가입할게요');
Insert into WAITING (WAITING_NO,MEMBER_ID,TEAM_NO,MEMBER_STATUS,INTRODUCTION) values (255,'testuser20',68,'대기중','가입신청합니다');
Insert into WAITING (WAITING_NO,MEMBER_ID,TEAM_NO,MEMBER_STATUS,INTRODUCTION) values (264,'matchtest',1,'대기중','나 받아줘잉');
Insert into WAITING (WAITING_NO,MEMBER_ID,TEAM_NO,MEMBER_STATUS,INTRODUCTION) values (258,null,73,'대기중','해줘');
Insert into WAITING (WAITING_NO,MEMBER_ID,TEAM_NO,MEMBER_STATUS,INTRODUCTION) values (259,null,69,'대기중','asdf');
Insert into WAITING (WAITING_NO,MEMBER_ID,TEAM_NO,MEMBER_STATUS,INTRODUCTION) values (265,'matchtest',68,'대기중','나좀 받아줘잉');
Insert into WAITING (WAITING_NO,MEMBER_ID,TEAM_NO,MEMBER_STATUS,INTRODUCTION) values (261,null,1,'대기중',null);
Insert into WAITING (WAITING_NO,MEMBER_ID,TEAM_NO,MEMBER_STATUS,INTRODUCTION) values (266,'testuser20',69,'대기중',null);
Insert into WAITING (WAITING_NO,MEMBER_ID,TEAM_NO,MEMBER_STATUS,INTRODUCTION) values (267,'testuser20',69,'대기중','ㅇㅇ');
Insert into WAITING (WAITING_NO,MEMBER_ID,TEAM_NO,MEMBER_STATUS,INTRODUCTION) values (268,'testuser20',69,'대기중','ㅁㄴㅁㄴㄴ');
--------------------------------------------------------
--  DDL for Index SYS_C008428
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008428" ON "CHAT_MESSAGE" ("MESSAGE_NO")
--------------------------------------------------------
--  DDL for Index SYS_C008439
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008439" ON "ENTRY" ("ENTRY_NO")
--------------------------------------------------------
--  DDL for Index SYS_C008451
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008451" ON "GROUND_IMAGE" ("IMG_NO", "GROUND_NO")
--------------------------------------------------------
--  DDL for Index SYS_C008323
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008323" ON "IMG" ("IMG_NO")
--------------------------------------------------------
--  DDL for Index SYS_C008325
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008325" ON "MAIN_IMG" ("MAIN_NO")
--------------------------------------------------------
--  DDL for Index SYS_C008416
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008416" ON "MATCH" ("MATCH_NO")
--------------------------------------------------------
--  DDL for Index SYS_C008391
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008391" ON "MATCH_BOARD" ("MATCH_BOARD_NO")
--------------------------------------------------------
--  DDL for Index SYS_C008421
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008421" ON "MATCH_RECORD" ("RECORD_NO")
--------------------------------------------------------
--  DDL for Index SYS_C008339
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008339" ON "MEMBER" ("MEMBER_ID")
--------------------------------------------------------
--  DDL for Index SYS_C008464
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008464" ON "PAYMENT" ("PAYMENT_NO")
--------------------------------------------------------
--  DDL for Index SYS_C008455
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008455" ON "RESERVE" ("RESERVE_NO")
--------------------------------------------------------
--  DDL for Index SYS_C008342
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008342" ON "SCHEDULE" ("SCHEDULE_NO")
--------------------------------------------------------
--  DDL for Index SYS_C008355
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008355" ON "TEAM" ("TEAM_NO")
--------------------------------------------------------
--  DDL for Index SYS_C008356
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008356" ON "TEAM" ("TEAM_NAME")
--------------------------------------------------------
--  DDL for Index SYS_C008359
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008359" ON "TEAM_MEMBER" ("TEAM_MEMBER_NO")
--------------------------------------------------------
--  DDL for Index UNIQUE_MEMBER_TEAM
--------------------------------------------------------

  CREATE UNIQUE INDEX "UNIQUE_MEMBER_TEAM" ON "TEAM_MEMBER" ("MEMBER_ID", "TEAM_NO")
--------------------------------------------------------
--  DDL for Index SYS_C008364
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008364" ON "WAITING" ("WAITING_NO")
--------------------------------------------------------
--  Constraints for Table CHAT_MESSAGE
--------------------------------------------------------

  ALTER TABLE "CHAT_MESSAGE" MODIFY ("ROOM_NO" NOT NULL ENABLE)
  ALTER TABLE "CHAT_MESSAGE" MODIFY ("MESSAGE_BODY" NOT NULL ENABLE)
  ALTER TABLE "CHAT_MESSAGE" MODIFY ("MESSAGE_TIME" NOT NULL ENABLE)
  ALTER TABLE "CHAT_MESSAGE" ADD PRIMARY KEY ("MESSAGE_NO")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table ENTRY
--------------------------------------------------------

  ALTER TABLE "ENTRY" MODIFY ("MATCH_NO" NOT NULL ENABLE)
  ALTER TABLE "ENTRY" MODIFY ("TEAM_NO" NOT NULL ENABLE)
  ALTER TABLE "ENTRY" MODIFY ("MEMBER_ID" NOT NULL ENABLE)
  ALTER TABLE "ENTRY" ADD PRIMARY KEY ("ENTRY_NO")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table GROUND
--------------------------------------------------------

  ALTER TABLE "GROUND" MODIFY ("GROUND_BASIC_ADDR" NOT NULL ENABLE)
  ALTER TABLE "GROUND" MODIFY ("GROUND_DETAIL_ADDR" NOT NULL ENABLE)
  ALTER TABLE "GROUND" MODIFY ("GROUND_NAME" NOT NULL ENABLE)
  ALTER TABLE "GROUND" MODIFY ("GROUND_PRICE" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table GROUND_IMAGE
--------------------------------------------------------

  ALTER TABLE "GROUND_IMAGE" MODIFY ("IMG_NO" NOT NULL ENABLE)
  ALTER TABLE "GROUND_IMAGE" MODIFY ("GROUND_NO" NOT NULL ENABLE)
  ALTER TABLE "GROUND_IMAGE" ADD PRIMARY KEY ("IMG_NO", "GROUND_NO")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table IMG
--------------------------------------------------------

  ALTER TABLE "IMG" MODIFY ("IMG_NAME" NOT NULL ENABLE)
  ALTER TABLE "IMG" MODIFY ("IMG_TYPE" NOT NULL ENABLE)
  ALTER TABLE "IMG" MODIFY ("IMG_SIZE" NOT NULL ENABLE)
  ALTER TABLE "IMG" ADD PRIMARY KEY ("IMG_NO")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table MAIN_IMG
--------------------------------------------------------

  ALTER TABLE "MAIN_IMG" MODIFY ("MAIN_TITLE" NOT NULL ENABLE)
  ALTER TABLE "MAIN_IMG" ADD PRIMARY KEY ("MAIN_NO")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table MATCH
--------------------------------------------------------

  ALTER TABLE "MATCH" MODIFY ("MATCH_CITY" NOT NULL ENABLE)
  ALTER TABLE "MATCH" MODIFY ("MATCH_LOCATION" NOT NULL ENABLE)
  ALTER TABLE "MATCH" MODIFY ("MATCH_DATE" NOT NULL ENABLE)
  ALTER TABLE "MATCH" MODIFY ("MATCH_TIME" NOT NULL ENABLE)
  ALTER TABLE "MATCH" MODIFY ("MATCH_AGE" NOT NULL ENABLE)
  ALTER TABLE "MATCH" MODIFY ("MATCH_SIZE" NOT NULL ENABLE)
  ALTER TABLE "MATCH" MODIFY ("MATCH_STATUS" NOT NULL ENABLE)
  ALTER TABLE "MATCH" ADD CHECK (match_status in('모집중', '모집마감', '경기중', '경기종료')) ENABLE
  ALTER TABLE "MATCH" ADD PRIMARY KEY ("MATCH_NO")
  USING INDEX  ENABLE
  ALTER TABLE "MATCH" ADD CHECK (match_status in('모집중', '모집마감', '경기중', '경기종료')) ENABLE
  ALTER TABLE "MATCH" ADD CHECK (match_status in('모집중', '모집마감', '경기중', '경기종료')) ENABLE
--------------------------------------------------------
--  Constraints for Table MATCH_BOARD
--------------------------------------------------------

  ALTER TABLE "MATCH_BOARD" MODIFY ("MATCH_BOARD_CONTENT" NOT NULL ENABLE)
  ALTER TABLE "MATCH_BOARD" MODIFY ("MATCH_BOARD_TIME" NOT NULL ENABLE)
  ALTER TABLE "MATCH_BOARD" MODIFY ("MATCH_BOARD_READ" NOT NULL ENABLE)
  ALTER TABLE "MATCH_BOARD" MODIFY ("MATCH_BOARD_CITY" NOT NULL ENABLE)
  ALTER TABLE "MATCH_BOARD" MODIFY ("MATCH_BOARD_LOCATION" NOT NULL ENABLE)
  ALTER TABLE "MATCH_BOARD" MODIFY ("MATCH_BOARD_DATE" NOT NULL ENABLE)
  ALTER TABLE "MATCH_BOARD" MODIFY ("MATCH_BOARD_TIME2" NOT NULL ENABLE)
  ALTER TABLE "MATCH_BOARD" MODIFY ("MATCH_BOARD_AGE" NOT NULL ENABLE)
  ALTER TABLE "MATCH_BOARD" MODIFY ("MATCH_BOARD_SIZE" NOT NULL ENABLE)
  ALTER TABLE "MATCH_BOARD" MODIFY ("MATCH_BOARD_TITLE" NOT NULL ENABLE)
  ALTER TABLE "MATCH_BOARD" MODIFY ("MATCH_BOARD_STATUS" NOT NULL ENABLE)
  ALTER TABLE "MATCH_BOARD" ADD PRIMARY KEY ("MATCH_BOARD_NO")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table MATCH_RECORD
--------------------------------------------------------

  ALTER TABLE "MATCH_RECORD" MODIFY ("MATCH_NO" NOT NULL ENABLE)
  ALTER TABLE "MATCH_RECORD" MODIFY ("HOME_SCORE" NOT NULL ENABLE)
  ALTER TABLE "MATCH_RECORD" MODIFY ("AWAY_SCORE" NOT NULL ENABLE)
  ALTER TABLE "MATCH_RECORD" ADD PRIMARY KEY ("RECORD_NO")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" MODIFY ("MEMBER_PW" NOT NULL ENABLE)
  ALTER TABLE "MEMBER" MODIFY ("MEMBER_NAME" NOT NULL ENABLE)
  ALTER TABLE "MEMBER" MODIFY ("MEMBER_LEVEL" NOT NULL ENABLE)
  ALTER TABLE "MEMBER" MODIFY ("MEMBER_EMAIL" NOT NULL ENABLE)
  ALTER TABLE "MEMBER" MODIFY ("MEMBER_GENDER" NOT NULL ENABLE)
  ALTER TABLE "MEMBER" MODIFY ("MEMBER_MANNER" NOT NULL ENABLE)
  ALTER TABLE "MEMBER" MODIFY ("MEMBER_BIRTH" NOT NULL ENABLE)
  ALTER TABLE "MEMBER" ADD CHECK (instr(member_email, '@') > 0) ENABLE
  ALTER TABLE "MEMBER" ADD CHECK (member_level in ('일반회원','매니저','관리자')) ENABLE
  ALTER TABLE "MEMBER" ADD CHECK (member_manner >= 0) ENABLE
  ALTER TABLE "MEMBER" ADD PRIMARY KEY ("MEMBER_ID")
  USING INDEX  ENABLE
  ALTER TABLE "MEMBER" ADD CHECK (instr(member_email, '@') > 0) ENABLE
  ALTER TABLE "MEMBER" ADD CHECK (member_level in ('일반회원','매니저','관리자')) ENABLE
  ALTER TABLE "MEMBER" ADD CHECK (member_manner >= 0) ENABLE
  ALTER TABLE "MEMBER" ADD CHECK (instr(member_email, '@') > 0) ENABLE
  ALTER TABLE "MEMBER" ADD CHECK (member_level in ('일반회원','매니저','관리자')) ENABLE
  ALTER TABLE "MEMBER" ADD CHECK (member_manner >= 0) ENABLE
--------------------------------------------------------
--  Constraints for Table PAYMENT
--------------------------------------------------------

  ALTER TABLE "PAYMENT" MODIFY ("PAYMENT_TID" NOT NULL ENABLE)
  ALTER TABLE "PAYMENT" MODIFY ("PAYMENT_NAME" NOT NULL ENABLE)
  ALTER TABLE "PAYMENT" MODIFY ("PAYMENT_TOTAL" NOT NULL ENABLE)
  ALTER TABLE "PAYMENT" MODIFY ("PAYMENT_REMAIN" NOT NULL ENABLE)
  ALTER TABLE "PAYMENT" MODIFY ("PAYMENT_TIME" NOT NULL ENABLE)
  ALTER TABLE "PAYMENT" MODIFY ("MEMBER_ID" NOT NULL ENABLE)
  ALTER TABLE "PAYMENT" ADD PRIMARY KEY ("PAYMENT_NO")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table RESERVE
--------------------------------------------------------

  ALTER TABLE "RESERVE" MODIFY ("RESERVE_STATUS" NOT NULL ENABLE)
  ALTER TABLE "RESERVE" ADD PRIMARY KEY ("RESERVE_NO")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table SCHEDULE
--------------------------------------------------------

  ALTER TABLE "SCHEDULE" MODIFY ("SCHEDULE_START" NOT NULL ENABLE)
  ALTER TABLE "SCHEDULE" MODIFY ("SCHEDULE_END" NOT NULL ENABLE)
  ALTER TABLE "SCHEDULE" ADD PRIMARY KEY ("SCHEDULE_NO")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table TEAM
--------------------------------------------------------

  ALTER TABLE "TEAM" MODIFY ("TEAM_NAME" NOT NULL ENABLE)
  ALTER TABLE "TEAM" MODIFY ("TEAM_DAY" NOT NULL ENABLE)
  ALTER TABLE "TEAM" MODIFY ("TEAM_TIME" NOT NULL ENABLE)
  ALTER TABLE "TEAM" MODIFY ("TEAM_CITY" NOT NULL ENABLE)
  ALTER TABLE "TEAM" MODIFY ("TEAM_LOCATION" NOT NULL ENABLE)
  ALTER TABLE "TEAM" MODIFY ("TEAM_GENDER" NOT NULL ENABLE)
  ALTER TABLE "TEAM" MODIFY ("TEAM_AGE" NOT NULL ENABLE)
  ALTER TABLE "TEAM" MODIFY ("TEAM_WIN" NOT NULL ENABLE)
  ALTER TABLE "TEAM" MODIFY ("TEAM_LOSE" NOT NULL ENABLE)
  ALTER TABLE "TEAM" MODIFY ("TEAM_DATE" NOT NULL ENABLE)
  ALTER TABLE "TEAM" ADD CHECK (team_win >= 0) ENABLE
  ALTER TABLE "TEAM" ADD CHECK (team_lose >= 0) ENABLE
  ALTER TABLE "TEAM" ADD PRIMARY KEY ("TEAM_NO")
  USING INDEX  ENABLE
  ALTER TABLE "TEAM" ADD UNIQUE ("TEAM_NAME")
  USING INDEX  ENABLE
  ALTER TABLE "TEAM" ADD CHECK (team_win >= 0) ENABLE
  ALTER TABLE "TEAM" ADD CHECK (team_lose >= 0) ENABLE
  ALTER TABLE "TEAM" ADD CHECK (team_win >= 0) ENABLE
  ALTER TABLE "TEAM" ADD CHECK (team_lose >= 0) ENABLE
--------------------------------------------------------
--  Constraints for Table TEAM_MEMBER
--------------------------------------------------------

  ALTER TABLE "TEAM_MEMBER" ADD PRIMARY KEY ("TEAM_MEMBER_NO")
  USING INDEX  ENABLE
  ALTER TABLE "TEAM_MEMBER" ADD CONSTRAINT "UNIQUE_MEMBER_TEAM" UNIQUE ("MEMBER_ID", "TEAM_NO")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table WAITING
--------------------------------------------------------

  ALTER TABLE "WAITING" MODIFY ("MEMBER_STATUS" NOT NULL ENABLE)
  ALTER TABLE "WAITING" ADD PRIMARY KEY ("WAITING_NO")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Ref Constraints for Table CHAT_MESSAGE
--------------------------------------------------------

  ALTER TABLE "CHAT_MESSAGE" ADD FOREIGN KEY ("ROOM_NO")
	  REFERENCES "MATCH" ("MATCH_NO") ON DELETE CASCADE ENABLE
  ALTER TABLE "CHAT_MESSAGE" ADD FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "MEMBER" ("MEMBER_ID") ON DELETE SET NULL ENABLE
--------------------------------------------------------
--  Ref Constraints for Table CHAT_VISIT
--------------------------------------------------------

  ALTER TABLE "CHAT_VISIT" ADD FOREIGN KEY ("ROOM_NO")
	  REFERENCES "MATCH" ("MATCH_NO") ON DELETE CASCADE ENABLE
  ALTER TABLE "CHAT_VISIT" ADD FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "MEMBER" ("MEMBER_ID") ON DELETE CASCADE ENABLE
--------------------------------------------------------
--  Ref Constraints for Table ENTRY
--------------------------------------------------------

  ALTER TABLE "ENTRY" ADD FOREIGN KEY ("MATCH_NO")
	  REFERENCES "MATCH" ("MATCH_NO") ON DELETE CASCADE ENABLE
  ALTER TABLE "ENTRY" ADD FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "MEMBER" ("MEMBER_ID") ON DELETE CASCADE ENABLE
  ALTER TABLE "ENTRY" ADD FOREIGN KEY ("TEAM_NO")
	  REFERENCES "TEAM" ("TEAM_NO") ON DELETE CASCADE ENABLE
--------------------------------------------------------
--  Ref Constraints for Table GROUND_IMAGE
--------------------------------------------------------

  ALTER TABLE "GROUND_IMAGE" ADD FOREIGN KEY ("IMG_NO")
	  REFERENCES "IMG" ("IMG_NO") ON DELETE CASCADE ENABLE
--------------------------------------------------------
--  Ref Constraints for Table MAIN_IMG
--------------------------------------------------------

  ALTER TABLE "MAIN_IMG" ADD FOREIGN KEY ("IMG_NO")
	  REFERENCES "IMG" ("IMG_NO") ON DELETE CASCADE ENABLE
--------------------------------------------------------
--  Ref Constraints for Table MAIN_IMG_CONNECT
--------------------------------------------------------

  ALTER TABLE "MAIN_IMG_CONNECT" ADD FOREIGN KEY ("IMG_NO")
	  REFERENCES "IMG" ("IMG_NO") ON DELETE CASCADE ENABLE
  ALTER TABLE "MAIN_IMG_CONNECT" ADD FOREIGN KEY ("MAIN_NO")
	  REFERENCES "MAIN_IMG" ("MAIN_NO") ON DELETE CASCADE ENABLE
--------------------------------------------------------
--  Ref Constraints for Table MATCH
--------------------------------------------------------

  ALTER TABLE "MATCH" ADD CONSTRAINT "MATCH_BOARD_NO" FOREIGN KEY ("MATCH_BOARD_NO")
	  REFERENCES "MATCH_BOARD" ("MATCH_BOARD_NO") ON DELETE CASCADE ENABLE
--------------------------------------------------------
--  Ref Constraints for Table MATCH_BOARD
--------------------------------------------------------

  ALTER TABLE "MATCH_BOARD" ADD CONSTRAINT "MATCH_BOARD_FK1" FOREIGN KEY ("MATCH_BOARD_VIDEO")
	  REFERENCES "IMG" ("IMG_NO") ON DELETE SET NULL ENABLE
  ALTER TABLE "MATCH_BOARD" ADD FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "MEMBER" ("MEMBER_ID") ON DELETE CASCADE ENABLE
--------------------------------------------------------
--  Ref Constraints for Table MATCH_RECORD
--------------------------------------------------------

  ALTER TABLE "MATCH_RECORD" ADD FOREIGN KEY ("MATCH_NO")
	  REFERENCES "MATCH" ("MATCH_NO") ON DELETE CASCADE ENABLE
  ALTER TABLE "MATCH_RECORD" ADD FOREIGN KEY ("HOME_NO")
	  REFERENCES "TEAM" ("TEAM_NO") ON DELETE SET NULL ENABLE
  ALTER TABLE "MATCH_RECORD" ADD FOREIGN KEY ("AWAY_NO")
	  REFERENCES "TEAM" ("TEAM_NO") ON DELETE SET NULL ENABLE
--------------------------------------------------------
--  Ref Constraints for Table PAYMENT
--------------------------------------------------------

  ALTER TABLE "PAYMENT" ADD CONSTRAINT "SYS_C007988" FOREIGN KEY ("RESERVE_NO")
	  REFERENCES "RESERVE" ("RESERVE_NO") ON DELETE SET NULL ENABLE
--------------------------------------------------------
--  Ref Constraints for Table RESERVE
--------------------------------------------------------

  ALTER TABLE "RESERVE" ADD FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "MEMBER" ("MEMBER_ID") ON DELETE CASCADE ENABLE
--------------------------------------------------------
--  Ref Constraints for Table TEAM
--------------------------------------------------------

  ALTER TABLE "TEAM" ADD FOREIGN KEY ("TEAM_LEADER")
	  REFERENCES "MEMBER" ("MEMBER_ID") ON DELETE SET NULL ENABLE
--------------------------------------------------------
--  Ref Constraints for Table TEAM_MEMBER
--------------------------------------------------------

  ALTER TABLE "TEAM_MEMBER" ADD FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "MEMBER" ("MEMBER_ID") ON DELETE CASCADE ENABLE
  ALTER TABLE "TEAM_MEMBER" ADD FOREIGN KEY ("TEAM_NO")
	  REFERENCES "TEAM" ("TEAM_NO") ON DELETE CASCADE ENABLE
--------------------------------------------------------
--  Ref Constraints for Table WAITING
--------------------------------------------------------

  ALTER TABLE "WAITING" ADD FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "MEMBER" ("MEMBER_ID") ON DELETE CASCADE ENABLE
  ALTER TABLE "WAITING" ADD FOREIGN KEY ("TEAM_NO")
	  REFERENCES "TEAM" ("TEAM_NO") ON DELETE CASCADE ENABLE
