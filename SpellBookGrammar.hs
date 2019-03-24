{-# OPTIONS_GHC -w #-}
module SpellBookGrammar where
import SpellBookTokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (SpellBookToken)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,247) ([65472,62206,32755,43,0,16,0,49136,64703,57340,10,0,0,0,61436,48943,47103,65026,38903,65438,347,64511,53067,44543,65408,42493,65511,49238,65279,62418,11135,32736,59775,49145,61461,49087,64756,2783,57336,31327,28670,64517,12271,65341,695,63486,40599,23551,65281,19451,65487,32941,65023,59301,22271,65472,54014,32755,57387,32639,63977,5567,49136,62655,57340,63498,24543,65146,1391,0,0,4096,0,512,0,0,64511,53067,44543,65408,42493,65511,49238,65279,62418,11135,32736,59775,49145,61461,49087,64756,2783,57336,31327,28670,64517,12271,65341,695,63486,40599,23551,65281,19451,65487,32941,65023,59301,22271,65472,54014,32755,57387,32639,63977,5567,49136,62655,57340,63498,24543,65146,1391,61436,15663,47103,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,61441,49087,64756,2783,0,0,0,0,0,0,320,0,0,0,65280,19451,65487,173,0,0,0,65472,54014,32755,57387,32639,63977,5567,49136,62655,57340,63498,24543,65146,1391,61436,15663,47103,65026,38903,65438,347,64511,53067,44543,0,0,8,0,0,0,0,0,0,0,0,0,0,0,57336,31327,28670,5,16384,0,0,0,0,2048,65280,19451,65487,173,0,0,0,0,0,0,57344,32639,63977,5567,49136,62655,57340,63498,24543,65146,1391,4096,0,0,0,0,0,0,0,0,0,65408,42493,65511,86,0,0,0,32736,59775,49145,61461,49087,64756,2783,57336,31327,28670,64517,12271,65341,695,63486,40599,23551,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64512,12271,65341,695,63486,40855,23551,1,0,0,32768,65023,59365,22271,0,0,0,57344,32639,63977,5567,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,1024,0,32768,65023,59365,22271,65472,62206,32755,43,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Body","Expr","Arr","Engorgio","Reducio","Geminio","Diminuando","Caterwauling","Ferula","Accio","Ascendio","PrioriIncantatem","'('","')'","Depulso","Flipendo","Expelliarmus","Ventus","Obliviate","Fidelius","Appare","Vestigium","Confundo","Incendio","Aguamenti","Epoximise","Alohomora","Legilimens","Flagrate","EverteStatum","WingardiumLeviosa","Imperio","FiniteIncantatem","AlarteAscendere","Confringo","Entomorphis","CarpeRetractum","Defodio","Deprimo","Episkey","Crucio","Impedimenta","lumos","nox","Apparate","horcrux","int","','","'['","']'","Informous","%eof"]
        bit_start = st * 55
        bit_end = (st + 1) * 55
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..54]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (7) = happyShift action_5
action_0 (8) = happyShift action_6
action_0 (9) = happyShift action_7
action_0 (10) = happyShift action_8
action_0 (11) = happyShift action_9
action_0 (12) = happyShift action_10
action_0 (13) = happyShift action_11
action_0 (14) = happyShift action_12
action_0 (15) = happyShift action_13
action_0 (16) = happyShift action_14
action_0 (18) = happyShift action_15
action_0 (19) = happyShift action_16
action_0 (20) = happyShift action_17
action_0 (21) = happyShift action_18
action_0 (22) = happyShift action_19
action_0 (23) = happyShift action_20
action_0 (24) = happyShift action_21
action_0 (26) = happyShift action_22
action_0 (29) = happyShift action_23
action_0 (30) = happyShift action_2
action_0 (31) = happyShift action_24
action_0 (32) = happyShift action_25
action_0 (33) = happyShift action_26
action_0 (34) = happyShift action_27
action_0 (37) = happyShift action_28
action_0 (38) = happyShift action_29
action_0 (39) = happyShift action_30
action_0 (40) = happyShift action_31
action_0 (41) = happyShift action_32
action_0 (42) = happyShift action_33
action_0 (43) = happyShift action_34
action_0 (44) = happyShift action_35
action_0 (45) = happyShift action_36
action_0 (46) = happyShift action_37
action_0 (47) = happyShift action_38
action_0 (49) = happyShift action_39
action_0 (50) = happyShift action_40
action_0 (52) = happyShift action_41
action_0 (54) = happyShift action_42
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (30) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (7) = happyShift action_5
action_2 (8) = happyShift action_6
action_2 (9) = happyShift action_7
action_2 (10) = happyShift action_8
action_2 (11) = happyShift action_9
action_2 (12) = happyShift action_10
action_2 (13) = happyShift action_11
action_2 (14) = happyShift action_12
action_2 (15) = happyShift action_13
action_2 (16) = happyShift action_14
action_2 (18) = happyShift action_15
action_2 (19) = happyShift action_16
action_2 (20) = happyShift action_17
action_2 (21) = happyShift action_18
action_2 (22) = happyShift action_19
action_2 (23) = happyShift action_20
action_2 (24) = happyShift action_21
action_2 (26) = happyShift action_22
action_2 (29) = happyShift action_23
action_2 (30) = happyShift action_2
action_2 (31) = happyShift action_24
action_2 (32) = happyShift action_25
action_2 (33) = happyShift action_26
action_2 (34) = happyShift action_27
action_2 (37) = happyShift action_28
action_2 (38) = happyShift action_29
action_2 (39) = happyShift action_30
action_2 (40) = happyShift action_31
action_2 (41) = happyShift action_32
action_2 (42) = happyShift action_33
action_2 (43) = happyShift action_34
action_2 (44) = happyShift action_35
action_2 (45) = happyShift action_36
action_2 (46) = happyShift action_37
action_2 (47) = happyShift action_38
action_2 (49) = happyShift action_39
action_2 (50) = happyShift action_40
action_2 (52) = happyShift action_41
action_2 (54) = happyShift action_42
action_2 (4) = happyGoto action_80
action_2 (5) = happyGoto action_4
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (55) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (7) = happyShift action_5
action_4 (8) = happyShift action_6
action_4 (9) = happyShift action_7
action_4 (10) = happyShift action_8
action_4 (11) = happyShift action_9
action_4 (12) = happyShift action_10
action_4 (13) = happyShift action_11
action_4 (14) = happyShift action_12
action_4 (15) = happyShift action_13
action_4 (16) = happyShift action_14
action_4 (18) = happyShift action_15
action_4 (19) = happyShift action_16
action_4 (20) = happyShift action_17
action_4 (21) = happyShift action_18
action_4 (22) = happyShift action_19
action_4 (23) = happyShift action_20
action_4 (24) = happyShift action_21
action_4 (26) = happyShift action_22
action_4 (29) = happyShift action_23
action_4 (30) = happyShift action_2
action_4 (31) = happyShift action_24
action_4 (32) = happyShift action_25
action_4 (33) = happyShift action_26
action_4 (34) = happyShift action_27
action_4 (36) = happyShift action_79
action_4 (37) = happyShift action_28
action_4 (38) = happyShift action_29
action_4 (39) = happyShift action_30
action_4 (40) = happyShift action_31
action_4 (41) = happyShift action_32
action_4 (42) = happyShift action_33
action_4 (43) = happyShift action_34
action_4 (44) = happyShift action_35
action_4 (45) = happyShift action_36
action_4 (46) = happyShift action_37
action_4 (47) = happyShift action_38
action_4 (49) = happyShift action_39
action_4 (50) = happyShift action_40
action_4 (52) = happyShift action_41
action_4 (54) = happyShift action_42
action_4 (4) = happyGoto action_78
action_4 (5) = happyGoto action_4
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (7) = happyShift action_5
action_5 (8) = happyShift action_6
action_5 (9) = happyShift action_7
action_5 (10) = happyShift action_8
action_5 (11) = happyShift action_9
action_5 (12) = happyShift action_10
action_5 (13) = happyShift action_11
action_5 (14) = happyShift action_12
action_5 (15) = happyShift action_13
action_5 (16) = happyShift action_14
action_5 (18) = happyShift action_15
action_5 (19) = happyShift action_16
action_5 (20) = happyShift action_17
action_5 (21) = happyShift action_18
action_5 (22) = happyShift action_19
action_5 (23) = happyShift action_20
action_5 (24) = happyShift action_21
action_5 (26) = happyShift action_22
action_5 (29) = happyShift action_23
action_5 (31) = happyShift action_24
action_5 (32) = happyShift action_25
action_5 (33) = happyShift action_26
action_5 (34) = happyShift action_27
action_5 (37) = happyShift action_28
action_5 (38) = happyShift action_29
action_5 (39) = happyShift action_30
action_5 (40) = happyShift action_31
action_5 (41) = happyShift action_32
action_5 (42) = happyShift action_33
action_5 (43) = happyShift action_34
action_5 (44) = happyShift action_35
action_5 (45) = happyShift action_36
action_5 (46) = happyShift action_37
action_5 (47) = happyShift action_38
action_5 (49) = happyShift action_39
action_5 (50) = happyShift action_40
action_5 (52) = happyShift action_41
action_5 (54) = happyShift action_42
action_5 (5) = happyGoto action_77
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (7) = happyShift action_5
action_6 (8) = happyShift action_6
action_6 (9) = happyShift action_7
action_6 (10) = happyShift action_8
action_6 (11) = happyShift action_9
action_6 (12) = happyShift action_10
action_6 (13) = happyShift action_11
action_6 (14) = happyShift action_12
action_6 (15) = happyShift action_13
action_6 (16) = happyShift action_14
action_6 (18) = happyShift action_15
action_6 (19) = happyShift action_16
action_6 (20) = happyShift action_17
action_6 (21) = happyShift action_18
action_6 (22) = happyShift action_19
action_6 (23) = happyShift action_20
action_6 (24) = happyShift action_21
action_6 (26) = happyShift action_22
action_6 (29) = happyShift action_23
action_6 (31) = happyShift action_24
action_6 (32) = happyShift action_25
action_6 (33) = happyShift action_26
action_6 (34) = happyShift action_27
action_6 (37) = happyShift action_28
action_6 (38) = happyShift action_29
action_6 (39) = happyShift action_30
action_6 (40) = happyShift action_31
action_6 (41) = happyShift action_32
action_6 (42) = happyShift action_33
action_6 (43) = happyShift action_34
action_6 (44) = happyShift action_35
action_6 (45) = happyShift action_36
action_6 (46) = happyShift action_37
action_6 (47) = happyShift action_38
action_6 (49) = happyShift action_39
action_6 (50) = happyShift action_40
action_6 (52) = happyShift action_41
action_6 (54) = happyShift action_42
action_6 (5) = happyGoto action_76
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (7) = happyShift action_5
action_7 (8) = happyShift action_6
action_7 (9) = happyShift action_7
action_7 (10) = happyShift action_8
action_7 (11) = happyShift action_9
action_7 (12) = happyShift action_10
action_7 (13) = happyShift action_11
action_7 (14) = happyShift action_12
action_7 (15) = happyShift action_13
action_7 (16) = happyShift action_14
action_7 (18) = happyShift action_15
action_7 (19) = happyShift action_16
action_7 (20) = happyShift action_17
action_7 (21) = happyShift action_18
action_7 (22) = happyShift action_19
action_7 (23) = happyShift action_20
action_7 (24) = happyShift action_21
action_7 (26) = happyShift action_22
action_7 (29) = happyShift action_23
action_7 (31) = happyShift action_24
action_7 (32) = happyShift action_25
action_7 (33) = happyShift action_26
action_7 (34) = happyShift action_27
action_7 (37) = happyShift action_28
action_7 (38) = happyShift action_29
action_7 (39) = happyShift action_30
action_7 (40) = happyShift action_31
action_7 (41) = happyShift action_32
action_7 (42) = happyShift action_33
action_7 (43) = happyShift action_34
action_7 (44) = happyShift action_35
action_7 (45) = happyShift action_36
action_7 (46) = happyShift action_37
action_7 (47) = happyShift action_38
action_7 (49) = happyShift action_39
action_7 (50) = happyShift action_40
action_7 (52) = happyShift action_41
action_7 (54) = happyShift action_42
action_7 (5) = happyGoto action_75
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (7) = happyShift action_5
action_8 (8) = happyShift action_6
action_8 (9) = happyShift action_7
action_8 (10) = happyShift action_8
action_8 (11) = happyShift action_9
action_8 (12) = happyShift action_10
action_8 (13) = happyShift action_11
action_8 (14) = happyShift action_12
action_8 (15) = happyShift action_13
action_8 (16) = happyShift action_14
action_8 (18) = happyShift action_15
action_8 (19) = happyShift action_16
action_8 (20) = happyShift action_17
action_8 (21) = happyShift action_18
action_8 (22) = happyShift action_19
action_8 (23) = happyShift action_20
action_8 (24) = happyShift action_21
action_8 (26) = happyShift action_22
action_8 (29) = happyShift action_23
action_8 (31) = happyShift action_24
action_8 (32) = happyShift action_25
action_8 (33) = happyShift action_26
action_8 (34) = happyShift action_27
action_8 (37) = happyShift action_28
action_8 (38) = happyShift action_29
action_8 (39) = happyShift action_30
action_8 (40) = happyShift action_31
action_8 (41) = happyShift action_32
action_8 (42) = happyShift action_33
action_8 (43) = happyShift action_34
action_8 (44) = happyShift action_35
action_8 (45) = happyShift action_36
action_8 (46) = happyShift action_37
action_8 (47) = happyShift action_38
action_8 (49) = happyShift action_39
action_8 (50) = happyShift action_40
action_8 (52) = happyShift action_41
action_8 (54) = happyShift action_42
action_8 (5) = happyGoto action_74
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (7) = happyShift action_5
action_9 (8) = happyShift action_6
action_9 (9) = happyShift action_7
action_9 (10) = happyShift action_8
action_9 (11) = happyShift action_9
action_9 (12) = happyShift action_10
action_9 (13) = happyShift action_11
action_9 (14) = happyShift action_12
action_9 (15) = happyShift action_13
action_9 (16) = happyShift action_14
action_9 (18) = happyShift action_15
action_9 (19) = happyShift action_16
action_9 (20) = happyShift action_17
action_9 (21) = happyShift action_18
action_9 (22) = happyShift action_19
action_9 (23) = happyShift action_20
action_9 (24) = happyShift action_21
action_9 (26) = happyShift action_22
action_9 (29) = happyShift action_23
action_9 (31) = happyShift action_24
action_9 (32) = happyShift action_25
action_9 (33) = happyShift action_26
action_9 (34) = happyShift action_27
action_9 (37) = happyShift action_28
action_9 (38) = happyShift action_29
action_9 (39) = happyShift action_30
action_9 (40) = happyShift action_31
action_9 (41) = happyShift action_32
action_9 (42) = happyShift action_33
action_9 (43) = happyShift action_34
action_9 (44) = happyShift action_35
action_9 (45) = happyShift action_36
action_9 (46) = happyShift action_37
action_9 (47) = happyShift action_38
action_9 (49) = happyShift action_39
action_9 (50) = happyShift action_40
action_9 (52) = happyShift action_41
action_9 (54) = happyShift action_42
action_9 (5) = happyGoto action_73
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (7) = happyShift action_5
action_10 (8) = happyShift action_6
action_10 (9) = happyShift action_7
action_10 (10) = happyShift action_8
action_10 (11) = happyShift action_9
action_10 (12) = happyShift action_10
action_10 (13) = happyShift action_11
action_10 (14) = happyShift action_12
action_10 (15) = happyShift action_13
action_10 (16) = happyShift action_14
action_10 (18) = happyShift action_15
action_10 (19) = happyShift action_16
action_10 (20) = happyShift action_17
action_10 (21) = happyShift action_18
action_10 (22) = happyShift action_19
action_10 (23) = happyShift action_20
action_10 (24) = happyShift action_21
action_10 (26) = happyShift action_22
action_10 (29) = happyShift action_23
action_10 (31) = happyShift action_24
action_10 (32) = happyShift action_25
action_10 (33) = happyShift action_26
action_10 (34) = happyShift action_27
action_10 (37) = happyShift action_28
action_10 (38) = happyShift action_29
action_10 (39) = happyShift action_30
action_10 (40) = happyShift action_31
action_10 (41) = happyShift action_32
action_10 (42) = happyShift action_33
action_10 (43) = happyShift action_34
action_10 (44) = happyShift action_35
action_10 (45) = happyShift action_36
action_10 (46) = happyShift action_37
action_10 (47) = happyShift action_38
action_10 (49) = happyShift action_39
action_10 (50) = happyShift action_40
action_10 (52) = happyShift action_41
action_10 (54) = happyShift action_42
action_10 (5) = happyGoto action_72
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (7) = happyShift action_5
action_11 (8) = happyShift action_6
action_11 (9) = happyShift action_7
action_11 (10) = happyShift action_8
action_11 (11) = happyShift action_9
action_11 (12) = happyShift action_10
action_11 (13) = happyShift action_11
action_11 (14) = happyShift action_12
action_11 (15) = happyShift action_13
action_11 (16) = happyShift action_14
action_11 (18) = happyShift action_15
action_11 (19) = happyShift action_16
action_11 (20) = happyShift action_17
action_11 (21) = happyShift action_18
action_11 (22) = happyShift action_19
action_11 (23) = happyShift action_20
action_11 (24) = happyShift action_21
action_11 (26) = happyShift action_22
action_11 (29) = happyShift action_23
action_11 (31) = happyShift action_24
action_11 (32) = happyShift action_25
action_11 (33) = happyShift action_26
action_11 (34) = happyShift action_27
action_11 (37) = happyShift action_28
action_11 (38) = happyShift action_29
action_11 (39) = happyShift action_30
action_11 (40) = happyShift action_31
action_11 (41) = happyShift action_32
action_11 (42) = happyShift action_33
action_11 (43) = happyShift action_34
action_11 (44) = happyShift action_35
action_11 (45) = happyShift action_36
action_11 (46) = happyShift action_37
action_11 (47) = happyShift action_38
action_11 (49) = happyShift action_39
action_11 (50) = happyShift action_40
action_11 (52) = happyShift action_41
action_11 (54) = happyShift action_42
action_11 (5) = happyGoto action_71
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (7) = happyShift action_5
action_12 (8) = happyShift action_6
action_12 (9) = happyShift action_7
action_12 (10) = happyShift action_8
action_12 (11) = happyShift action_9
action_12 (12) = happyShift action_10
action_12 (13) = happyShift action_11
action_12 (14) = happyShift action_12
action_12 (15) = happyShift action_13
action_12 (16) = happyShift action_14
action_12 (18) = happyShift action_15
action_12 (19) = happyShift action_16
action_12 (20) = happyShift action_17
action_12 (21) = happyShift action_18
action_12 (22) = happyShift action_19
action_12 (23) = happyShift action_20
action_12 (24) = happyShift action_21
action_12 (26) = happyShift action_22
action_12 (29) = happyShift action_23
action_12 (31) = happyShift action_24
action_12 (32) = happyShift action_25
action_12 (33) = happyShift action_26
action_12 (34) = happyShift action_27
action_12 (37) = happyShift action_28
action_12 (38) = happyShift action_29
action_12 (39) = happyShift action_30
action_12 (40) = happyShift action_31
action_12 (41) = happyShift action_32
action_12 (42) = happyShift action_33
action_12 (43) = happyShift action_34
action_12 (44) = happyShift action_35
action_12 (45) = happyShift action_36
action_12 (46) = happyShift action_37
action_12 (47) = happyShift action_38
action_12 (49) = happyShift action_39
action_12 (50) = happyShift action_40
action_12 (52) = happyShift action_41
action_12 (54) = happyShift action_42
action_12 (5) = happyGoto action_70
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (7) = happyShift action_5
action_13 (8) = happyShift action_6
action_13 (9) = happyShift action_7
action_13 (10) = happyShift action_8
action_13 (11) = happyShift action_9
action_13 (12) = happyShift action_10
action_13 (13) = happyShift action_11
action_13 (14) = happyShift action_12
action_13 (15) = happyShift action_13
action_13 (16) = happyShift action_14
action_13 (18) = happyShift action_15
action_13 (19) = happyShift action_16
action_13 (20) = happyShift action_17
action_13 (21) = happyShift action_18
action_13 (22) = happyShift action_19
action_13 (23) = happyShift action_20
action_13 (24) = happyShift action_21
action_13 (26) = happyShift action_22
action_13 (29) = happyShift action_23
action_13 (31) = happyShift action_24
action_13 (32) = happyShift action_25
action_13 (33) = happyShift action_26
action_13 (34) = happyShift action_27
action_13 (37) = happyShift action_28
action_13 (38) = happyShift action_29
action_13 (39) = happyShift action_30
action_13 (40) = happyShift action_31
action_13 (41) = happyShift action_32
action_13 (42) = happyShift action_33
action_13 (43) = happyShift action_34
action_13 (44) = happyShift action_35
action_13 (45) = happyShift action_36
action_13 (46) = happyShift action_37
action_13 (47) = happyShift action_38
action_13 (49) = happyShift action_39
action_13 (50) = happyShift action_40
action_13 (52) = happyShift action_41
action_13 (54) = happyShift action_42
action_13 (5) = happyGoto action_69
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (7) = happyShift action_5
action_14 (8) = happyShift action_6
action_14 (9) = happyShift action_7
action_14 (10) = happyShift action_8
action_14 (11) = happyShift action_9
action_14 (12) = happyShift action_10
action_14 (13) = happyShift action_11
action_14 (14) = happyShift action_12
action_14 (15) = happyShift action_13
action_14 (16) = happyShift action_14
action_14 (18) = happyShift action_15
action_14 (19) = happyShift action_16
action_14 (20) = happyShift action_17
action_14 (21) = happyShift action_18
action_14 (22) = happyShift action_19
action_14 (23) = happyShift action_20
action_14 (24) = happyShift action_21
action_14 (26) = happyShift action_22
action_14 (29) = happyShift action_23
action_14 (31) = happyShift action_24
action_14 (32) = happyShift action_25
action_14 (33) = happyShift action_26
action_14 (34) = happyShift action_27
action_14 (37) = happyShift action_28
action_14 (38) = happyShift action_29
action_14 (39) = happyShift action_30
action_14 (40) = happyShift action_31
action_14 (41) = happyShift action_32
action_14 (42) = happyShift action_33
action_14 (43) = happyShift action_34
action_14 (44) = happyShift action_35
action_14 (45) = happyShift action_36
action_14 (46) = happyShift action_37
action_14 (47) = happyShift action_38
action_14 (49) = happyShift action_39
action_14 (50) = happyShift action_40
action_14 (52) = happyShift action_41
action_14 (54) = happyShift action_42
action_14 (5) = happyGoto action_68
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (7) = happyShift action_5
action_15 (8) = happyShift action_6
action_15 (9) = happyShift action_7
action_15 (10) = happyShift action_8
action_15 (11) = happyShift action_9
action_15 (12) = happyShift action_10
action_15 (13) = happyShift action_11
action_15 (14) = happyShift action_12
action_15 (15) = happyShift action_13
action_15 (16) = happyShift action_14
action_15 (18) = happyShift action_15
action_15 (19) = happyShift action_16
action_15 (20) = happyShift action_17
action_15 (21) = happyShift action_18
action_15 (22) = happyShift action_19
action_15 (23) = happyShift action_20
action_15 (24) = happyShift action_21
action_15 (26) = happyShift action_22
action_15 (29) = happyShift action_23
action_15 (31) = happyShift action_24
action_15 (32) = happyShift action_25
action_15 (33) = happyShift action_26
action_15 (34) = happyShift action_27
action_15 (37) = happyShift action_28
action_15 (38) = happyShift action_29
action_15 (39) = happyShift action_30
action_15 (40) = happyShift action_31
action_15 (41) = happyShift action_32
action_15 (42) = happyShift action_33
action_15 (43) = happyShift action_34
action_15 (44) = happyShift action_35
action_15 (45) = happyShift action_36
action_15 (46) = happyShift action_37
action_15 (47) = happyShift action_38
action_15 (49) = happyShift action_39
action_15 (50) = happyShift action_40
action_15 (52) = happyShift action_41
action_15 (54) = happyShift action_42
action_15 (5) = happyGoto action_67
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (7) = happyShift action_5
action_16 (8) = happyShift action_6
action_16 (9) = happyShift action_7
action_16 (10) = happyShift action_8
action_16 (11) = happyShift action_9
action_16 (12) = happyShift action_10
action_16 (13) = happyShift action_11
action_16 (14) = happyShift action_12
action_16 (15) = happyShift action_13
action_16 (16) = happyShift action_14
action_16 (18) = happyShift action_15
action_16 (19) = happyShift action_16
action_16 (20) = happyShift action_17
action_16 (21) = happyShift action_18
action_16 (22) = happyShift action_19
action_16 (23) = happyShift action_20
action_16 (24) = happyShift action_21
action_16 (26) = happyShift action_22
action_16 (29) = happyShift action_23
action_16 (31) = happyShift action_24
action_16 (32) = happyShift action_25
action_16 (33) = happyShift action_26
action_16 (34) = happyShift action_27
action_16 (37) = happyShift action_28
action_16 (38) = happyShift action_29
action_16 (39) = happyShift action_30
action_16 (40) = happyShift action_31
action_16 (41) = happyShift action_32
action_16 (42) = happyShift action_33
action_16 (43) = happyShift action_34
action_16 (44) = happyShift action_35
action_16 (45) = happyShift action_36
action_16 (46) = happyShift action_37
action_16 (47) = happyShift action_38
action_16 (49) = happyShift action_39
action_16 (50) = happyShift action_40
action_16 (52) = happyShift action_41
action_16 (54) = happyShift action_42
action_16 (5) = happyGoto action_66
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (7) = happyShift action_5
action_17 (8) = happyShift action_6
action_17 (9) = happyShift action_7
action_17 (10) = happyShift action_8
action_17 (11) = happyShift action_9
action_17 (12) = happyShift action_10
action_17 (13) = happyShift action_11
action_17 (14) = happyShift action_12
action_17 (15) = happyShift action_13
action_17 (16) = happyShift action_14
action_17 (18) = happyShift action_15
action_17 (19) = happyShift action_16
action_17 (20) = happyShift action_17
action_17 (21) = happyShift action_18
action_17 (22) = happyShift action_19
action_17 (23) = happyShift action_20
action_17 (24) = happyShift action_21
action_17 (26) = happyShift action_22
action_17 (29) = happyShift action_23
action_17 (31) = happyShift action_24
action_17 (32) = happyShift action_25
action_17 (33) = happyShift action_26
action_17 (34) = happyShift action_27
action_17 (37) = happyShift action_28
action_17 (38) = happyShift action_29
action_17 (39) = happyShift action_30
action_17 (40) = happyShift action_31
action_17 (41) = happyShift action_32
action_17 (42) = happyShift action_33
action_17 (43) = happyShift action_34
action_17 (44) = happyShift action_35
action_17 (45) = happyShift action_36
action_17 (46) = happyShift action_37
action_17 (47) = happyShift action_38
action_17 (49) = happyShift action_39
action_17 (50) = happyShift action_40
action_17 (52) = happyShift action_41
action_17 (54) = happyShift action_42
action_17 (5) = happyGoto action_65
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (7) = happyShift action_5
action_18 (8) = happyShift action_6
action_18 (9) = happyShift action_7
action_18 (10) = happyShift action_8
action_18 (11) = happyShift action_9
action_18 (12) = happyShift action_10
action_18 (13) = happyShift action_11
action_18 (14) = happyShift action_12
action_18 (15) = happyShift action_13
action_18 (16) = happyShift action_14
action_18 (18) = happyShift action_15
action_18 (19) = happyShift action_16
action_18 (20) = happyShift action_17
action_18 (21) = happyShift action_18
action_18 (22) = happyShift action_19
action_18 (23) = happyShift action_20
action_18 (24) = happyShift action_21
action_18 (26) = happyShift action_22
action_18 (29) = happyShift action_23
action_18 (31) = happyShift action_24
action_18 (32) = happyShift action_25
action_18 (33) = happyShift action_26
action_18 (34) = happyShift action_27
action_18 (37) = happyShift action_28
action_18 (38) = happyShift action_29
action_18 (39) = happyShift action_30
action_18 (40) = happyShift action_31
action_18 (41) = happyShift action_32
action_18 (42) = happyShift action_33
action_18 (43) = happyShift action_34
action_18 (44) = happyShift action_35
action_18 (45) = happyShift action_36
action_18 (46) = happyShift action_37
action_18 (47) = happyShift action_38
action_18 (49) = happyShift action_39
action_18 (50) = happyShift action_40
action_18 (52) = happyShift action_41
action_18 (54) = happyShift action_42
action_18 (5) = happyGoto action_64
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (7) = happyShift action_5
action_19 (8) = happyShift action_6
action_19 (9) = happyShift action_7
action_19 (10) = happyShift action_8
action_19 (11) = happyShift action_9
action_19 (12) = happyShift action_10
action_19 (13) = happyShift action_11
action_19 (14) = happyShift action_12
action_19 (15) = happyShift action_13
action_19 (16) = happyShift action_14
action_19 (18) = happyShift action_15
action_19 (19) = happyShift action_16
action_19 (20) = happyShift action_17
action_19 (21) = happyShift action_18
action_19 (22) = happyShift action_19
action_19 (23) = happyShift action_20
action_19 (24) = happyShift action_21
action_19 (26) = happyShift action_22
action_19 (29) = happyShift action_23
action_19 (31) = happyShift action_24
action_19 (32) = happyShift action_25
action_19 (33) = happyShift action_26
action_19 (34) = happyShift action_27
action_19 (37) = happyShift action_28
action_19 (38) = happyShift action_29
action_19 (39) = happyShift action_30
action_19 (40) = happyShift action_31
action_19 (41) = happyShift action_32
action_19 (42) = happyShift action_33
action_19 (43) = happyShift action_34
action_19 (44) = happyShift action_35
action_19 (45) = happyShift action_36
action_19 (46) = happyShift action_37
action_19 (47) = happyShift action_38
action_19 (49) = happyShift action_39
action_19 (50) = happyShift action_40
action_19 (52) = happyShift action_41
action_19 (54) = happyShift action_42
action_19 (5) = happyGoto action_63
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (49) = happyShift action_62
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (23) = happyShift action_61
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (7) = happyShift action_5
action_22 (8) = happyShift action_6
action_22 (9) = happyShift action_7
action_22 (10) = happyShift action_8
action_22 (11) = happyShift action_9
action_22 (12) = happyShift action_10
action_22 (13) = happyShift action_11
action_22 (14) = happyShift action_12
action_22 (15) = happyShift action_13
action_22 (16) = happyShift action_14
action_22 (18) = happyShift action_15
action_22 (19) = happyShift action_16
action_22 (20) = happyShift action_17
action_22 (21) = happyShift action_18
action_22 (22) = happyShift action_19
action_22 (23) = happyShift action_20
action_22 (24) = happyShift action_21
action_22 (26) = happyShift action_22
action_22 (29) = happyShift action_23
action_22 (31) = happyShift action_24
action_22 (32) = happyShift action_25
action_22 (33) = happyShift action_26
action_22 (34) = happyShift action_27
action_22 (37) = happyShift action_28
action_22 (38) = happyShift action_29
action_22 (39) = happyShift action_30
action_22 (40) = happyShift action_31
action_22 (41) = happyShift action_32
action_22 (42) = happyShift action_33
action_22 (43) = happyShift action_34
action_22 (44) = happyShift action_35
action_22 (45) = happyShift action_36
action_22 (46) = happyShift action_37
action_22 (47) = happyShift action_38
action_22 (49) = happyShift action_39
action_22 (50) = happyShift action_40
action_22 (52) = happyShift action_41
action_22 (54) = happyShift action_42
action_22 (5) = happyGoto action_60
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_5
action_23 (8) = happyShift action_6
action_23 (9) = happyShift action_7
action_23 (10) = happyShift action_8
action_23 (11) = happyShift action_9
action_23 (12) = happyShift action_10
action_23 (13) = happyShift action_11
action_23 (14) = happyShift action_12
action_23 (15) = happyShift action_13
action_23 (16) = happyShift action_14
action_23 (18) = happyShift action_15
action_23 (19) = happyShift action_16
action_23 (20) = happyShift action_17
action_23 (21) = happyShift action_18
action_23 (22) = happyShift action_19
action_23 (23) = happyShift action_20
action_23 (24) = happyShift action_21
action_23 (26) = happyShift action_22
action_23 (29) = happyShift action_23
action_23 (31) = happyShift action_24
action_23 (32) = happyShift action_25
action_23 (33) = happyShift action_26
action_23 (34) = happyShift action_27
action_23 (37) = happyShift action_28
action_23 (38) = happyShift action_29
action_23 (39) = happyShift action_30
action_23 (40) = happyShift action_31
action_23 (41) = happyShift action_32
action_23 (42) = happyShift action_33
action_23 (43) = happyShift action_34
action_23 (44) = happyShift action_35
action_23 (45) = happyShift action_36
action_23 (46) = happyShift action_37
action_23 (47) = happyShift action_38
action_23 (49) = happyShift action_39
action_23 (50) = happyShift action_40
action_23 (52) = happyShift action_41
action_23 (54) = happyShift action_42
action_23 (5) = happyGoto action_59
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (7) = happyShift action_5
action_24 (8) = happyShift action_6
action_24 (9) = happyShift action_7
action_24 (10) = happyShift action_8
action_24 (11) = happyShift action_9
action_24 (12) = happyShift action_10
action_24 (13) = happyShift action_11
action_24 (14) = happyShift action_12
action_24 (15) = happyShift action_13
action_24 (16) = happyShift action_14
action_24 (18) = happyShift action_15
action_24 (19) = happyShift action_16
action_24 (20) = happyShift action_17
action_24 (21) = happyShift action_18
action_24 (22) = happyShift action_19
action_24 (23) = happyShift action_20
action_24 (24) = happyShift action_21
action_24 (26) = happyShift action_22
action_24 (29) = happyShift action_23
action_24 (31) = happyShift action_24
action_24 (32) = happyShift action_25
action_24 (33) = happyShift action_26
action_24 (34) = happyShift action_27
action_24 (37) = happyShift action_28
action_24 (38) = happyShift action_29
action_24 (39) = happyShift action_30
action_24 (40) = happyShift action_31
action_24 (41) = happyShift action_32
action_24 (42) = happyShift action_33
action_24 (43) = happyShift action_34
action_24 (44) = happyShift action_35
action_24 (45) = happyShift action_36
action_24 (46) = happyShift action_37
action_24 (47) = happyShift action_38
action_24 (49) = happyShift action_39
action_24 (50) = happyShift action_40
action_24 (52) = happyShift action_41
action_24 (54) = happyShift action_42
action_24 (5) = happyGoto action_58
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (7) = happyShift action_5
action_25 (8) = happyShift action_6
action_25 (9) = happyShift action_7
action_25 (10) = happyShift action_8
action_25 (11) = happyShift action_9
action_25 (12) = happyShift action_10
action_25 (13) = happyShift action_11
action_25 (14) = happyShift action_12
action_25 (15) = happyShift action_13
action_25 (16) = happyShift action_14
action_25 (18) = happyShift action_15
action_25 (19) = happyShift action_16
action_25 (20) = happyShift action_17
action_25 (21) = happyShift action_18
action_25 (22) = happyShift action_19
action_25 (23) = happyShift action_20
action_25 (24) = happyShift action_21
action_25 (26) = happyShift action_22
action_25 (29) = happyShift action_23
action_25 (31) = happyShift action_24
action_25 (32) = happyShift action_25
action_25 (33) = happyShift action_26
action_25 (34) = happyShift action_27
action_25 (37) = happyShift action_28
action_25 (38) = happyShift action_29
action_25 (39) = happyShift action_30
action_25 (40) = happyShift action_31
action_25 (41) = happyShift action_32
action_25 (42) = happyShift action_33
action_25 (43) = happyShift action_34
action_25 (44) = happyShift action_35
action_25 (45) = happyShift action_36
action_25 (46) = happyShift action_37
action_25 (47) = happyShift action_38
action_25 (49) = happyShift action_39
action_25 (50) = happyShift action_40
action_25 (52) = happyShift action_41
action_25 (54) = happyShift action_42
action_25 (5) = happyGoto action_57
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (7) = happyShift action_5
action_26 (8) = happyShift action_6
action_26 (9) = happyShift action_7
action_26 (10) = happyShift action_8
action_26 (11) = happyShift action_9
action_26 (12) = happyShift action_10
action_26 (13) = happyShift action_11
action_26 (14) = happyShift action_12
action_26 (15) = happyShift action_13
action_26 (16) = happyShift action_14
action_26 (18) = happyShift action_15
action_26 (19) = happyShift action_16
action_26 (20) = happyShift action_17
action_26 (21) = happyShift action_18
action_26 (22) = happyShift action_19
action_26 (23) = happyShift action_20
action_26 (24) = happyShift action_21
action_26 (26) = happyShift action_22
action_26 (29) = happyShift action_23
action_26 (31) = happyShift action_24
action_26 (32) = happyShift action_25
action_26 (33) = happyShift action_26
action_26 (34) = happyShift action_27
action_26 (37) = happyShift action_28
action_26 (38) = happyShift action_29
action_26 (39) = happyShift action_30
action_26 (40) = happyShift action_31
action_26 (41) = happyShift action_32
action_26 (42) = happyShift action_33
action_26 (43) = happyShift action_34
action_26 (44) = happyShift action_35
action_26 (45) = happyShift action_36
action_26 (46) = happyShift action_37
action_26 (47) = happyShift action_38
action_26 (49) = happyShift action_39
action_26 (50) = happyShift action_40
action_26 (52) = happyShift action_41
action_26 (54) = happyShift action_42
action_26 (5) = happyGoto action_56
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (7) = happyShift action_5
action_27 (8) = happyShift action_6
action_27 (9) = happyShift action_7
action_27 (10) = happyShift action_8
action_27 (11) = happyShift action_9
action_27 (12) = happyShift action_10
action_27 (13) = happyShift action_11
action_27 (14) = happyShift action_12
action_27 (15) = happyShift action_13
action_27 (16) = happyShift action_14
action_27 (18) = happyShift action_15
action_27 (19) = happyShift action_16
action_27 (20) = happyShift action_17
action_27 (21) = happyShift action_18
action_27 (22) = happyShift action_19
action_27 (23) = happyShift action_20
action_27 (24) = happyShift action_21
action_27 (26) = happyShift action_22
action_27 (29) = happyShift action_23
action_27 (31) = happyShift action_24
action_27 (32) = happyShift action_25
action_27 (33) = happyShift action_26
action_27 (34) = happyShift action_27
action_27 (37) = happyShift action_28
action_27 (38) = happyShift action_29
action_27 (39) = happyShift action_30
action_27 (40) = happyShift action_31
action_27 (41) = happyShift action_32
action_27 (42) = happyShift action_33
action_27 (43) = happyShift action_34
action_27 (44) = happyShift action_35
action_27 (45) = happyShift action_36
action_27 (46) = happyShift action_37
action_27 (47) = happyShift action_38
action_27 (49) = happyShift action_39
action_27 (50) = happyShift action_40
action_27 (52) = happyShift action_41
action_27 (54) = happyShift action_42
action_27 (5) = happyGoto action_55
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (7) = happyShift action_5
action_28 (8) = happyShift action_6
action_28 (9) = happyShift action_7
action_28 (10) = happyShift action_8
action_28 (11) = happyShift action_9
action_28 (12) = happyShift action_10
action_28 (13) = happyShift action_11
action_28 (14) = happyShift action_12
action_28 (15) = happyShift action_13
action_28 (16) = happyShift action_14
action_28 (18) = happyShift action_15
action_28 (19) = happyShift action_16
action_28 (20) = happyShift action_17
action_28 (21) = happyShift action_18
action_28 (22) = happyShift action_19
action_28 (23) = happyShift action_20
action_28 (24) = happyShift action_21
action_28 (26) = happyShift action_22
action_28 (29) = happyShift action_23
action_28 (31) = happyShift action_24
action_28 (32) = happyShift action_25
action_28 (33) = happyShift action_26
action_28 (34) = happyShift action_27
action_28 (37) = happyShift action_28
action_28 (38) = happyShift action_29
action_28 (39) = happyShift action_30
action_28 (40) = happyShift action_31
action_28 (41) = happyShift action_32
action_28 (42) = happyShift action_33
action_28 (43) = happyShift action_34
action_28 (44) = happyShift action_35
action_28 (45) = happyShift action_36
action_28 (46) = happyShift action_37
action_28 (47) = happyShift action_38
action_28 (49) = happyShift action_39
action_28 (50) = happyShift action_40
action_28 (52) = happyShift action_41
action_28 (54) = happyShift action_42
action_28 (5) = happyGoto action_54
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (7) = happyShift action_5
action_29 (8) = happyShift action_6
action_29 (9) = happyShift action_7
action_29 (10) = happyShift action_8
action_29 (11) = happyShift action_9
action_29 (12) = happyShift action_10
action_29 (13) = happyShift action_11
action_29 (14) = happyShift action_12
action_29 (15) = happyShift action_13
action_29 (16) = happyShift action_14
action_29 (18) = happyShift action_15
action_29 (19) = happyShift action_16
action_29 (20) = happyShift action_17
action_29 (21) = happyShift action_18
action_29 (22) = happyShift action_19
action_29 (23) = happyShift action_20
action_29 (24) = happyShift action_21
action_29 (26) = happyShift action_22
action_29 (29) = happyShift action_23
action_29 (31) = happyShift action_24
action_29 (32) = happyShift action_25
action_29 (33) = happyShift action_26
action_29 (34) = happyShift action_27
action_29 (37) = happyShift action_28
action_29 (38) = happyShift action_29
action_29 (39) = happyShift action_30
action_29 (40) = happyShift action_31
action_29 (41) = happyShift action_32
action_29 (42) = happyShift action_33
action_29 (43) = happyShift action_34
action_29 (44) = happyShift action_35
action_29 (45) = happyShift action_36
action_29 (46) = happyShift action_37
action_29 (47) = happyShift action_38
action_29 (49) = happyShift action_39
action_29 (50) = happyShift action_40
action_29 (52) = happyShift action_41
action_29 (54) = happyShift action_42
action_29 (5) = happyGoto action_53
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (7) = happyShift action_5
action_30 (8) = happyShift action_6
action_30 (9) = happyShift action_7
action_30 (10) = happyShift action_8
action_30 (11) = happyShift action_9
action_30 (12) = happyShift action_10
action_30 (13) = happyShift action_11
action_30 (14) = happyShift action_12
action_30 (15) = happyShift action_13
action_30 (16) = happyShift action_14
action_30 (18) = happyShift action_15
action_30 (19) = happyShift action_16
action_30 (20) = happyShift action_17
action_30 (21) = happyShift action_18
action_30 (22) = happyShift action_19
action_30 (23) = happyShift action_20
action_30 (24) = happyShift action_21
action_30 (26) = happyShift action_22
action_30 (29) = happyShift action_23
action_30 (31) = happyShift action_24
action_30 (32) = happyShift action_25
action_30 (33) = happyShift action_26
action_30 (34) = happyShift action_27
action_30 (37) = happyShift action_28
action_30 (38) = happyShift action_29
action_30 (39) = happyShift action_30
action_30 (40) = happyShift action_31
action_30 (41) = happyShift action_32
action_30 (42) = happyShift action_33
action_30 (43) = happyShift action_34
action_30 (44) = happyShift action_35
action_30 (45) = happyShift action_36
action_30 (46) = happyShift action_37
action_30 (47) = happyShift action_38
action_30 (49) = happyShift action_39
action_30 (50) = happyShift action_40
action_30 (52) = happyShift action_41
action_30 (54) = happyShift action_42
action_30 (5) = happyGoto action_52
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (7) = happyShift action_5
action_31 (8) = happyShift action_6
action_31 (9) = happyShift action_7
action_31 (10) = happyShift action_8
action_31 (11) = happyShift action_9
action_31 (12) = happyShift action_10
action_31 (13) = happyShift action_11
action_31 (14) = happyShift action_12
action_31 (15) = happyShift action_13
action_31 (16) = happyShift action_14
action_31 (18) = happyShift action_15
action_31 (19) = happyShift action_16
action_31 (20) = happyShift action_17
action_31 (21) = happyShift action_18
action_31 (22) = happyShift action_19
action_31 (23) = happyShift action_20
action_31 (24) = happyShift action_21
action_31 (26) = happyShift action_22
action_31 (29) = happyShift action_23
action_31 (31) = happyShift action_24
action_31 (32) = happyShift action_25
action_31 (33) = happyShift action_26
action_31 (34) = happyShift action_27
action_31 (37) = happyShift action_28
action_31 (38) = happyShift action_29
action_31 (39) = happyShift action_30
action_31 (40) = happyShift action_31
action_31 (41) = happyShift action_32
action_31 (42) = happyShift action_33
action_31 (43) = happyShift action_34
action_31 (44) = happyShift action_35
action_31 (45) = happyShift action_36
action_31 (46) = happyShift action_37
action_31 (47) = happyShift action_38
action_31 (49) = happyShift action_39
action_31 (50) = happyShift action_40
action_31 (52) = happyShift action_41
action_31 (54) = happyShift action_42
action_31 (5) = happyGoto action_51
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (7) = happyShift action_5
action_32 (8) = happyShift action_6
action_32 (9) = happyShift action_7
action_32 (10) = happyShift action_8
action_32 (11) = happyShift action_9
action_32 (12) = happyShift action_10
action_32 (13) = happyShift action_11
action_32 (14) = happyShift action_12
action_32 (15) = happyShift action_13
action_32 (16) = happyShift action_14
action_32 (18) = happyShift action_15
action_32 (19) = happyShift action_16
action_32 (20) = happyShift action_17
action_32 (21) = happyShift action_18
action_32 (22) = happyShift action_19
action_32 (23) = happyShift action_20
action_32 (24) = happyShift action_21
action_32 (26) = happyShift action_22
action_32 (29) = happyShift action_23
action_32 (31) = happyShift action_24
action_32 (32) = happyShift action_25
action_32 (33) = happyShift action_26
action_32 (34) = happyShift action_27
action_32 (37) = happyShift action_28
action_32 (38) = happyShift action_29
action_32 (39) = happyShift action_30
action_32 (40) = happyShift action_31
action_32 (41) = happyShift action_32
action_32 (42) = happyShift action_33
action_32 (43) = happyShift action_34
action_32 (44) = happyShift action_35
action_32 (45) = happyShift action_36
action_32 (46) = happyShift action_37
action_32 (47) = happyShift action_38
action_32 (49) = happyShift action_39
action_32 (50) = happyShift action_40
action_32 (52) = happyShift action_41
action_32 (54) = happyShift action_42
action_32 (5) = happyGoto action_50
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (7) = happyShift action_5
action_33 (8) = happyShift action_6
action_33 (9) = happyShift action_7
action_33 (10) = happyShift action_8
action_33 (11) = happyShift action_9
action_33 (12) = happyShift action_10
action_33 (13) = happyShift action_11
action_33 (14) = happyShift action_12
action_33 (15) = happyShift action_13
action_33 (16) = happyShift action_14
action_33 (18) = happyShift action_15
action_33 (19) = happyShift action_16
action_33 (20) = happyShift action_17
action_33 (21) = happyShift action_18
action_33 (22) = happyShift action_19
action_33 (23) = happyShift action_20
action_33 (24) = happyShift action_21
action_33 (26) = happyShift action_22
action_33 (29) = happyShift action_23
action_33 (31) = happyShift action_24
action_33 (32) = happyShift action_25
action_33 (33) = happyShift action_26
action_33 (34) = happyShift action_27
action_33 (37) = happyShift action_28
action_33 (38) = happyShift action_29
action_33 (39) = happyShift action_30
action_33 (40) = happyShift action_31
action_33 (41) = happyShift action_32
action_33 (42) = happyShift action_33
action_33 (43) = happyShift action_34
action_33 (44) = happyShift action_35
action_33 (45) = happyShift action_36
action_33 (46) = happyShift action_37
action_33 (47) = happyShift action_38
action_33 (49) = happyShift action_39
action_33 (50) = happyShift action_40
action_33 (52) = happyShift action_41
action_33 (54) = happyShift action_42
action_33 (5) = happyGoto action_49
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (7) = happyShift action_5
action_34 (8) = happyShift action_6
action_34 (9) = happyShift action_7
action_34 (10) = happyShift action_8
action_34 (11) = happyShift action_9
action_34 (12) = happyShift action_10
action_34 (13) = happyShift action_11
action_34 (14) = happyShift action_12
action_34 (15) = happyShift action_13
action_34 (16) = happyShift action_14
action_34 (18) = happyShift action_15
action_34 (19) = happyShift action_16
action_34 (20) = happyShift action_17
action_34 (21) = happyShift action_18
action_34 (22) = happyShift action_19
action_34 (23) = happyShift action_20
action_34 (24) = happyShift action_21
action_34 (26) = happyShift action_22
action_34 (29) = happyShift action_23
action_34 (31) = happyShift action_24
action_34 (32) = happyShift action_25
action_34 (33) = happyShift action_26
action_34 (34) = happyShift action_27
action_34 (37) = happyShift action_28
action_34 (38) = happyShift action_29
action_34 (39) = happyShift action_30
action_34 (40) = happyShift action_31
action_34 (41) = happyShift action_32
action_34 (42) = happyShift action_33
action_34 (43) = happyShift action_34
action_34 (44) = happyShift action_35
action_34 (45) = happyShift action_36
action_34 (46) = happyShift action_37
action_34 (47) = happyShift action_38
action_34 (49) = happyShift action_39
action_34 (50) = happyShift action_40
action_34 (52) = happyShift action_41
action_34 (54) = happyShift action_42
action_34 (5) = happyGoto action_48
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (7) = happyShift action_5
action_35 (8) = happyShift action_6
action_35 (9) = happyShift action_7
action_35 (10) = happyShift action_8
action_35 (11) = happyShift action_9
action_35 (12) = happyShift action_10
action_35 (13) = happyShift action_11
action_35 (14) = happyShift action_12
action_35 (15) = happyShift action_13
action_35 (16) = happyShift action_14
action_35 (18) = happyShift action_15
action_35 (19) = happyShift action_16
action_35 (20) = happyShift action_17
action_35 (21) = happyShift action_18
action_35 (22) = happyShift action_19
action_35 (23) = happyShift action_20
action_35 (24) = happyShift action_21
action_35 (26) = happyShift action_22
action_35 (29) = happyShift action_23
action_35 (31) = happyShift action_24
action_35 (32) = happyShift action_25
action_35 (33) = happyShift action_26
action_35 (34) = happyShift action_27
action_35 (37) = happyShift action_28
action_35 (38) = happyShift action_29
action_35 (39) = happyShift action_30
action_35 (40) = happyShift action_31
action_35 (41) = happyShift action_32
action_35 (42) = happyShift action_33
action_35 (43) = happyShift action_34
action_35 (44) = happyShift action_35
action_35 (45) = happyShift action_36
action_35 (46) = happyShift action_37
action_35 (47) = happyShift action_38
action_35 (49) = happyShift action_39
action_35 (50) = happyShift action_40
action_35 (52) = happyShift action_41
action_35 (54) = happyShift action_42
action_35 (5) = happyGoto action_47
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (7) = happyShift action_5
action_36 (8) = happyShift action_6
action_36 (9) = happyShift action_7
action_36 (10) = happyShift action_8
action_36 (11) = happyShift action_9
action_36 (12) = happyShift action_10
action_36 (13) = happyShift action_11
action_36 (14) = happyShift action_12
action_36 (15) = happyShift action_13
action_36 (16) = happyShift action_14
action_36 (18) = happyShift action_15
action_36 (19) = happyShift action_16
action_36 (20) = happyShift action_17
action_36 (21) = happyShift action_18
action_36 (22) = happyShift action_19
action_36 (23) = happyShift action_20
action_36 (24) = happyShift action_21
action_36 (26) = happyShift action_22
action_36 (29) = happyShift action_23
action_36 (31) = happyShift action_24
action_36 (32) = happyShift action_25
action_36 (33) = happyShift action_26
action_36 (34) = happyShift action_27
action_36 (37) = happyShift action_28
action_36 (38) = happyShift action_29
action_36 (39) = happyShift action_30
action_36 (40) = happyShift action_31
action_36 (41) = happyShift action_32
action_36 (42) = happyShift action_33
action_36 (43) = happyShift action_34
action_36 (44) = happyShift action_35
action_36 (45) = happyShift action_36
action_36 (46) = happyShift action_37
action_36 (47) = happyShift action_38
action_36 (49) = happyShift action_39
action_36 (50) = happyShift action_40
action_36 (52) = happyShift action_41
action_36 (54) = happyShift action_42
action_36 (5) = happyGoto action_46
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_32

action_38 _ = happyReduce_33

action_39 _ = happyReduce_34

action_40 _ = happyReduce_31

action_41 (50) = happyShift action_45
action_41 (6) = happyGoto action_44
action_41 _ = happyReduce_43

action_42 (7) = happyShift action_5
action_42 (8) = happyShift action_6
action_42 (9) = happyShift action_7
action_42 (10) = happyShift action_8
action_42 (11) = happyShift action_9
action_42 (12) = happyShift action_10
action_42 (13) = happyShift action_11
action_42 (14) = happyShift action_12
action_42 (15) = happyShift action_13
action_42 (16) = happyShift action_14
action_42 (18) = happyShift action_15
action_42 (19) = happyShift action_16
action_42 (20) = happyShift action_17
action_42 (21) = happyShift action_18
action_42 (22) = happyShift action_19
action_42 (23) = happyShift action_20
action_42 (24) = happyShift action_21
action_42 (26) = happyShift action_22
action_42 (29) = happyShift action_23
action_42 (31) = happyShift action_24
action_42 (32) = happyShift action_25
action_42 (33) = happyShift action_26
action_42 (34) = happyShift action_27
action_42 (37) = happyShift action_28
action_42 (38) = happyShift action_29
action_42 (39) = happyShift action_30
action_42 (40) = happyShift action_31
action_42 (41) = happyShift action_32
action_42 (42) = happyShift action_33
action_42 (43) = happyShift action_34
action_42 (44) = happyShift action_35
action_42 (45) = happyShift action_36
action_42 (46) = happyShift action_37
action_42 (47) = happyShift action_38
action_42 (49) = happyShift action_39
action_42 (50) = happyShift action_40
action_42 (52) = happyShift action_41
action_42 (54) = happyShift action_42
action_42 (5) = happyGoto action_43
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_13

action_44 (51) = happyShift action_104
action_44 (53) = happyShift action_105
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_44

action_46 (7) = happyShift action_5
action_46 (8) = happyShift action_6
action_46 (9) = happyShift action_7
action_46 (10) = happyShift action_8
action_46 (11) = happyShift action_9
action_46 (12) = happyShift action_10
action_46 (13) = happyShift action_11
action_46 (14) = happyShift action_12
action_46 (15) = happyShift action_13
action_46 (16) = happyShift action_14
action_46 (18) = happyShift action_15
action_46 (19) = happyShift action_16
action_46 (20) = happyShift action_17
action_46 (21) = happyShift action_18
action_46 (22) = happyShift action_19
action_46 (23) = happyShift action_20
action_46 (24) = happyShift action_21
action_46 (26) = happyShift action_22
action_46 (29) = happyShift action_23
action_46 (31) = happyShift action_24
action_46 (32) = happyShift action_25
action_46 (33) = happyShift action_26
action_46 (34) = happyShift action_27
action_46 (37) = happyShift action_28
action_46 (38) = happyShift action_29
action_46 (39) = happyShift action_30
action_46 (40) = happyShift action_31
action_46 (41) = happyShift action_32
action_46 (42) = happyShift action_33
action_46 (43) = happyShift action_34
action_46 (44) = happyShift action_35
action_46 (45) = happyShift action_36
action_46 (46) = happyShift action_37
action_46 (47) = happyShift action_38
action_46 (49) = happyShift action_39
action_46 (50) = happyShift action_40
action_46 (52) = happyShift action_41
action_46 (54) = happyShift action_42
action_46 (5) = happyGoto action_103
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_29

action_48 (7) = happyShift action_5
action_48 (8) = happyShift action_6
action_48 (9) = happyShift action_7
action_48 (10) = happyShift action_8
action_48 (11) = happyShift action_9
action_48 (12) = happyShift action_10
action_48 (13) = happyShift action_11
action_48 (14) = happyShift action_12
action_48 (15) = happyShift action_13
action_48 (16) = happyShift action_14
action_48 (18) = happyShift action_15
action_48 (19) = happyShift action_16
action_48 (20) = happyShift action_17
action_48 (21) = happyShift action_18
action_48 (22) = happyShift action_19
action_48 (23) = happyShift action_20
action_48 (24) = happyShift action_21
action_48 (26) = happyShift action_22
action_48 (29) = happyShift action_23
action_48 (31) = happyShift action_24
action_48 (32) = happyShift action_25
action_48 (33) = happyShift action_26
action_48 (34) = happyShift action_27
action_48 (37) = happyShift action_28
action_48 (38) = happyShift action_29
action_48 (39) = happyShift action_30
action_48 (40) = happyShift action_31
action_48 (41) = happyShift action_32
action_48 (42) = happyShift action_33
action_48 (43) = happyShift action_34
action_48 (44) = happyShift action_35
action_48 (45) = happyShift action_36
action_48 (46) = happyShift action_37
action_48 (47) = happyShift action_38
action_48 (49) = happyShift action_39
action_48 (50) = happyShift action_40
action_48 (52) = happyShift action_41
action_48 (54) = happyShift action_42
action_48 (5) = happyGoto action_102
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (7) = happyShift action_5
action_49 (8) = happyShift action_6
action_49 (9) = happyShift action_7
action_49 (10) = happyShift action_8
action_49 (11) = happyShift action_9
action_49 (12) = happyShift action_10
action_49 (13) = happyShift action_11
action_49 (14) = happyShift action_12
action_49 (15) = happyShift action_13
action_49 (16) = happyShift action_14
action_49 (18) = happyShift action_15
action_49 (19) = happyShift action_16
action_49 (20) = happyShift action_17
action_49 (21) = happyShift action_18
action_49 (22) = happyShift action_19
action_49 (23) = happyShift action_20
action_49 (24) = happyShift action_21
action_49 (26) = happyShift action_22
action_49 (29) = happyShift action_23
action_49 (31) = happyShift action_24
action_49 (32) = happyShift action_25
action_49 (33) = happyShift action_26
action_49 (34) = happyShift action_27
action_49 (37) = happyShift action_28
action_49 (38) = happyShift action_29
action_49 (39) = happyShift action_30
action_49 (40) = happyShift action_31
action_49 (41) = happyShift action_32
action_49 (42) = happyShift action_33
action_49 (43) = happyShift action_34
action_49 (44) = happyShift action_35
action_49 (45) = happyShift action_36
action_49 (46) = happyShift action_37
action_49 (47) = happyShift action_38
action_49 (49) = happyShift action_39
action_49 (50) = happyShift action_40
action_49 (52) = happyShift action_41
action_49 (54) = happyShift action_42
action_49 (5) = happyGoto action_101
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (7) = happyShift action_5
action_50 (8) = happyShift action_6
action_50 (9) = happyShift action_7
action_50 (10) = happyShift action_8
action_50 (11) = happyShift action_9
action_50 (12) = happyShift action_10
action_50 (13) = happyShift action_11
action_50 (14) = happyShift action_12
action_50 (15) = happyShift action_13
action_50 (16) = happyShift action_14
action_50 (18) = happyShift action_15
action_50 (19) = happyShift action_16
action_50 (20) = happyShift action_17
action_50 (21) = happyShift action_18
action_50 (22) = happyShift action_19
action_50 (23) = happyShift action_20
action_50 (24) = happyShift action_21
action_50 (26) = happyShift action_22
action_50 (29) = happyShift action_23
action_50 (31) = happyShift action_24
action_50 (32) = happyShift action_25
action_50 (33) = happyShift action_26
action_50 (34) = happyShift action_27
action_50 (37) = happyShift action_28
action_50 (38) = happyShift action_29
action_50 (39) = happyShift action_30
action_50 (40) = happyShift action_31
action_50 (41) = happyShift action_32
action_50 (42) = happyShift action_33
action_50 (43) = happyShift action_34
action_50 (44) = happyShift action_35
action_50 (45) = happyShift action_36
action_50 (46) = happyShift action_37
action_50 (47) = happyShift action_38
action_50 (49) = happyShift action_39
action_50 (50) = happyShift action_40
action_50 (52) = happyShift action_41
action_50 (54) = happyShift action_42
action_50 (5) = happyGoto action_100
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (7) = happyShift action_5
action_51 (8) = happyShift action_6
action_51 (9) = happyShift action_7
action_51 (10) = happyShift action_8
action_51 (11) = happyShift action_9
action_51 (12) = happyShift action_10
action_51 (13) = happyShift action_11
action_51 (14) = happyShift action_12
action_51 (15) = happyShift action_13
action_51 (16) = happyShift action_14
action_51 (18) = happyShift action_15
action_51 (19) = happyShift action_16
action_51 (20) = happyShift action_17
action_51 (21) = happyShift action_18
action_51 (22) = happyShift action_19
action_51 (23) = happyShift action_20
action_51 (24) = happyShift action_21
action_51 (26) = happyShift action_22
action_51 (29) = happyShift action_23
action_51 (31) = happyShift action_24
action_51 (32) = happyShift action_25
action_51 (33) = happyShift action_26
action_51 (34) = happyShift action_27
action_51 (37) = happyShift action_28
action_51 (38) = happyShift action_29
action_51 (39) = happyShift action_30
action_51 (40) = happyShift action_31
action_51 (41) = happyShift action_32
action_51 (42) = happyShift action_33
action_51 (43) = happyShift action_34
action_51 (44) = happyShift action_35
action_51 (45) = happyShift action_36
action_51 (46) = happyShift action_37
action_51 (47) = happyShift action_38
action_51 (49) = happyShift action_39
action_51 (50) = happyShift action_40
action_51 (52) = happyShift action_41
action_51 (54) = happyShift action_42
action_51 (5) = happyGoto action_99
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (7) = happyShift action_5
action_52 (8) = happyShift action_6
action_52 (9) = happyShift action_7
action_52 (10) = happyShift action_8
action_52 (11) = happyShift action_9
action_52 (12) = happyShift action_10
action_52 (13) = happyShift action_11
action_52 (14) = happyShift action_12
action_52 (15) = happyShift action_13
action_52 (16) = happyShift action_14
action_52 (18) = happyShift action_15
action_52 (19) = happyShift action_16
action_52 (20) = happyShift action_17
action_52 (21) = happyShift action_18
action_52 (22) = happyShift action_19
action_52 (23) = happyShift action_20
action_52 (24) = happyShift action_21
action_52 (26) = happyShift action_22
action_52 (29) = happyShift action_23
action_52 (31) = happyShift action_24
action_52 (32) = happyShift action_25
action_52 (33) = happyShift action_26
action_52 (34) = happyShift action_27
action_52 (37) = happyShift action_28
action_52 (38) = happyShift action_29
action_52 (39) = happyShift action_30
action_52 (40) = happyShift action_31
action_52 (41) = happyShift action_32
action_52 (42) = happyShift action_33
action_52 (43) = happyShift action_34
action_52 (44) = happyShift action_35
action_52 (45) = happyShift action_36
action_52 (46) = happyShift action_37
action_52 (47) = happyShift action_38
action_52 (49) = happyShift action_39
action_52 (50) = happyShift action_40
action_52 (52) = happyShift action_41
action_52 (54) = happyShift action_42
action_52 (5) = happyGoto action_98
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (7) = happyShift action_5
action_53 (8) = happyShift action_6
action_53 (9) = happyShift action_7
action_53 (10) = happyShift action_8
action_53 (11) = happyShift action_9
action_53 (12) = happyShift action_10
action_53 (13) = happyShift action_11
action_53 (14) = happyShift action_12
action_53 (15) = happyShift action_13
action_53 (16) = happyShift action_14
action_53 (18) = happyShift action_15
action_53 (19) = happyShift action_16
action_53 (20) = happyShift action_17
action_53 (21) = happyShift action_18
action_53 (22) = happyShift action_19
action_53 (23) = happyShift action_20
action_53 (24) = happyShift action_21
action_53 (26) = happyShift action_22
action_53 (29) = happyShift action_23
action_53 (31) = happyShift action_24
action_53 (32) = happyShift action_25
action_53 (33) = happyShift action_26
action_53 (34) = happyShift action_27
action_53 (37) = happyShift action_28
action_53 (38) = happyShift action_29
action_53 (39) = happyShift action_30
action_53 (40) = happyShift action_31
action_53 (41) = happyShift action_32
action_53 (42) = happyShift action_33
action_53 (43) = happyShift action_34
action_53 (44) = happyShift action_35
action_53 (45) = happyShift action_36
action_53 (46) = happyShift action_37
action_53 (47) = happyShift action_38
action_53 (49) = happyShift action_39
action_53 (50) = happyShift action_40
action_53 (52) = happyShift action_41
action_53 (54) = happyShift action_42
action_53 (5) = happyGoto action_97
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (7) = happyShift action_5
action_54 (8) = happyShift action_6
action_54 (9) = happyShift action_7
action_54 (10) = happyShift action_8
action_54 (11) = happyShift action_9
action_54 (12) = happyShift action_10
action_54 (13) = happyShift action_11
action_54 (14) = happyShift action_12
action_54 (15) = happyShift action_13
action_54 (16) = happyShift action_14
action_54 (18) = happyShift action_15
action_54 (19) = happyShift action_16
action_54 (20) = happyShift action_17
action_54 (21) = happyShift action_18
action_54 (22) = happyShift action_19
action_54 (23) = happyShift action_20
action_54 (24) = happyShift action_21
action_54 (26) = happyShift action_22
action_54 (29) = happyShift action_23
action_54 (31) = happyShift action_24
action_54 (32) = happyShift action_25
action_54 (33) = happyShift action_26
action_54 (34) = happyShift action_27
action_54 (37) = happyShift action_28
action_54 (38) = happyShift action_29
action_54 (39) = happyShift action_30
action_54 (40) = happyShift action_31
action_54 (41) = happyShift action_32
action_54 (42) = happyShift action_33
action_54 (43) = happyShift action_34
action_54 (44) = happyShift action_35
action_54 (45) = happyShift action_36
action_54 (46) = happyShift action_37
action_54 (47) = happyShift action_38
action_54 (49) = happyShift action_39
action_54 (50) = happyShift action_40
action_54 (52) = happyShift action_41
action_54 (54) = happyShift action_42
action_54 (5) = happyGoto action_96
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (35) = happyShift action_95
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_21

action_57 _ = happyReduce_40

action_58 _ = happyReduce_41

action_59 (7) = happyShift action_5
action_59 (8) = happyShift action_6
action_59 (9) = happyShift action_7
action_59 (10) = happyShift action_8
action_59 (11) = happyShift action_9
action_59 (12) = happyShift action_10
action_59 (13) = happyShift action_11
action_59 (14) = happyShift action_12
action_59 (15) = happyShift action_13
action_59 (16) = happyShift action_14
action_59 (18) = happyShift action_15
action_59 (19) = happyShift action_16
action_59 (20) = happyShift action_17
action_59 (21) = happyShift action_18
action_59 (22) = happyShift action_19
action_59 (23) = happyShift action_20
action_59 (24) = happyShift action_21
action_59 (26) = happyShift action_22
action_59 (29) = happyShift action_23
action_59 (31) = happyShift action_24
action_59 (32) = happyShift action_25
action_59 (33) = happyShift action_26
action_59 (34) = happyShift action_27
action_59 (37) = happyShift action_28
action_59 (38) = happyShift action_29
action_59 (39) = happyShift action_30
action_59 (40) = happyShift action_31
action_59 (41) = happyShift action_32
action_59 (42) = happyShift action_33
action_59 (43) = happyShift action_34
action_59 (44) = happyShift action_35
action_59 (45) = happyShift action_36
action_59 (46) = happyShift action_37
action_59 (47) = happyShift action_38
action_59 (49) = happyShift action_39
action_59 (50) = happyShift action_40
action_59 (52) = happyShift action_41
action_59 (54) = happyShift action_42
action_59 (5) = happyGoto action_94
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (27) = happyShift action_93
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (49) = happyShift action_92
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (7) = happyShift action_5
action_62 (8) = happyShift action_6
action_62 (9) = happyShift action_7
action_62 (10) = happyShift action_8
action_62 (11) = happyShift action_9
action_62 (12) = happyShift action_10
action_62 (13) = happyShift action_11
action_62 (14) = happyShift action_12
action_62 (15) = happyShift action_13
action_62 (16) = happyShift action_14
action_62 (18) = happyShift action_15
action_62 (19) = happyShift action_16
action_62 (20) = happyShift action_17
action_62 (21) = happyShift action_18
action_62 (22) = happyShift action_19
action_62 (23) = happyShift action_20
action_62 (24) = happyShift action_21
action_62 (26) = happyShift action_22
action_62 (29) = happyShift action_23
action_62 (31) = happyShift action_24
action_62 (32) = happyShift action_25
action_62 (33) = happyShift action_26
action_62 (34) = happyShift action_27
action_62 (37) = happyShift action_28
action_62 (38) = happyShift action_29
action_62 (39) = happyShift action_30
action_62 (40) = happyShift action_31
action_62 (41) = happyShift action_32
action_62 (42) = happyShift action_33
action_62 (43) = happyShift action_34
action_62 (44) = happyShift action_35
action_62 (45) = happyShift action_36
action_62 (46) = happyShift action_37
action_62 (47) = happyShift action_38
action_62 (49) = happyShift action_39
action_62 (50) = happyShift action_40
action_62 (52) = happyShift action_41
action_62 (54) = happyShift action_42
action_62 (5) = happyGoto action_91
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_19

action_64 _ = happyReduce_18

action_65 (7) = happyShift action_5
action_65 (8) = happyShift action_6
action_65 (9) = happyShift action_7
action_65 (10) = happyShift action_8
action_65 (11) = happyShift action_9
action_65 (12) = happyShift action_10
action_65 (13) = happyShift action_11
action_65 (14) = happyShift action_12
action_65 (15) = happyShift action_13
action_65 (16) = happyShift action_14
action_65 (18) = happyShift action_15
action_65 (19) = happyShift action_16
action_65 (20) = happyShift action_17
action_65 (21) = happyShift action_18
action_65 (22) = happyShift action_19
action_65 (23) = happyShift action_20
action_65 (24) = happyShift action_21
action_65 (26) = happyShift action_22
action_65 (29) = happyShift action_23
action_65 (31) = happyShift action_24
action_65 (32) = happyShift action_25
action_65 (33) = happyShift action_26
action_65 (34) = happyShift action_27
action_65 (37) = happyShift action_28
action_65 (38) = happyShift action_29
action_65 (39) = happyShift action_30
action_65 (40) = happyShift action_31
action_65 (41) = happyShift action_32
action_65 (42) = happyShift action_33
action_65 (43) = happyShift action_34
action_65 (44) = happyShift action_35
action_65 (45) = happyShift action_36
action_65 (46) = happyShift action_37
action_65 (47) = happyShift action_38
action_65 (49) = happyShift action_39
action_65 (50) = happyShift action_40
action_65 (52) = happyShift action_41
action_65 (54) = happyShift action_42
action_65 (5) = happyGoto action_90
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (7) = happyShift action_5
action_66 (8) = happyShift action_6
action_66 (9) = happyShift action_7
action_66 (10) = happyShift action_8
action_66 (11) = happyShift action_9
action_66 (12) = happyShift action_10
action_66 (13) = happyShift action_11
action_66 (14) = happyShift action_12
action_66 (15) = happyShift action_13
action_66 (16) = happyShift action_14
action_66 (18) = happyShift action_15
action_66 (19) = happyShift action_16
action_66 (20) = happyShift action_17
action_66 (21) = happyShift action_18
action_66 (22) = happyShift action_19
action_66 (23) = happyShift action_20
action_66 (24) = happyShift action_21
action_66 (26) = happyShift action_22
action_66 (29) = happyShift action_23
action_66 (31) = happyShift action_24
action_66 (32) = happyShift action_25
action_66 (33) = happyShift action_26
action_66 (34) = happyShift action_27
action_66 (37) = happyShift action_28
action_66 (38) = happyShift action_29
action_66 (39) = happyShift action_30
action_66 (40) = happyShift action_31
action_66 (41) = happyShift action_32
action_66 (42) = happyShift action_33
action_66 (43) = happyShift action_34
action_66 (44) = happyShift action_35
action_66 (45) = happyShift action_36
action_66 (46) = happyShift action_37
action_66 (47) = happyShift action_38
action_66 (49) = happyShift action_39
action_66 (50) = happyShift action_40
action_66 (52) = happyShift action_41
action_66 (54) = happyShift action_42
action_66 (5) = happyGoto action_89
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (7) = happyShift action_5
action_67 (8) = happyShift action_6
action_67 (9) = happyShift action_7
action_67 (10) = happyShift action_8
action_67 (11) = happyShift action_9
action_67 (12) = happyShift action_10
action_67 (13) = happyShift action_11
action_67 (14) = happyShift action_12
action_67 (15) = happyShift action_13
action_67 (16) = happyShift action_14
action_67 (18) = happyShift action_15
action_67 (19) = happyShift action_16
action_67 (20) = happyShift action_17
action_67 (21) = happyShift action_18
action_67 (22) = happyShift action_19
action_67 (23) = happyShift action_20
action_67 (24) = happyShift action_21
action_67 (26) = happyShift action_22
action_67 (29) = happyShift action_23
action_67 (31) = happyShift action_24
action_67 (32) = happyShift action_25
action_67 (33) = happyShift action_26
action_67 (34) = happyShift action_27
action_67 (37) = happyShift action_28
action_67 (38) = happyShift action_29
action_67 (39) = happyShift action_30
action_67 (40) = happyShift action_31
action_67 (41) = happyShift action_32
action_67 (42) = happyShift action_33
action_67 (43) = happyShift action_34
action_67 (44) = happyShift action_35
action_67 (45) = happyShift action_36
action_67 (46) = happyShift action_37
action_67 (47) = happyShift action_38
action_67 (49) = happyShift action_39
action_67 (50) = happyShift action_40
action_67 (52) = happyShift action_41
action_67 (54) = happyShift action_42
action_67 (5) = happyGoto action_88
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (17) = happyShift action_87
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_12

action_70 _ = happyReduce_11

action_71 (7) = happyShift action_5
action_71 (8) = happyShift action_6
action_71 (9) = happyShift action_7
action_71 (10) = happyShift action_8
action_71 (11) = happyShift action_9
action_71 (12) = happyShift action_10
action_71 (13) = happyShift action_11
action_71 (14) = happyShift action_12
action_71 (15) = happyShift action_13
action_71 (16) = happyShift action_14
action_71 (18) = happyShift action_15
action_71 (19) = happyShift action_16
action_71 (20) = happyShift action_17
action_71 (21) = happyShift action_18
action_71 (22) = happyShift action_19
action_71 (23) = happyShift action_20
action_71 (24) = happyShift action_21
action_71 (26) = happyShift action_22
action_71 (29) = happyShift action_23
action_71 (31) = happyShift action_24
action_71 (32) = happyShift action_25
action_71 (33) = happyShift action_26
action_71 (34) = happyShift action_27
action_71 (37) = happyShift action_28
action_71 (38) = happyShift action_29
action_71 (39) = happyShift action_30
action_71 (40) = happyShift action_31
action_71 (41) = happyShift action_32
action_71 (42) = happyShift action_33
action_71 (43) = happyShift action_34
action_71 (44) = happyShift action_35
action_71 (45) = happyShift action_36
action_71 (46) = happyShift action_37
action_71 (47) = happyShift action_38
action_71 (49) = happyShift action_39
action_71 (50) = happyShift action_40
action_71 (52) = happyShift action_41
action_71 (54) = happyShift action_42
action_71 (5) = happyGoto action_86
action_71 _ = happyFail (happyExpListPerState 71)

action_72 _ = happyReduce_14

action_73 (7) = happyShift action_5
action_73 (8) = happyShift action_6
action_73 (9) = happyShift action_7
action_73 (10) = happyShift action_8
action_73 (11) = happyShift action_9
action_73 (12) = happyShift action_10
action_73 (13) = happyShift action_11
action_73 (14) = happyShift action_12
action_73 (15) = happyShift action_13
action_73 (16) = happyShift action_14
action_73 (18) = happyShift action_15
action_73 (19) = happyShift action_16
action_73 (20) = happyShift action_17
action_73 (21) = happyShift action_18
action_73 (22) = happyShift action_19
action_73 (23) = happyShift action_20
action_73 (24) = happyShift action_21
action_73 (26) = happyShift action_22
action_73 (29) = happyShift action_23
action_73 (31) = happyShift action_24
action_73 (32) = happyShift action_25
action_73 (33) = happyShift action_26
action_73 (34) = happyShift action_27
action_73 (37) = happyShift action_28
action_73 (38) = happyShift action_29
action_73 (39) = happyShift action_30
action_73 (40) = happyShift action_31
action_73 (41) = happyShift action_32
action_73 (42) = happyShift action_33
action_73 (43) = happyShift action_34
action_73 (44) = happyShift action_35
action_73 (45) = happyShift action_36
action_73 (46) = happyShift action_37
action_73 (47) = happyShift action_38
action_73 (49) = happyShift action_39
action_73 (50) = happyShift action_40
action_73 (52) = happyShift action_41
action_73 (54) = happyShift action_42
action_73 (5) = happyGoto action_85
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (7) = happyShift action_5
action_74 (8) = happyShift action_6
action_74 (9) = happyShift action_7
action_74 (10) = happyShift action_8
action_74 (11) = happyShift action_9
action_74 (12) = happyShift action_10
action_74 (13) = happyShift action_11
action_74 (14) = happyShift action_12
action_74 (15) = happyShift action_13
action_74 (16) = happyShift action_14
action_74 (18) = happyShift action_15
action_74 (19) = happyShift action_16
action_74 (20) = happyShift action_17
action_74 (21) = happyShift action_18
action_74 (22) = happyShift action_19
action_74 (23) = happyShift action_20
action_74 (24) = happyShift action_21
action_74 (26) = happyShift action_22
action_74 (29) = happyShift action_23
action_74 (31) = happyShift action_24
action_74 (32) = happyShift action_25
action_74 (33) = happyShift action_26
action_74 (34) = happyShift action_27
action_74 (37) = happyShift action_28
action_74 (38) = happyShift action_29
action_74 (39) = happyShift action_30
action_74 (40) = happyShift action_31
action_74 (41) = happyShift action_32
action_74 (42) = happyShift action_33
action_74 (43) = happyShift action_34
action_74 (44) = happyShift action_35
action_74 (45) = happyShift action_36
action_74 (46) = happyShift action_37
action_74 (47) = happyShift action_38
action_74 (49) = happyShift action_39
action_74 (50) = happyShift action_40
action_74 (52) = happyShift action_41
action_74 (54) = happyShift action_42
action_74 (5) = happyGoto action_84
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (7) = happyShift action_5
action_75 (8) = happyShift action_6
action_75 (9) = happyShift action_7
action_75 (10) = happyShift action_8
action_75 (11) = happyShift action_9
action_75 (12) = happyShift action_10
action_75 (13) = happyShift action_11
action_75 (14) = happyShift action_12
action_75 (15) = happyShift action_13
action_75 (16) = happyShift action_14
action_75 (18) = happyShift action_15
action_75 (19) = happyShift action_16
action_75 (20) = happyShift action_17
action_75 (21) = happyShift action_18
action_75 (22) = happyShift action_19
action_75 (23) = happyShift action_20
action_75 (24) = happyShift action_21
action_75 (26) = happyShift action_22
action_75 (29) = happyShift action_23
action_75 (31) = happyShift action_24
action_75 (32) = happyShift action_25
action_75 (33) = happyShift action_26
action_75 (34) = happyShift action_27
action_75 (37) = happyShift action_28
action_75 (38) = happyShift action_29
action_75 (39) = happyShift action_30
action_75 (40) = happyShift action_31
action_75 (41) = happyShift action_32
action_75 (42) = happyShift action_33
action_75 (43) = happyShift action_34
action_75 (44) = happyShift action_35
action_75 (45) = happyShift action_36
action_75 (46) = happyShift action_37
action_75 (47) = happyShift action_38
action_75 (49) = happyShift action_39
action_75 (50) = happyShift action_40
action_75 (52) = happyShift action_41
action_75 (54) = happyShift action_42
action_75 (5) = happyGoto action_83
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (7) = happyShift action_5
action_76 (8) = happyShift action_6
action_76 (9) = happyShift action_7
action_76 (10) = happyShift action_8
action_76 (11) = happyShift action_9
action_76 (12) = happyShift action_10
action_76 (13) = happyShift action_11
action_76 (14) = happyShift action_12
action_76 (15) = happyShift action_13
action_76 (16) = happyShift action_14
action_76 (18) = happyShift action_15
action_76 (19) = happyShift action_16
action_76 (20) = happyShift action_17
action_76 (21) = happyShift action_18
action_76 (22) = happyShift action_19
action_76 (23) = happyShift action_20
action_76 (24) = happyShift action_21
action_76 (26) = happyShift action_22
action_76 (29) = happyShift action_23
action_76 (31) = happyShift action_24
action_76 (32) = happyShift action_25
action_76 (33) = happyShift action_26
action_76 (34) = happyShift action_27
action_76 (37) = happyShift action_28
action_76 (38) = happyShift action_29
action_76 (39) = happyShift action_30
action_76 (40) = happyShift action_31
action_76 (41) = happyShift action_32
action_76 (42) = happyShift action_33
action_76 (43) = happyShift action_34
action_76 (44) = happyShift action_35
action_76 (45) = happyShift action_36
action_76 (46) = happyShift action_37
action_76 (47) = happyShift action_38
action_76 (49) = happyShift action_39
action_76 (50) = happyShift action_40
action_76 (52) = happyShift action_41
action_76 (54) = happyShift action_42
action_76 (5) = happyGoto action_82
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (7) = happyShift action_5
action_77 (8) = happyShift action_6
action_77 (9) = happyShift action_7
action_77 (10) = happyShift action_8
action_77 (11) = happyShift action_9
action_77 (12) = happyShift action_10
action_77 (13) = happyShift action_11
action_77 (14) = happyShift action_12
action_77 (15) = happyShift action_13
action_77 (16) = happyShift action_14
action_77 (18) = happyShift action_15
action_77 (19) = happyShift action_16
action_77 (20) = happyShift action_17
action_77 (21) = happyShift action_18
action_77 (22) = happyShift action_19
action_77 (23) = happyShift action_20
action_77 (24) = happyShift action_21
action_77 (26) = happyShift action_22
action_77 (29) = happyShift action_23
action_77 (31) = happyShift action_24
action_77 (32) = happyShift action_25
action_77 (33) = happyShift action_26
action_77 (34) = happyShift action_27
action_77 (37) = happyShift action_28
action_77 (38) = happyShift action_29
action_77 (39) = happyShift action_30
action_77 (40) = happyShift action_31
action_77 (41) = happyShift action_32
action_77 (42) = happyShift action_33
action_77 (43) = happyShift action_34
action_77 (44) = happyShift action_35
action_77 (45) = happyShift action_36
action_77 (46) = happyShift action_37
action_77 (47) = happyShift action_38
action_77 (49) = happyShift action_39
action_77 (50) = happyShift action_40
action_77 (52) = happyShift action_41
action_77 (54) = happyShift action_42
action_77 (5) = happyGoto action_81
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_2

action_79 _ = happyReduce_3

action_80 _ = happyReduce_1

action_81 _ = happyReduce_4

action_82 _ = happyReduce_5

action_83 _ = happyReduce_6

action_84 _ = happyReduce_7

action_85 _ = happyReduce_8

action_86 _ = happyReduce_10

action_87 _ = happyReduce_30

action_88 _ = happyReduce_15

action_89 _ = happyReduce_16

action_90 _ = happyReduce_17

action_91 _ = happyReduce_39

action_92 (7) = happyShift action_5
action_92 (8) = happyShift action_6
action_92 (9) = happyShift action_7
action_92 (10) = happyShift action_8
action_92 (11) = happyShift action_9
action_92 (12) = happyShift action_10
action_92 (13) = happyShift action_11
action_92 (14) = happyShift action_12
action_92 (15) = happyShift action_13
action_92 (16) = happyShift action_14
action_92 (18) = happyShift action_15
action_92 (19) = happyShift action_16
action_92 (20) = happyShift action_17
action_92 (21) = happyShift action_18
action_92 (22) = happyShift action_19
action_92 (23) = happyShift action_20
action_92 (24) = happyShift action_21
action_92 (26) = happyShift action_22
action_92 (29) = happyShift action_23
action_92 (31) = happyShift action_24
action_92 (32) = happyShift action_25
action_92 (33) = happyShift action_26
action_92 (34) = happyShift action_27
action_92 (37) = happyShift action_28
action_92 (38) = happyShift action_29
action_92 (39) = happyShift action_30
action_92 (40) = happyShift action_31
action_92 (41) = happyShift action_32
action_92 (42) = happyShift action_33
action_92 (43) = happyShift action_34
action_92 (44) = happyShift action_35
action_92 (45) = happyShift action_36
action_92 (46) = happyShift action_37
action_92 (47) = happyShift action_38
action_92 (49) = happyShift action_39
action_92 (50) = happyShift action_40
action_92 (52) = happyShift action_41
action_92 (54) = happyShift action_42
action_92 (5) = happyGoto action_110
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (7) = happyShift action_5
action_93 (8) = happyShift action_6
action_93 (9) = happyShift action_7
action_93 (10) = happyShift action_8
action_93 (11) = happyShift action_9
action_93 (12) = happyShift action_10
action_93 (13) = happyShift action_11
action_93 (14) = happyShift action_12
action_93 (15) = happyShift action_13
action_93 (16) = happyShift action_14
action_93 (18) = happyShift action_15
action_93 (19) = happyShift action_16
action_93 (20) = happyShift action_17
action_93 (21) = happyShift action_18
action_93 (22) = happyShift action_19
action_93 (23) = happyShift action_20
action_93 (24) = happyShift action_21
action_93 (26) = happyShift action_22
action_93 (29) = happyShift action_23
action_93 (30) = happyShift action_2
action_93 (31) = happyShift action_24
action_93 (32) = happyShift action_25
action_93 (33) = happyShift action_26
action_93 (34) = happyShift action_27
action_93 (37) = happyShift action_28
action_93 (38) = happyShift action_29
action_93 (39) = happyShift action_30
action_93 (40) = happyShift action_31
action_93 (41) = happyShift action_32
action_93 (42) = happyShift action_33
action_93 (43) = happyShift action_34
action_93 (44) = happyShift action_35
action_93 (45) = happyShift action_36
action_93 (46) = happyShift action_37
action_93 (47) = happyShift action_38
action_93 (49) = happyShift action_39
action_93 (50) = happyShift action_40
action_93 (52) = happyShift action_41
action_93 (54) = happyShift action_42
action_93 (4) = happyGoto action_109
action_93 (5) = happyGoto action_4
action_93 _ = happyFail (happyExpListPerState 93)

action_94 _ = happyReduce_20

action_95 (7) = happyShift action_5
action_95 (8) = happyShift action_6
action_95 (9) = happyShift action_7
action_95 (10) = happyShift action_8
action_95 (11) = happyShift action_9
action_95 (12) = happyShift action_10
action_95 (13) = happyShift action_11
action_95 (14) = happyShift action_12
action_95 (15) = happyShift action_13
action_95 (16) = happyShift action_14
action_95 (18) = happyShift action_15
action_95 (19) = happyShift action_16
action_95 (20) = happyShift action_17
action_95 (21) = happyShift action_18
action_95 (22) = happyShift action_19
action_95 (23) = happyShift action_20
action_95 (24) = happyShift action_21
action_95 (26) = happyShift action_22
action_95 (29) = happyShift action_23
action_95 (30) = happyShift action_2
action_95 (31) = happyShift action_24
action_95 (32) = happyShift action_25
action_95 (33) = happyShift action_26
action_95 (34) = happyShift action_27
action_95 (37) = happyShift action_28
action_95 (38) = happyShift action_29
action_95 (39) = happyShift action_30
action_95 (40) = happyShift action_31
action_95 (41) = happyShift action_32
action_95 (42) = happyShift action_33
action_95 (43) = happyShift action_34
action_95 (44) = happyShift action_35
action_95 (45) = happyShift action_36
action_95 (46) = happyShift action_37
action_95 (47) = happyShift action_38
action_95 (49) = happyShift action_39
action_95 (50) = happyShift action_40
action_95 (52) = happyShift action_41
action_95 (54) = happyShift action_42
action_95 (4) = happyGoto action_108
action_95 (5) = happyGoto action_4
action_95 _ = happyFail (happyExpListPerState 95)

action_96 _ = happyReduce_9

action_97 (7) = happyShift action_5
action_97 (8) = happyShift action_6
action_97 (9) = happyShift action_7
action_97 (10) = happyShift action_8
action_97 (11) = happyShift action_9
action_97 (12) = happyShift action_10
action_97 (13) = happyShift action_11
action_97 (14) = happyShift action_12
action_97 (15) = happyShift action_13
action_97 (16) = happyShift action_14
action_97 (18) = happyShift action_15
action_97 (19) = happyShift action_16
action_97 (20) = happyShift action_17
action_97 (21) = happyShift action_18
action_97 (22) = happyShift action_19
action_97 (23) = happyShift action_20
action_97 (24) = happyShift action_21
action_97 (26) = happyShift action_22
action_97 (29) = happyShift action_23
action_97 (31) = happyShift action_24
action_97 (32) = happyShift action_25
action_97 (33) = happyShift action_26
action_97 (34) = happyShift action_27
action_97 (37) = happyShift action_28
action_97 (38) = happyShift action_29
action_97 (39) = happyShift action_30
action_97 (40) = happyShift action_31
action_97 (41) = happyShift action_32
action_97 (42) = happyShift action_33
action_97 (43) = happyShift action_34
action_97 (44) = happyShift action_35
action_97 (45) = happyShift action_36
action_97 (46) = happyShift action_37
action_97 (47) = happyShift action_38
action_97 (49) = happyShift action_39
action_97 (50) = happyShift action_40
action_97 (52) = happyShift action_41
action_97 (54) = happyShift action_42
action_97 (5) = happyGoto action_107
action_97 _ = happyFail (happyExpListPerState 97)

action_98 _ = happyReduce_23

action_99 _ = happyReduce_24

action_100 _ = happyReduce_25

action_101 _ = happyReduce_26

action_102 _ = happyReduce_27

action_103 _ = happyReduce_28

action_104 (50) = happyShift action_106
action_104 _ = happyFail (happyExpListPerState 104)

action_105 _ = happyReduce_42

action_106 _ = happyReduce_45

action_107 _ = happyReduce_22

action_108 _ = happyReduce_37

action_109 (28) = happyShift action_112
action_109 _ = happyReduce_36

action_110 (25) = happyShift action_111
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (7) = happyShift action_5
action_111 (8) = happyShift action_6
action_111 (9) = happyShift action_7
action_111 (10) = happyShift action_8
action_111 (11) = happyShift action_9
action_111 (12) = happyShift action_10
action_111 (13) = happyShift action_11
action_111 (14) = happyShift action_12
action_111 (15) = happyShift action_13
action_111 (16) = happyShift action_14
action_111 (18) = happyShift action_15
action_111 (19) = happyShift action_16
action_111 (20) = happyShift action_17
action_111 (21) = happyShift action_18
action_111 (22) = happyShift action_19
action_111 (23) = happyShift action_20
action_111 (24) = happyShift action_21
action_111 (26) = happyShift action_22
action_111 (29) = happyShift action_23
action_111 (30) = happyShift action_2
action_111 (31) = happyShift action_24
action_111 (32) = happyShift action_25
action_111 (33) = happyShift action_26
action_111 (34) = happyShift action_27
action_111 (37) = happyShift action_28
action_111 (38) = happyShift action_29
action_111 (39) = happyShift action_30
action_111 (40) = happyShift action_31
action_111 (41) = happyShift action_32
action_111 (42) = happyShift action_33
action_111 (43) = happyShift action_34
action_111 (44) = happyShift action_35
action_111 (45) = happyShift action_36
action_111 (46) = happyShift action_37
action_111 (47) = happyShift action_38
action_111 (49) = happyShift action_39
action_111 (50) = happyShift action_40
action_111 (52) = happyShift action_41
action_111 (54) = happyShift action_42
action_111 (4) = happyGoto action_114
action_111 (5) = happyGoto action_4
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (7) = happyShift action_5
action_112 (8) = happyShift action_6
action_112 (9) = happyShift action_7
action_112 (10) = happyShift action_8
action_112 (11) = happyShift action_9
action_112 (12) = happyShift action_10
action_112 (13) = happyShift action_11
action_112 (14) = happyShift action_12
action_112 (15) = happyShift action_13
action_112 (16) = happyShift action_14
action_112 (18) = happyShift action_15
action_112 (19) = happyShift action_16
action_112 (20) = happyShift action_17
action_112 (21) = happyShift action_18
action_112 (22) = happyShift action_19
action_112 (23) = happyShift action_20
action_112 (24) = happyShift action_21
action_112 (26) = happyShift action_22
action_112 (29) = happyShift action_23
action_112 (30) = happyShift action_2
action_112 (31) = happyShift action_24
action_112 (32) = happyShift action_25
action_112 (33) = happyShift action_26
action_112 (34) = happyShift action_27
action_112 (37) = happyShift action_28
action_112 (38) = happyShift action_29
action_112 (39) = happyShift action_30
action_112 (40) = happyShift action_31
action_112 (41) = happyShift action_32
action_112 (42) = happyShift action_33
action_112 (43) = happyShift action_34
action_112 (44) = happyShift action_35
action_112 (45) = happyShift action_36
action_112 (46) = happyShift action_37
action_112 (47) = happyShift action_38
action_112 (49) = happyShift action_39
action_112 (50) = happyShift action_40
action_112 (52) = happyShift action_41
action_112 (54) = happyShift action_42
action_112 (4) = happyGoto action_113
action_112 (5) = happyGoto action_4
action_112 _ = happyFail (happyExpListPerState 112)

action_113 _ = happyReduce_35

action_114 _ = happyReduce_38

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Begin happy_var_2
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Multi happy_var_1 happy_var_2
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_2  4 happyReduction_3
happyReduction_3 _
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Single happy_var_1
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  5 happyReduction_4
happyReduction_4 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Plus happy_var_2 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  5 happyReduction_5
happyReduction_5 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Minus happy_var_2 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  5 happyReduction_6
happyReduction_6 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Times happy_var_2 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  5 happyReduction_7
happyReduction_7 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Div happy_var_2 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  5 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Mod happy_var_2 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  5 happyReduction_9
happyReduction_9 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Power happy_var_2 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  5 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Get happy_var_2 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  5 happyReduction_11
happyReduction_11 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Head happy_var_2
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  5 happyReduction_12
happyReduction_12 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Last happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  5 happyReduction_13
happyReduction_13 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Length happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_2  5 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Sum happy_var_2
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  5 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (AddLst happy_var_2 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  5 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (AddFst happy_var_2 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  5 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Remove happy_var_2 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  5 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Init happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_2  5 happyReduction_19
happyReduction_19 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Tail happy_var_2
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  5 happyReduction_20
happyReduction_20 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Concat happy_var_2 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  5 happyReduction_21
happyReduction_21 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Revert happy_var_2
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happyReduce 4 5 happyReduction_22
happyReduction_22 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (GetXY happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_3  5 happyReduction_23
happyReduction_23 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Less happy_var_2 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  5 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (LessEq happy_var_2 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  5 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Greater happy_var_2 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  5 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (GreaterEq happy_var_2 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  5 happyReduction_27
happyReduction_27 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Eq happy_var_2 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  5 happyReduction_28
happyReduction_28 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (NotEq happy_var_2 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_2  5 happyReduction_29
happyReduction_29 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Not happy_var_2
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  5 happyReduction_30
happyReduction_30 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Br happy_var_2
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  5 happyReduction_31
happyReduction_31 (HappyTerminal (TokenInt _  happy_var_1))
	 =  HappyAbsSyn5
		 (Nr happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  5 happyReduction_32
happyReduction_32 _
	 =  HappyAbsSyn5
		 (Logic True
	)

happyReduce_33 = happySpecReduce_1  5 happyReduction_33
happyReduction_33 _
	 =  HappyAbsSyn5
		 (Logic False
	)

happyReduce_34 = happySpecReduce_1  5 happyReduction_34
happyReduction_34 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn5
		 (Var happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happyReduce 6 5 happyReduction_35
happyReduction_35 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (IfThenElse happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_36 = happyReduce 4 5 happyReduction_36
happyReduction_36 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (IfThen happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_37 = happyReduce 4 5 happyReduction_37
happyReduction_37 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_38 = happyReduce 6 5 happyReduction_38
happyReduction_38 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Let happy_var_3 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_39 = happySpecReduce_3  5 happyReduction_39
happyReduction_39 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn5
		 (Assign happy_var_2 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_2  5 happyReduction_40
happyReduction_40 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Write happy_var_2
	)
happyReduction_40 _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_2  5 happyReduction_41
happyReduction_41 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (GetInArr happy_var_2
	)
happyReduction_41 _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  5 happyReduction_42
happyReduction_42 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Arr happy_var_2
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_0  6 happyReduction_43
happyReduction_43  =  HappyAbsSyn6
		 ([]
	)

happyReduce_44 = happySpecReduce_1  6 happyReduction_44
happyReduction_44 (HappyTerminal (TokenInt _  happy_var_1))
	 =  HappyAbsSyn6
		 ([happy_var_1]
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  6 happyReduction_45
happyReduction_45 (HappyTerminal (TokenInt _  happy_var_3))
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1 ++ (happy_var_3:[])
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 55 55 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenPlus _ -> cont 7;
	TokenMinus _ -> cont 8;
	TokenTimes _ -> cont 9;
	TokenDiv _ -> cont 10;
	TokenMod _ -> cont 11;
	TokenSum _ -> cont 12;
	TokenGet _ -> cont 13;
	TokenHead _ -> cont 14;
	TokenLast _ -> cont 15;
	TokenLParen _ -> cont 16;
	TokenRParen _ -> cont 17;
	TokenAddEnd _ -> cont 18;
	TokenAddFront _ -> cont 19;
	TokenRemove _ -> cont 20;
	TokenInit _ -> cont 21;
	TokenTail _ -> cont 22;
	TokenEq _ -> cont 23;
	TokenLet _ -> cont 24;
	TokenIn _ -> cont 25;
	TokenIf _ -> cont 26;
	TokenThen _ -> cont 27;
	TokenElse _ -> cont 28;
	TokenConcat _ -> cont 29;
	TokenBegin _ -> cont 30;
	TokenRead _ -> cont 31;
	TokenWrite _ -> cont 32;
	TokenRevert _ -> cont 33;
	TokenWhile _ -> cont 34;
	TokenDo _ -> cont 35;
	TokenEnd _ -> cont 36;
	TokenPower  _ -> cont 37;
	TokenGetXY _ -> cont 38;
	TokenLess _ -> cont 39;
	TokenLessEq _ -> cont 40;
	TokenGreater _ -> cont 41;
	TokenGreaterEq _ -> cont 42;
	TokenEqEq _ -> cont 43;
	TokenNot _ -> cont 44;
	TokenNotEq _ -> cont 45;
	TokenTrue _ -> cont 46;
	TokenFalse _ -> cont 47;
	TokenWriteFile _ -> cont 48;
	TokenVar _ happy_dollar_dollar -> cont 49;
	TokenInt _  happy_dollar_dollar -> cont 50;
	TokenComma _ -> cont 51;
	TokenArrBeginning _ -> cont 52;
	TokenArrEnd _ -> cont 53;
	TokenLength _ -> cont 54;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 55 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(SpellBookToken)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [SpellBookToken] -> a
parseError [] = error "Morsmordre! There is a parsing error!"
parseError (x:xs) = error ("Morsmordre! There is a parsing error on "++((tokenPosn x))++" !")

type Environment = [(String, Expr)]

data Expr = Plus Expr Expr
          | Minus Expr Expr
          | Times Expr Expr
          | Div Expr Expr
          | Mod Expr Expr
          | Power Expr Expr
          | Get Expr Expr
          | Head Expr
          | Last Expr
          | Sum Expr
          | Length Expr
          | AddLst Expr Expr
          | AddFst Expr Expr
          | Remove Expr Expr
          | Init Expr
          | Tail Expr
          | Concat Expr Expr
          | Revert Expr
          | GetXY Expr Expr Expr
          | Less Expr Expr
          | LessEq Expr Expr
          | Greater Expr Expr
          | GreaterEq Expr Expr
          | Eq Expr Expr
          | NotEq Expr Expr
          | Not Expr
          | Br Expr
          | Nr Int
          | Arr [Int]
          | Var String
          | Logic Bool
          | IfThenElse Expr Body Body
          | IfThen Expr Body
          | While Expr Body
          | Let String Expr Body
          | Assign String Expr
          | Write Expr
          | GetInArr Expr
          deriving (Show,Eq)

data Body = Begin Body
          | Multi Expr Body
          | Single Expr
          deriving (Show,Eq)
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "D:/GitHub/haskell-platform/build/ghc-bindist/local/lib/include/ghcversion.h" #-}















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "F:/Users/randy/AppData/Local/Temp/ghc15608_0/ghc_2.h" #-}














































































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates\\\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates\\\\GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 75 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 84 "templates\\\\GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 147 "templates\\\\GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates\\\\GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates\\\\GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
