BEGIN ~JA#SERW1~

IF ~Global("JA#ELFSONG_QUEST","GLOBAL",9)Global("JA#BEKKITHX","LOCALS",0)~ THEN BEGIN 90
  SAY @0
  = @1
  IF ~~ THEN DO ~SetGlobal("JA#BEKKITHX","LOCALS",1)~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 0
  SAY @2 
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @3 
  IF ~~ THEN EXIT
END

IF ~Global("SpokeToAreana","GLOBAL",1) Global("JA#BEKKI_CYRDE","LOCALS",0)~ THEN BEGIN 2  
  SAY @4
  IF ~~ THEN DO ~SetGlobal("JA#BEKKI_CYRDE","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN EXIT
END

IF ~Global("JA#ELFSONG_QUEST","GLOBAL",2) Global("JA#BEKKI_ELFSQU","LOCALS",0)~ THEN BEGIN 5  
  SAY @7
  IF ~~ THEN REPLY @8 DO ~SetGlobal("JA#BEKKI_ELFSQU","LOCALS",1)~ GOTO 6
  IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @15
  IF ~~ THEN REPLY @16 EXIT
END

IF ~Global("JA#ELFSONG_QUEST","GLOBAL",3) GlobalLT("JA#BEKKI_ELFSQU","LOCALS",2)~ THEN BEGIN 9
  SAY @17
  IF ~~ THEN REPLY @18 DO ~SetGlobal("JA#BEKKI_ELFSQU","LOCALS",2)~ GOTO 10
  IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~Global("JA#ELFSONG_QUEST","GLOBAL",3)~ THEN REPLY @21 GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @22
  IF ~Global("JA#ELFSONG_QUEST","GLOBAL",3)~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @24
IF ~~ THEN EXIT
END

IF ~Global("JA#ELFSONG_QUEST","GLOBAL",5)~ THEN BEGIN 13
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @27
  = @28
  IF ~~ THEN REPLY @29 GOTO 15
  IF ~~ THEN REPLY @30 GOTO 16
END

IF ~~ THEN BEGIN 15
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 16
  IF ~~ THEN REPLY @33 GOTO 17
END

IF ~~ THEN BEGIN 16
  SAY @34
  = @35
  IF ~~ THEN REPLY @33 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @36
  IF ~~ THEN DO ~SetGlobal("JA#ELFSONG_QUEST","GLOBAL",6)~ UNSOLVED_JOURNAL @1004 EXIT
END

IF ~RandomNum(5,1)~ THEN BEGIN 50
  SAY @38
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)~ THEN BEGIN 51
  SAY @39
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)~ THEN BEGIN 52
  SAY @40
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)~ THEN BEGIN 53
  SAY @41
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)~ THEN BEGIN 54
  SAY @42
  IF ~~ THEN EXIT
END