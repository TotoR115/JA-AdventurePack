BEGIN ~JA#MALKA~

IF ~Global("JA#MALKA","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("JA#MALKA","LOCALS",1)CreateVisualEffectObject("JA#SPWN1",Myself)Wait(1)MoveBetweenAreas("%UlcasterRuins%",[695.394],10)~ EXIT
END

IF ~Global("JA#MALKA","LOCALS",2)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 10
END

IF ~~ THEN BEGIN 5
  SAY @11
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 10
END

IF ~~ THEN BEGIN 6
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 7
  IF ~~ THEN REPLY @15 GOTO 13
  IF ~~ THEN REPLY @16 GOTO 13
END

IF ~~ THEN BEGIN 7
  SAY @17
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 13
  IF ~~ THEN REPLY @16 GOTO 13
END

IF ~~ THEN BEGIN 8
  SAY @18
  IF ~~ THEN DO ~SetGlobal("JA#MALKA","LOCALS",3)~ EXIT
END

IF ~Global("JA#MALKA","LOCALS",5)~ THEN BEGIN 9
  SAY @19
  IF ~~ THEN DO ~SetGlobal("JA#MALKA","LOCALS",6)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @22
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 11
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY @20
  IF ~~ THEN REPLY @13 GOTO 8
END
