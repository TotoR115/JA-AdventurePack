BEGIN ~JA#COOK1~

IF ~Global("JA#CUKEG","%EBaldursGate_ElfsongTavern_L1%",1)~ THEN BEGIN JA#COOK1_1
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("JA#CUKEG","%EBaldursGate_ElfsongTavern_L1%",2)~ GOTO JA#COOK1_2
IF ~~ THEN REPLY @2 DO ~SetGlobal("JA#CUKEG","%EBaldursGate_ElfsongTavern_L1%",2)~ GOTO JA#COOK1_2
END

IF ~~ THEN BEGIN JA#COOK1_2
SAY @3
IF ~~ THEN REPLY @4 GOTO JA#COOK1_3
IF ~~ THEN REPLY @5 GOTO JA#COOK1_3
IF ~~ THEN REPLY @6 UNSOLVED_JOURNAL @80 EXIT
END

IF ~~ THEN BEGIN JA#COOK1_3
SAY @7
IF ~~ THEN REPLY @8 GOTO JA#COOK1_4
IF ~~ THEN REPLY @9 GOTO JA#COOK1_4
END

IF ~~ THEN BEGIN JA#COOK1_4
SAY @10
= @11
= @12
IF ~~ THEN REPLY @13 GOTO JA#COOK1_5
IF ~~ THEN REPLY @14 GOTO JA#COOK1_5
IF ~~ THEN REPLY @15 GOTO JA#COOK1_6
END

IF ~~ THEN BEGIN JA#COOK1_5
SAY @16
IF ~~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("JA#CUKEG")~ EXIT
END

IF ~~ THEN BEGIN JA#COOK1_6
SAY @17
IF ~~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("JA#CUKEG")~ EXIT
END

IF ~Global("JA#CUKEG","%EBaldursGate_ElfsongTavern_L1%",2)~ THEN BEGIN JA#COOK1_7
SAY @18
IF ~~ THEN DO ~SetGlobal("JA#CUKEG","%EBaldursGate_ElfsongTavern_L1%",3)~ EXTERN JA#KEG01 JA#KEG01_1
END

IF ~~ THEN BEGIN JA#COOK1_8
SAY @19
IF ~~ THEN REPLY @20 GOTO JA#COOK1_9 
IF ~~ THEN REPLY @21 EXTERN JA#KEG01 JA#KEG01_2
END

IF ~~ THEN BEGIN JA#COOK1_9
SAY @22
IF ~~ THEN EXTERN JA#KEG01 JA#KEG01_2
END

IF ~~ THEN BEGIN JA#COOK1_10
SAY @23
IF ~~ THEN EXTERN JA#KEG01 JA#KEG01_6
END

IF ~~ THEN BEGIN JA#COOK1_11
SAY @24
IF ~~ THEN EXTERN JA#KEG01 JA#KEG01_14
END

IF ~~ THEN BEGIN JA#COOK1_12
SAY @25
IF ~~ THEN EXTERN JA#KEG02 JA#KEG02_2
END

IF ~~ THEN BEGIN JA#COOK1_13
SAY @26
= @27
IF ~~ THEN EXTERN JA#KEG02 JA#KEG02_3
END

IF ~~ THEN BEGIN JA#COOK1_14
SAY @28
IF ~~ THEN DO ~SetGlobal("JA#CUKEG","%EBaldursGate_ElfsongTavern_L1%",6) EraseJournalEntry(999992)~ SOLVED_JOURNAL @81 EXIT
END

IF ~GlobalGT("JA#CUKEG","%EBaldursGate_ElfsongTavern_L1%",5)RandomNum(3,1)~ THEN BEGIN JA#COOK1_15
SAY @29
IF ~~ THEN EXIT
END

IF ~GlobalGT("JA#CUKEG","%EBaldursGate_ElfsongTavern_L1%",5)RandomNum(3,2)~ THEN BEGIN JA#COOK1_16
SAY @30
IF ~~ THEN EXIT
END

IF ~GlobalGT("JA#CUKEG","%EBaldursGate_ElfsongTavern_L1%",5)RandomNum(3,3)~ THEN BEGIN JA#COOK1_17
SAY @31
IF ~~ THEN EXIT
END

IF ~Global("JA#CUKEG","%EBaldursGate_ElfsongTavern_L1%",0)RandomNum(3,1)~ THEN BEGIN JA#COOK1_18
SAY @32
IF ~~ THEN EXIT
END

IF ~Global("JA#CUKEG","%EBaldursGate_ElfsongTavern_L1%",0)RandomNum(3,2)~ THEN BEGIN JA#COOK1_19
SAY @33
IF ~~ THEN EXIT
END

IF ~Global("JA#CUKEG","%EBaldursGate_ElfsongTavern_L1%",0)RandomNum(3,3)~ THEN BEGIN JA#COOK1_20
SAY @34
IF ~~ THEN EXIT
END


BEGIN ~JA#KEG01~

IF ~~ THEN BEGIN JA#KEG01_1
SAY @35
IF ~~ THEN EXTERN JA#COOK1 JA#COOK1_8
END

IF ~~ THEN BEGIN JA#KEG01_2
SAY @36
IF ~~ THEN REPLY @37 GOTO JA#KEG01_4
IF ~~ THEN REPLY @38 GOTO JA#KEG01_4
IF ~~ THEN REPLY @39 GOTO JA#KEG01_3
END

IF ~~ THEN BEGIN JA#KEG01_3
SAY @40
= @41
IF ~~ THEN REPLY @42 GOTO JA#KEG01_5
IF ~~ THEN REPLY @43 GOTO JA#KEG01_5
IF ~~ THEN REPLY @44 EXTERN JA#COOK1 JA#COOK1_10
END

IF ~~ THEN BEGIN JA#KEG01_4
SAY @45
= @46
IF ~~ THEN REPLY @47  GOTO JA#KEG01_11
IF ~~ THEN REPLY @48 GOTO JA#KEG01_7
IF ~~ THEN REPLY @49 GOTO JA#KEG01_8
END

IF ~~ THEN BEGIN JA#KEG01_5
SAY @50
IF ~~ THEN REPLY @51 GOTO JA#KEG01_10
IF ~PartyGoldGT(9)~ THEN REPLY @52 DO ~TakePartyGold(10)~ GOTO JA#KEG01_9
IF ~PartyGoldLT(10)~ THEN REPLY @53 GOTO JA#KEG01_13
END

IF ~~ THEN BEGIN JA#KEG01_6
SAY @54
IF ~~ THEN REPLY @55 GOTO JA#KEG01_15
IF ~~ THEN REPLY @56 GOTO JA#KEG01_15
IF ~~ THEN REPLY @57 GOTO JA#KEG01_15
END

IF ~~ THEN BEGIN JA#KEG01_7
SAY @58
IF ~~ THEN REPLY @59 DO ~SetGlobal("JA#KNOW_ALSHIAN","LOCALS",1)~ GOTO JA#KEG01_6
IF ~~ THEN REPLY @60 DO ~SetGlobal("JA#KNOW_ALSHIAN","LOCALS",1)~ GOTO JA#KEG01_6
END

IF ~~ THEN BEGIN JA#KEG01_8
SAY @61
IF ~~ THEN REPLY @59 GOTO JA#KEG01_6
IF ~~ THEN REPLY @60 GOTO JA#KEG01_6
END

IF ~~ THEN BEGIN JA#KEG01_9
SAY @62
= @63
= @64
IF ~~ THEN REPLY @47 GOTO JA#KEG01_11
IF ~~ THEN REPLY @44 EXTERN JA#COOK1 JA#COOK1_10
END

IF ~~ THEN BEGIN JA#KEG01_10
SAY @65 
IF ~~ THEN REPLY @59 GOTO JA#KEG01_6
END

IF ~~ THEN BEGIN JA#KEG01_11
SAY @66
IF ~~ THEN REPLY @59 GOTO JA#KEG01_6
IF ~~ THEN REPLY @67 GOTO JA#KEG01_12
END

IF ~~ THEN BEGIN JA#KEG01_12
SAY @68 
IF ~~ THEN REPLY @59 GOTO JA#KEG01_6
END

IF ~~ THEN BEGIN JA#KEG01_13
SAY @69 
IF ~~ THEN REPLY @70 EXTERN JA#COOK1 JA#COOK1_11
IF ~~ THEN REPLY @71 EXTERN JA#COOK1 JA#COOK1_11
IF ~~ THEN REPLY @59 GOTO JA#KEG01_6
END

IF ~~ THEN BEGIN JA#KEG01_14
SAY @72 
IF ~~ THEN REPLY @55 GOTO JA#KEG01_15
IF ~~ THEN REPLY @56 GOTO JA#KEG01_15
IF ~~ THEN REPLY @57 GOTO JA#KEG01_15
IF ~~ THEN REPLY @59 GOTO JA#KEG01_6
END

IF ~~ THEN BEGIN JA#KEG01_15
SAY @73 
IF ~Global("JA#KNOW_ALSHIAN","LOCALS",1)~ THEN REPLY @74 GOTO JA#KEG01_16
IF ~~ THEN REPLY @75 GOTO JA#KEG01_16
END

IF ~~ THEN BEGIN JA#KEG01_16
SAY @76 
IF ~~ THEN DO ~DestroyItem("misc07")SetGlobal("JA#CUKEG","%EBaldursGate_ElfsongTavern_L1%",4)~ EXIT
END




BEGIN ~JA#KEG02~

IF ~Global("JA#CUKEG","%EBaldursGate_ElfsongTavern_L1%",5)~ THEN BEGIN JA#KEG02_1
SAY @77
IF ~~ THEN EXTERN JA#COOK1 JA#COOK1_12
END

IF ~~ THEN BEGIN JA#KEG02_2
SAY @78 
IF ~~ THEN EXTERN JA#COOK1 JA#COOK1_13
END

IF ~~ THEN BEGIN JA#KEG02_3
SAY @79 
IF ~~ THEN EXTERN JA#COOK1 JA#COOK1_14
END
