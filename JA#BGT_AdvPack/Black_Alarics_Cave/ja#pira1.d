BEGIN JA#PIRA1

IF ~AreaCheck("%Lighthouse_BlackAlaricsCave%")~ THEN BEGIN JA#PIRA1_1
SAY @0
IF ~~ THEN GOTO JA#PIRA1_2
END

IF ~~ THEN BEGIN JA#PIRA1_2
SAY @1
IF ~~ THEN GOTO JA#PIRA1_3
END

IF ~~ THEN BEGIN JA#PIRA1_3
SAY @2
IF ~~ THEN GOTO JA#PIRA1_4
END

IF ~~ THEN BEGIN JA#PIRA1_4
SAY @3
IF ~~ THEN GOTO JA#PIRA1_5
END

IF ~~ THEN BEGIN JA#PIRA1_5
SAY @4
IF ~~ THEN GOTO JA#PIRA1_6
END

IF ~~ THEN BEGIN JA#PIRA1_6
SAY @0
IF ~~ THEN GOTO JA#PIRA1_6a
END

IF ~~ THEN BEGIN JA#PIRA1_6a
SAY @1
IF ~~ THEN GOTO JA#PIRA1_7
END

IF ~~ THEN BEGIN JA#PIRA1_7
SAY @2
IF ~~ THEN GOTO JA#PIRA1_8
END

IF ~~ THEN BEGIN JA#PIRA1_8
SAY @3
IF ~~ THEN GOTO JA#PIRA1_9
END

IF ~~ THEN BEGIN JA#PIRA1_9
SAY @4
IF ~~ THEN REPLY @5 GOTO JA#PIRA1_10
IF ~~ THEN REPLY @6 GOTO JA#PIRA1_10
IF ~~ THEN REPLY @7 GOTO JA#PIRA1_11
END

IF ~~ THEN BEGIN JA#PIRA1_10
SAY @8
IF ~~ THEN GOTO JA#PIRA1_12
END

IF ~~ THEN BEGIN JA#PIRA1_11
SAY @9
IF ~~ THEN GOTO JA#PIRA1_12
END

IF ~~ THEN BEGIN JA#PIRA1_12
SAY @2
IF ~~ THEN GOTO JA#PIRA1_13
END

IF ~~ THEN BEGIN JA#PIRA1_13
SAY @10
IF ~~ THEN GOTO JA#PIRA1_14
END

IF ~~ THEN BEGIN JA#PIRA1_14
SAY @2
IF ~~ THEN GOTO JA#PIRA1_15
END

IF ~~ THEN BEGIN JA#PIRA1_15
SAY @11
IF ~~ THEN DO ~Enemy()Attack(NearestEnemyOf(Myself))~ EXIT
END


//SAFANA INTERJECTIONS

INTERJECT_COPY_TRANS2 JA#PIRA1 JA#PIRA1_2 JA#safana_pira1
== %SAFANA_JOINED% IF ~InParty("SAFANA") InMyArea("SAFANA")~ THEN
@12
END

INTERJECT_COPY_TRANS2 JA#PIRA1 JA#PIRA1_6a JA#safana_pira2
== %SAFANA_JOINED% IF ~InParty("SAFANA") InMyArea("SAFANA")~ THEN
@13
END

INTERJECT_COPY_TRANS2 JA#PIRA1 JA#PIRA1_15 JA#imoen_pira1
== %IMOEN_JOINED% IF ~InParty("IMOEN2") InMyArea("IMOEN2")~ THEN
@14
END










