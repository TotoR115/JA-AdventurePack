BEGIN ~JA#OGHM1~


IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN JA#OGHM_1
SAY @0
IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN JA#OGHM_2
SAY @1
IF ~~ THEN REPLY @2 DO ~StartStore("ja#oghm1",LastTalkedToBy(Myself))~ EXIT
IF ~~ THEN REPLY @3 EXIT
END

























