
//MCOOK4 (Cook Palace)

REPLACE_STATE_TRIGGER MCOOK4 0 ~NumTimesTalkedTo(0)~
REPLACE_STATE_TRIGGER MCOOK4 2 ~RandomNum(2,1)~

APPEND MCOOK4

IF ~RandomNum(2,2)~ THEN BEGIN JA#MCOOK4_1
SAY @2
IF ~~ THEN EXIT
END

END