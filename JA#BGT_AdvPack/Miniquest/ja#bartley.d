
ALTER_TRANS BART8 // file name
BEGIN 0 1 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "REPLY" ~@26~
END


ALTER_TRANS BART8 // file name
BEGIN 0 1 END // state number (can be more than one)
BEGIN 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "REPLY" ~@27~
END


EXTEND_BOTTOM BART8 0
IF ~~ THEN REPLY @0 GOTO JA#BART8_1
END

EXTEND_BOTTOM BART8 1
IF ~~ THEN REPLY @0 GOTO JA#BART8_1
END


APPEND BART8

IF ~~ THEN BEGIN JA#BART8_1
SAY @1
IF ~Global("JA#BART_BEHOLD","LOCALS",0)~ THEN REPLY @2 DO ~SetGlobal("JA#BART_BEHOLD","LOCALS",1)~ GOTO JA#BART8_2
IF ~Global("JA#BART_IRTHR","LOCALS",0)~ THEN REPLY @3 DO ~SetGlobal("JA#BART_IRTHR","LOCALS",1)~ GOTO JA#BART8_9
IF ~Global("JA#ELFSONG_QUEST","GLOBAL",1)~ THEN REPLY @4 GOTO JA#BART8_5
IF ~Global("JA#ELFSONG_QUEST","GLOBAL",3)Global("JA#WILYN_WO","LOCALS",0)~ THEN REPLY @5 DO ~SetGlobal("JA#WILYN_WO","LOCALS",1)~ GOTO JA#BART8_6
IF ~Global("JA#ELFSONG_QUEST","GLOBAL",5)Global("JA#VALA_WHO","LOCALS",0)~ THEN REPLY @6 DO ~SetGlobal("JA#VALA_WHO","LOCALS",1)~ GOTO JA#BART8_8
IF ~Global("JA#ELFSONG_QUEST","GLOBAL",6)Global("JA#VALA_WO","LOCALS",0)~ THEN REPLY @7 DO ~SetGlobal("JA#VALA_WO","LOCALS",1)~ GOTO JA#BART8_7
IF ~~ THEN REPLY @8 DO ~StartStore("%storename%",LastTalkedToBy(Myself))~ EXIT
IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN JA#BART8_2
SAY @10
IF ~~ THEN REPLY @11 GOTO JA#BART8_3
IF ~~ THEN REPLY @12 GOTO JA#BART8_4
IF ~~ THEN REPLY @13 GOTO JA#BART8_1
IF ~~ THEN REPLY @14 EXIT
END

IF ~~ THEN BEGIN JA#BART8_3
SAY @15
IF ~~ THEN REPLY @13 GOTO JA#BART8_1
IF ~~ THEN REPLY @8 DO ~StartStore("%storename%",LastTalkedToBy(Myself))~ EXIT
IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN JA#BART8_4
SAY @16
IF ~~ THEN REPLY @13 GOTO JA#BART8_1
IF ~~ THEN REPLY @8 DO ~StartStore("%storename%",LastTalkedToBy(Myself))~ EXIT
IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN JA#BART8_5
SAY @17
= @18
IF ~~ THEN REPLY @13 GOTO JA#BART8_1
IF ~~ THEN REPLY @19 DO ~StartStore("%storename%",LastTalkedToBy(Myself))~ EXIT
IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN JA#BART8_6
SAY @20
= @21
IF ~~ THEN REPLY @13 GOTO JA#BART8_1
IF ~~ THEN REPLY @19 DO ~StartStore("%storename%",LastTalkedToBy(Myself))~ EXIT
IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN JA#BART8_7
SAY @22
IF ~~ THEN REPLY @13 GOTO JA#BART8_1
IF ~~ THEN REPLY @19 DO ~StartStore("%storename%",LastTalkedToBy(Myself))~ EXIT
IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN JA#BART8_8
SAY @23
IF ~~ THEN REPLY @13 GOTO JA#BART8_1
IF ~~ THEN REPLY @19 DO ~StartStore("%storename%",LastTalkedToBy(Myself))~ EXIT
IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN JA#BART8_9
SAY @24
= @25
IF ~~ THEN REPLY @13 GOTO JA#BART8_1
IF ~~ THEN REPLY @19 DO ~StartStore("%storename%",LastTalkedToBy(Myself))~ EXIT
IF ~~ THEN REPLY @9 EXIT
END

END