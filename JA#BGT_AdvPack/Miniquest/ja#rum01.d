BEGIN ~JA#RUM01~

IF ~Global("JA#ELFSONG_QUEST","GLOBAL",0)~ THEN BEGIN JA#RUM01_1
SAY @0
IF ~~ THEN DO ~ActionOverride(Player1,SetGlobal("JA#ELFSONG_QUEST","GLOBAL",1))~ JOURNAL @1031 EXIT
END

IF ~Global("Chapter","GLOBAL",%tutu_chapter_7%)~ THEN BEGIN JA#RUM01_2
SAY @2
IF ~~ THEN JOURNAL @1032 EXIT
END

IF ~!InParty("SKIE")~ THEN BEGIN JA#RUM01_3
SAY @4
IF ~~ THEN EXIT
END

IF ~Global("JA#KNOW_MASKTEMPLE","GLOBAL",0)~ THEN BEGIN JA#RUM01_4
SAY @5
IF ~~ THEN DO ~ActionOverride(Player1,SetGlobal("JA#KNOW_MASKTEMPLE","GLOBAL",1))~ EXIT
END

IF ~True()~ THEN BEGIN JA#RUM01_5
SAY @6
IF ~~ THEN JOURNAL @7 EXIT
END

IF ~True()~ THEN BEGIN JA#RUM01_6
SAY @8
IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN JA#RUM01_7
SAY @9
IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN JA#RUM01_8
SAY @10
IF ~~ THEN EXIT
END


