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
happyExpList = Happy_Data_Array.listArray (0,262) ([65472,62206,65523,215,0,64,0,65280,52219,65487,863,0,0,0,64512,12271,65471,3455,57336,31327,65534,61466,49087,64756,13823,32736,59775,65529,49259,65279,62418,55295,65408,42493,65511,431,64511,53067,24575,65027,38903,65438,1727,61436,15663,32767,63501,24543,65146,6911,49136,62655,65532,57397,32639,63977,27647,65472,54014,65523,32983,65023,59301,45055,65281,19451,65487,863,63486,40599,49151,6,0,0,32,0,8,0,61440,49087,64756,13823,32736,59775,65529,49259,65279,62418,55295,65408,42493,65511,431,64511,53067,24575,65027,38903,65438,1727,61436,15663,32767,63501,24543,65146,6911,49136,62655,65532,57397,32639,63977,27647,65472,54014,65523,32983,65023,59301,45055,65281,19451,65487,863,63486,40599,49151,64518,12271,65341,3455,57336,31327,65534,61466,49087,64756,13823,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,61436,15663,32767,13,0,0,0,0,0,0,0,0,0,5120,0,0,0,32768,65023,59301,45055,65281,19451,65487,863,63486,40599,49151,6,0,0,0,57336,31327,65534,61466,49087,64756,13823,32736,59775,65529,49259,65279,62418,55295,65408,42493,65511,431,64511,53067,24575,65027,38903,65438,1727,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,65472,54014,65523,215,0,8,0,0,0,0,8,63486,40599,49151,6,0,0,0,0,0,0,61440,49087,64756,13823,32736,59775,65529,49259,65279,62418,55295,0,2,0,0,0,0,0,0,0,0,0,61436,15663,32767,13,0,0,0,49136,62655,65532,57397,32639,63977,27647,65472,54014,65523,32983,65023,59301,45055,65281,19451,65487,863,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,65023,59301,45055,65281,52219,65487,863,0,0,0,64512,12271,65343,3455,0,0,0,61440,49087,64756,13823,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,32,0,61440,49087,64764,13823,32736,63871,65529,107,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Body","Expr","Arr","Engorgio","Reducio","Geminio","Diminuando","Caterwauling","Ferula","Accio","Ascendio","PrioriIncantatem","'('","')'","Depulso","Flipendo","Expelliarmus","Ventus","Obliviate","Fidelius","Appare","Vestigium","Confundo","Incendio","Aguamenti","Epoximise","Alohomora","Legilimens","Flagrate","EverteStatum","WingardiumLeviosa","Imperio","FiniteIncantatem","AlarteAscendere","Confringo","Entomorphis","CarpeRetractum","Defodio","Deprimo","Episkey","Crucio","Impedimenta","Evanesce","Serpensortia","lumos","nox","horcrux","int","','","'['","']'","Informous","Pack","%eof"]
        bit_start = st * 57
        bit_end = (st + 1) * 57
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..56]
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
action_0 (48) = happyShift action_39
action_0 (49) = happyShift action_40
action_0 (50) = happyShift action_41
action_0 (51) = happyShift action_42
action_0 (53) = happyShift action_43
action_0 (55) = happyShift action_44
action_0 (56) = happyShift action_45
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
action_2 (48) = happyShift action_39
action_2 (49) = happyShift action_40
action_2 (50) = happyShift action_41
action_2 (51) = happyShift action_42
action_2 (53) = happyShift action_43
action_2 (55) = happyShift action_44
action_2 (56) = happyShift action_45
action_2 (4) = happyGoto action_85
action_2 (5) = happyGoto action_4
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (57) = happyAccept
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
action_4 (36) = happyShift action_84
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
action_4 (48) = happyShift action_39
action_4 (49) = happyShift action_40
action_4 (50) = happyShift action_41
action_4 (51) = happyShift action_42
action_4 (53) = happyShift action_43
action_4 (55) = happyShift action_44
action_4 (56) = happyShift action_45
action_4 (4) = happyGoto action_83
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
action_5 (48) = happyShift action_39
action_5 (49) = happyShift action_40
action_5 (50) = happyShift action_41
action_5 (51) = happyShift action_42
action_5 (53) = happyShift action_43
action_5 (55) = happyShift action_44
action_5 (56) = happyShift action_45
action_5 (5) = happyGoto action_82
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
action_6 (48) = happyShift action_39
action_6 (49) = happyShift action_40
action_6 (50) = happyShift action_41
action_6 (51) = happyShift action_42
action_6 (53) = happyShift action_43
action_6 (55) = happyShift action_44
action_6 (56) = happyShift action_45
action_6 (5) = happyGoto action_81
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
action_7 (48) = happyShift action_39
action_7 (49) = happyShift action_40
action_7 (50) = happyShift action_41
action_7 (51) = happyShift action_42
action_7 (53) = happyShift action_43
action_7 (55) = happyShift action_44
action_7 (56) = happyShift action_45
action_7 (5) = happyGoto action_80
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
action_8 (48) = happyShift action_39
action_8 (49) = happyShift action_40
action_8 (50) = happyShift action_41
action_8 (51) = happyShift action_42
action_8 (53) = happyShift action_43
action_8 (55) = happyShift action_44
action_8 (56) = happyShift action_45
action_8 (5) = happyGoto action_79
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
action_9 (48) = happyShift action_39
action_9 (49) = happyShift action_40
action_9 (50) = happyShift action_41
action_9 (51) = happyShift action_42
action_9 (53) = happyShift action_43
action_9 (55) = happyShift action_44
action_9 (56) = happyShift action_45
action_9 (5) = happyGoto action_78
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
action_10 (48) = happyShift action_39
action_10 (49) = happyShift action_40
action_10 (50) = happyShift action_41
action_10 (51) = happyShift action_42
action_10 (53) = happyShift action_43
action_10 (55) = happyShift action_44
action_10 (56) = happyShift action_45
action_10 (5) = happyGoto action_77
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
action_11 (48) = happyShift action_39
action_11 (49) = happyShift action_40
action_11 (50) = happyShift action_41
action_11 (51) = happyShift action_42
action_11 (53) = happyShift action_43
action_11 (55) = happyShift action_44
action_11 (56) = happyShift action_45
action_11 (5) = happyGoto action_76
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
action_12 (48) = happyShift action_39
action_12 (49) = happyShift action_40
action_12 (50) = happyShift action_41
action_12 (51) = happyShift action_42
action_12 (53) = happyShift action_43
action_12 (55) = happyShift action_44
action_12 (56) = happyShift action_45
action_12 (5) = happyGoto action_75
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
action_13 (48) = happyShift action_39
action_13 (49) = happyShift action_40
action_13 (50) = happyShift action_41
action_13 (51) = happyShift action_42
action_13 (53) = happyShift action_43
action_13 (55) = happyShift action_44
action_13 (56) = happyShift action_45
action_13 (5) = happyGoto action_74
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
action_14 (48) = happyShift action_39
action_14 (49) = happyShift action_40
action_14 (50) = happyShift action_41
action_14 (51) = happyShift action_42
action_14 (53) = happyShift action_43
action_14 (55) = happyShift action_44
action_14 (56) = happyShift action_45
action_14 (5) = happyGoto action_73
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
action_15 (48) = happyShift action_39
action_15 (49) = happyShift action_40
action_15 (50) = happyShift action_41
action_15 (51) = happyShift action_42
action_15 (53) = happyShift action_43
action_15 (55) = happyShift action_44
action_15 (56) = happyShift action_45
action_15 (5) = happyGoto action_72
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
action_16 (48) = happyShift action_39
action_16 (49) = happyShift action_40
action_16 (50) = happyShift action_41
action_16 (51) = happyShift action_42
action_16 (53) = happyShift action_43
action_16 (55) = happyShift action_44
action_16 (56) = happyShift action_45
action_16 (5) = happyGoto action_71
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
action_17 (48) = happyShift action_39
action_17 (49) = happyShift action_40
action_17 (50) = happyShift action_41
action_17 (51) = happyShift action_42
action_17 (53) = happyShift action_43
action_17 (55) = happyShift action_44
action_17 (56) = happyShift action_45
action_17 (5) = happyGoto action_70
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
action_18 (48) = happyShift action_39
action_18 (49) = happyShift action_40
action_18 (50) = happyShift action_41
action_18 (51) = happyShift action_42
action_18 (53) = happyShift action_43
action_18 (55) = happyShift action_44
action_18 (56) = happyShift action_45
action_18 (5) = happyGoto action_69
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
action_19 (48) = happyShift action_39
action_19 (49) = happyShift action_40
action_19 (50) = happyShift action_41
action_19 (51) = happyShift action_42
action_19 (53) = happyShift action_43
action_19 (55) = happyShift action_44
action_19 (56) = happyShift action_45
action_19 (5) = happyGoto action_68
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (50) = happyShift action_67
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (23) = happyShift action_66
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
action_22 (48) = happyShift action_39
action_22 (49) = happyShift action_40
action_22 (50) = happyShift action_41
action_22 (51) = happyShift action_42
action_22 (53) = happyShift action_43
action_22 (55) = happyShift action_44
action_22 (56) = happyShift action_45
action_22 (5) = happyGoto action_65
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
action_23 (48) = happyShift action_39
action_23 (49) = happyShift action_40
action_23 (50) = happyShift action_41
action_23 (51) = happyShift action_42
action_23 (53) = happyShift action_43
action_23 (55) = happyShift action_44
action_23 (56) = happyShift action_45
action_23 (5) = happyGoto action_64
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
action_24 (48) = happyShift action_39
action_24 (49) = happyShift action_40
action_24 (50) = happyShift action_41
action_24 (51) = happyShift action_42
action_24 (53) = happyShift action_43
action_24 (55) = happyShift action_44
action_24 (56) = happyShift action_45
action_24 (5) = happyGoto action_63
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
action_25 (48) = happyShift action_39
action_25 (49) = happyShift action_40
action_25 (50) = happyShift action_41
action_25 (51) = happyShift action_42
action_25 (53) = happyShift action_43
action_25 (55) = happyShift action_44
action_25 (56) = happyShift action_45
action_25 (5) = happyGoto action_62
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
action_26 (48) = happyShift action_39
action_26 (49) = happyShift action_40
action_26 (50) = happyShift action_41
action_26 (51) = happyShift action_42
action_26 (53) = happyShift action_43
action_26 (55) = happyShift action_44
action_26 (56) = happyShift action_45
action_26 (5) = happyGoto action_61
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
action_27 (48) = happyShift action_39
action_27 (49) = happyShift action_40
action_27 (50) = happyShift action_41
action_27 (51) = happyShift action_42
action_27 (53) = happyShift action_43
action_27 (55) = happyShift action_44
action_27 (56) = happyShift action_45
action_27 (5) = happyGoto action_60
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
action_28 (48) = happyShift action_39
action_28 (49) = happyShift action_40
action_28 (50) = happyShift action_41
action_28 (51) = happyShift action_42
action_28 (53) = happyShift action_43
action_28 (55) = happyShift action_44
action_28 (56) = happyShift action_45
action_28 (5) = happyGoto action_59
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
action_29 (48) = happyShift action_39
action_29 (49) = happyShift action_40
action_29 (50) = happyShift action_41
action_29 (51) = happyShift action_42
action_29 (53) = happyShift action_43
action_29 (55) = happyShift action_44
action_29 (56) = happyShift action_45
action_29 (5) = happyGoto action_58
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
action_30 (48) = happyShift action_39
action_30 (49) = happyShift action_40
action_30 (50) = happyShift action_41
action_30 (51) = happyShift action_42
action_30 (53) = happyShift action_43
action_30 (55) = happyShift action_44
action_30 (56) = happyShift action_45
action_30 (5) = happyGoto action_57
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
action_31 (48) = happyShift action_39
action_31 (49) = happyShift action_40
action_31 (50) = happyShift action_41
action_31 (51) = happyShift action_42
action_31 (53) = happyShift action_43
action_31 (55) = happyShift action_44
action_31 (56) = happyShift action_45
action_31 (5) = happyGoto action_56
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
action_32 (48) = happyShift action_39
action_32 (49) = happyShift action_40
action_32 (50) = happyShift action_41
action_32 (51) = happyShift action_42
action_32 (53) = happyShift action_43
action_32 (55) = happyShift action_44
action_32 (56) = happyShift action_45
action_32 (5) = happyGoto action_55
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
action_33 (48) = happyShift action_39
action_33 (49) = happyShift action_40
action_33 (50) = happyShift action_41
action_33 (51) = happyShift action_42
action_33 (53) = happyShift action_43
action_33 (55) = happyShift action_44
action_33 (56) = happyShift action_45
action_33 (5) = happyGoto action_54
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
action_34 (48) = happyShift action_39
action_34 (49) = happyShift action_40
action_34 (50) = happyShift action_41
action_34 (51) = happyShift action_42
action_34 (53) = happyShift action_43
action_34 (55) = happyShift action_44
action_34 (56) = happyShift action_45
action_34 (5) = happyGoto action_53
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
action_35 (48) = happyShift action_39
action_35 (49) = happyShift action_40
action_35 (50) = happyShift action_41
action_35 (51) = happyShift action_42
action_35 (53) = happyShift action_43
action_35 (55) = happyShift action_44
action_35 (56) = happyShift action_45
action_35 (5) = happyGoto action_52
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
action_36 (48) = happyShift action_39
action_36 (49) = happyShift action_40
action_36 (50) = happyShift action_41
action_36 (51) = happyShift action_42
action_36 (53) = happyShift action_43
action_36 (55) = happyShift action_44
action_36 (56) = happyShift action_45
action_36 (5) = happyGoto action_51
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (7) = happyShift action_5
action_37 (8) = happyShift action_6
action_37 (9) = happyShift action_7
action_37 (10) = happyShift action_8
action_37 (11) = happyShift action_9
action_37 (12) = happyShift action_10
action_37 (13) = happyShift action_11
action_37 (14) = happyShift action_12
action_37 (15) = happyShift action_13
action_37 (16) = happyShift action_14
action_37 (18) = happyShift action_15
action_37 (19) = happyShift action_16
action_37 (20) = happyShift action_17
action_37 (21) = happyShift action_18
action_37 (22) = happyShift action_19
action_37 (23) = happyShift action_20
action_37 (24) = happyShift action_21
action_37 (26) = happyShift action_22
action_37 (29) = happyShift action_23
action_37 (31) = happyShift action_24
action_37 (32) = happyShift action_25
action_37 (33) = happyShift action_26
action_37 (34) = happyShift action_27
action_37 (37) = happyShift action_28
action_37 (38) = happyShift action_29
action_37 (39) = happyShift action_30
action_37 (40) = happyShift action_31
action_37 (41) = happyShift action_32
action_37 (42) = happyShift action_33
action_37 (43) = happyShift action_34
action_37 (44) = happyShift action_35
action_37 (45) = happyShift action_36
action_37 (46) = happyShift action_37
action_37 (47) = happyShift action_38
action_37 (48) = happyShift action_39
action_37 (49) = happyShift action_40
action_37 (50) = happyShift action_41
action_37 (51) = happyShift action_42
action_37 (53) = happyShift action_43
action_37 (55) = happyShift action_44
action_37 (56) = happyShift action_45
action_37 (5) = happyGoto action_50
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (7) = happyShift action_5
action_38 (8) = happyShift action_6
action_38 (9) = happyShift action_7
action_38 (10) = happyShift action_8
action_38 (11) = happyShift action_9
action_38 (12) = happyShift action_10
action_38 (13) = happyShift action_11
action_38 (14) = happyShift action_12
action_38 (15) = happyShift action_13
action_38 (16) = happyShift action_14
action_38 (18) = happyShift action_15
action_38 (19) = happyShift action_16
action_38 (20) = happyShift action_17
action_38 (21) = happyShift action_18
action_38 (22) = happyShift action_19
action_38 (23) = happyShift action_20
action_38 (24) = happyShift action_21
action_38 (26) = happyShift action_22
action_38 (29) = happyShift action_23
action_38 (31) = happyShift action_24
action_38 (32) = happyShift action_25
action_38 (33) = happyShift action_26
action_38 (34) = happyShift action_27
action_38 (37) = happyShift action_28
action_38 (38) = happyShift action_29
action_38 (39) = happyShift action_30
action_38 (40) = happyShift action_31
action_38 (41) = happyShift action_32
action_38 (42) = happyShift action_33
action_38 (43) = happyShift action_34
action_38 (44) = happyShift action_35
action_38 (45) = happyShift action_36
action_38 (46) = happyShift action_37
action_38 (47) = happyShift action_38
action_38 (48) = happyShift action_39
action_38 (49) = happyShift action_40
action_38 (50) = happyShift action_41
action_38 (51) = happyShift action_42
action_38 (53) = happyShift action_43
action_38 (55) = happyShift action_44
action_38 (56) = happyShift action_45
action_38 (5) = happyGoto action_49
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_34

action_40 _ = happyReduce_35

action_41 _ = happyReduce_36

action_42 _ = happyReduce_33

action_43 (51) = happyShift action_48
action_43 (6) = happyGoto action_47
action_43 _ = happyReduce_46

action_44 (7) = happyShift action_5
action_44 (8) = happyShift action_6
action_44 (9) = happyShift action_7
action_44 (10) = happyShift action_8
action_44 (11) = happyShift action_9
action_44 (12) = happyShift action_10
action_44 (13) = happyShift action_11
action_44 (14) = happyShift action_12
action_44 (15) = happyShift action_13
action_44 (16) = happyShift action_14
action_44 (18) = happyShift action_15
action_44 (19) = happyShift action_16
action_44 (20) = happyShift action_17
action_44 (21) = happyShift action_18
action_44 (22) = happyShift action_19
action_44 (23) = happyShift action_20
action_44 (24) = happyShift action_21
action_44 (26) = happyShift action_22
action_44 (29) = happyShift action_23
action_44 (31) = happyShift action_24
action_44 (32) = happyShift action_25
action_44 (33) = happyShift action_26
action_44 (34) = happyShift action_27
action_44 (37) = happyShift action_28
action_44 (38) = happyShift action_29
action_44 (39) = happyShift action_30
action_44 (40) = happyShift action_31
action_44 (41) = happyShift action_32
action_44 (42) = happyShift action_33
action_44 (43) = happyShift action_34
action_44 (44) = happyShift action_35
action_44 (45) = happyShift action_36
action_44 (46) = happyShift action_37
action_44 (47) = happyShift action_38
action_44 (48) = happyShift action_39
action_44 (49) = happyShift action_40
action_44 (50) = happyShift action_41
action_44 (51) = happyShift action_42
action_44 (53) = happyShift action_43
action_44 (55) = happyShift action_44
action_44 (56) = happyShift action_45
action_44 (5) = happyGoto action_46
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_45

action_46 _ = happyReduce_13

action_47 (52) = happyShift action_111
action_47 (54) = happyShift action_112
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_47

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
action_49 (48) = happyShift action_39
action_49 (49) = happyShift action_40
action_49 (50) = happyShift action_41
action_49 (51) = happyShift action_42
action_49 (53) = happyShift action_43
action_49 (55) = happyShift action_44
action_49 (56) = happyShift action_45
action_49 (5) = happyGoto action_110
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
action_50 (48) = happyShift action_39
action_50 (49) = happyShift action_40
action_50 (50) = happyShift action_41
action_50 (51) = happyShift action_42
action_50 (53) = happyShift action_43
action_50 (55) = happyShift action_44
action_50 (56) = happyShift action_45
action_50 (5) = happyGoto action_109
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
action_51 (48) = happyShift action_39
action_51 (49) = happyShift action_40
action_51 (50) = happyShift action_41
action_51 (51) = happyShift action_42
action_51 (53) = happyShift action_43
action_51 (55) = happyShift action_44
action_51 (56) = happyShift action_45
action_51 (5) = happyGoto action_108
action_51 _ = happyFail (happyExpListPerState 51)

action_52 _ = happyReduce_29

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
action_53 (48) = happyShift action_39
action_53 (49) = happyShift action_40
action_53 (50) = happyShift action_41
action_53 (51) = happyShift action_42
action_53 (53) = happyShift action_43
action_53 (55) = happyShift action_44
action_53 (56) = happyShift action_45
action_53 (5) = happyGoto action_107
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
action_54 (48) = happyShift action_39
action_54 (49) = happyShift action_40
action_54 (50) = happyShift action_41
action_54 (51) = happyShift action_42
action_54 (53) = happyShift action_43
action_54 (55) = happyShift action_44
action_54 (56) = happyShift action_45
action_54 (5) = happyGoto action_106
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (7) = happyShift action_5
action_55 (8) = happyShift action_6
action_55 (9) = happyShift action_7
action_55 (10) = happyShift action_8
action_55 (11) = happyShift action_9
action_55 (12) = happyShift action_10
action_55 (13) = happyShift action_11
action_55 (14) = happyShift action_12
action_55 (15) = happyShift action_13
action_55 (16) = happyShift action_14
action_55 (18) = happyShift action_15
action_55 (19) = happyShift action_16
action_55 (20) = happyShift action_17
action_55 (21) = happyShift action_18
action_55 (22) = happyShift action_19
action_55 (23) = happyShift action_20
action_55 (24) = happyShift action_21
action_55 (26) = happyShift action_22
action_55 (29) = happyShift action_23
action_55 (31) = happyShift action_24
action_55 (32) = happyShift action_25
action_55 (33) = happyShift action_26
action_55 (34) = happyShift action_27
action_55 (37) = happyShift action_28
action_55 (38) = happyShift action_29
action_55 (39) = happyShift action_30
action_55 (40) = happyShift action_31
action_55 (41) = happyShift action_32
action_55 (42) = happyShift action_33
action_55 (43) = happyShift action_34
action_55 (44) = happyShift action_35
action_55 (45) = happyShift action_36
action_55 (46) = happyShift action_37
action_55 (47) = happyShift action_38
action_55 (48) = happyShift action_39
action_55 (49) = happyShift action_40
action_55 (50) = happyShift action_41
action_55 (51) = happyShift action_42
action_55 (53) = happyShift action_43
action_55 (55) = happyShift action_44
action_55 (56) = happyShift action_45
action_55 (5) = happyGoto action_105
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (7) = happyShift action_5
action_56 (8) = happyShift action_6
action_56 (9) = happyShift action_7
action_56 (10) = happyShift action_8
action_56 (11) = happyShift action_9
action_56 (12) = happyShift action_10
action_56 (13) = happyShift action_11
action_56 (14) = happyShift action_12
action_56 (15) = happyShift action_13
action_56 (16) = happyShift action_14
action_56 (18) = happyShift action_15
action_56 (19) = happyShift action_16
action_56 (20) = happyShift action_17
action_56 (21) = happyShift action_18
action_56 (22) = happyShift action_19
action_56 (23) = happyShift action_20
action_56 (24) = happyShift action_21
action_56 (26) = happyShift action_22
action_56 (29) = happyShift action_23
action_56 (31) = happyShift action_24
action_56 (32) = happyShift action_25
action_56 (33) = happyShift action_26
action_56 (34) = happyShift action_27
action_56 (37) = happyShift action_28
action_56 (38) = happyShift action_29
action_56 (39) = happyShift action_30
action_56 (40) = happyShift action_31
action_56 (41) = happyShift action_32
action_56 (42) = happyShift action_33
action_56 (43) = happyShift action_34
action_56 (44) = happyShift action_35
action_56 (45) = happyShift action_36
action_56 (46) = happyShift action_37
action_56 (47) = happyShift action_38
action_56 (48) = happyShift action_39
action_56 (49) = happyShift action_40
action_56 (50) = happyShift action_41
action_56 (51) = happyShift action_42
action_56 (53) = happyShift action_43
action_56 (55) = happyShift action_44
action_56 (56) = happyShift action_45
action_56 (5) = happyGoto action_104
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (7) = happyShift action_5
action_57 (8) = happyShift action_6
action_57 (9) = happyShift action_7
action_57 (10) = happyShift action_8
action_57 (11) = happyShift action_9
action_57 (12) = happyShift action_10
action_57 (13) = happyShift action_11
action_57 (14) = happyShift action_12
action_57 (15) = happyShift action_13
action_57 (16) = happyShift action_14
action_57 (18) = happyShift action_15
action_57 (19) = happyShift action_16
action_57 (20) = happyShift action_17
action_57 (21) = happyShift action_18
action_57 (22) = happyShift action_19
action_57 (23) = happyShift action_20
action_57 (24) = happyShift action_21
action_57 (26) = happyShift action_22
action_57 (29) = happyShift action_23
action_57 (31) = happyShift action_24
action_57 (32) = happyShift action_25
action_57 (33) = happyShift action_26
action_57 (34) = happyShift action_27
action_57 (37) = happyShift action_28
action_57 (38) = happyShift action_29
action_57 (39) = happyShift action_30
action_57 (40) = happyShift action_31
action_57 (41) = happyShift action_32
action_57 (42) = happyShift action_33
action_57 (43) = happyShift action_34
action_57 (44) = happyShift action_35
action_57 (45) = happyShift action_36
action_57 (46) = happyShift action_37
action_57 (47) = happyShift action_38
action_57 (48) = happyShift action_39
action_57 (49) = happyShift action_40
action_57 (50) = happyShift action_41
action_57 (51) = happyShift action_42
action_57 (53) = happyShift action_43
action_57 (55) = happyShift action_44
action_57 (56) = happyShift action_45
action_57 (5) = happyGoto action_103
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (7) = happyShift action_5
action_58 (8) = happyShift action_6
action_58 (9) = happyShift action_7
action_58 (10) = happyShift action_8
action_58 (11) = happyShift action_9
action_58 (12) = happyShift action_10
action_58 (13) = happyShift action_11
action_58 (14) = happyShift action_12
action_58 (15) = happyShift action_13
action_58 (16) = happyShift action_14
action_58 (18) = happyShift action_15
action_58 (19) = happyShift action_16
action_58 (20) = happyShift action_17
action_58 (21) = happyShift action_18
action_58 (22) = happyShift action_19
action_58 (23) = happyShift action_20
action_58 (24) = happyShift action_21
action_58 (26) = happyShift action_22
action_58 (29) = happyShift action_23
action_58 (31) = happyShift action_24
action_58 (32) = happyShift action_25
action_58 (33) = happyShift action_26
action_58 (34) = happyShift action_27
action_58 (37) = happyShift action_28
action_58 (38) = happyShift action_29
action_58 (39) = happyShift action_30
action_58 (40) = happyShift action_31
action_58 (41) = happyShift action_32
action_58 (42) = happyShift action_33
action_58 (43) = happyShift action_34
action_58 (44) = happyShift action_35
action_58 (45) = happyShift action_36
action_58 (46) = happyShift action_37
action_58 (47) = happyShift action_38
action_58 (48) = happyShift action_39
action_58 (49) = happyShift action_40
action_58 (50) = happyShift action_41
action_58 (51) = happyShift action_42
action_58 (53) = happyShift action_43
action_58 (55) = happyShift action_44
action_58 (56) = happyShift action_45
action_58 (5) = happyGoto action_102
action_58 _ = happyFail (happyExpListPerState 58)

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
action_59 (48) = happyShift action_39
action_59 (49) = happyShift action_40
action_59 (50) = happyShift action_41
action_59 (51) = happyShift action_42
action_59 (53) = happyShift action_43
action_59 (55) = happyShift action_44
action_59 (56) = happyShift action_45
action_59 (5) = happyGoto action_101
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (35) = happyShift action_100
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_21

action_62 _ = happyReduce_42

action_63 _ = happyReduce_43

action_64 (7) = happyShift action_5
action_64 (8) = happyShift action_6
action_64 (9) = happyShift action_7
action_64 (10) = happyShift action_8
action_64 (11) = happyShift action_9
action_64 (12) = happyShift action_10
action_64 (13) = happyShift action_11
action_64 (14) = happyShift action_12
action_64 (15) = happyShift action_13
action_64 (16) = happyShift action_14
action_64 (18) = happyShift action_15
action_64 (19) = happyShift action_16
action_64 (20) = happyShift action_17
action_64 (21) = happyShift action_18
action_64 (22) = happyShift action_19
action_64 (23) = happyShift action_20
action_64 (24) = happyShift action_21
action_64 (26) = happyShift action_22
action_64 (29) = happyShift action_23
action_64 (31) = happyShift action_24
action_64 (32) = happyShift action_25
action_64 (33) = happyShift action_26
action_64 (34) = happyShift action_27
action_64 (37) = happyShift action_28
action_64 (38) = happyShift action_29
action_64 (39) = happyShift action_30
action_64 (40) = happyShift action_31
action_64 (41) = happyShift action_32
action_64 (42) = happyShift action_33
action_64 (43) = happyShift action_34
action_64 (44) = happyShift action_35
action_64 (45) = happyShift action_36
action_64 (46) = happyShift action_37
action_64 (47) = happyShift action_38
action_64 (48) = happyShift action_39
action_64 (49) = happyShift action_40
action_64 (50) = happyShift action_41
action_64 (51) = happyShift action_42
action_64 (53) = happyShift action_43
action_64 (55) = happyShift action_44
action_64 (56) = happyShift action_45
action_64 (5) = happyGoto action_99
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (27) = happyShift action_98
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (50) = happyShift action_97
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
action_67 (48) = happyShift action_39
action_67 (49) = happyShift action_40
action_67 (50) = happyShift action_41
action_67 (51) = happyShift action_42
action_67 (53) = happyShift action_43
action_67 (55) = happyShift action_44
action_67 (56) = happyShift action_45
action_67 (5) = happyGoto action_96
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_19

action_69 _ = happyReduce_18

action_70 (7) = happyShift action_5
action_70 (8) = happyShift action_6
action_70 (9) = happyShift action_7
action_70 (10) = happyShift action_8
action_70 (11) = happyShift action_9
action_70 (12) = happyShift action_10
action_70 (13) = happyShift action_11
action_70 (14) = happyShift action_12
action_70 (15) = happyShift action_13
action_70 (16) = happyShift action_14
action_70 (18) = happyShift action_15
action_70 (19) = happyShift action_16
action_70 (20) = happyShift action_17
action_70 (21) = happyShift action_18
action_70 (22) = happyShift action_19
action_70 (23) = happyShift action_20
action_70 (24) = happyShift action_21
action_70 (26) = happyShift action_22
action_70 (29) = happyShift action_23
action_70 (31) = happyShift action_24
action_70 (32) = happyShift action_25
action_70 (33) = happyShift action_26
action_70 (34) = happyShift action_27
action_70 (37) = happyShift action_28
action_70 (38) = happyShift action_29
action_70 (39) = happyShift action_30
action_70 (40) = happyShift action_31
action_70 (41) = happyShift action_32
action_70 (42) = happyShift action_33
action_70 (43) = happyShift action_34
action_70 (44) = happyShift action_35
action_70 (45) = happyShift action_36
action_70 (46) = happyShift action_37
action_70 (47) = happyShift action_38
action_70 (48) = happyShift action_39
action_70 (49) = happyShift action_40
action_70 (50) = happyShift action_41
action_70 (51) = happyShift action_42
action_70 (53) = happyShift action_43
action_70 (55) = happyShift action_44
action_70 (56) = happyShift action_45
action_70 (5) = happyGoto action_95
action_70 _ = happyFail (happyExpListPerState 70)

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
action_71 (48) = happyShift action_39
action_71 (49) = happyShift action_40
action_71 (50) = happyShift action_41
action_71 (51) = happyShift action_42
action_71 (53) = happyShift action_43
action_71 (55) = happyShift action_44
action_71 (56) = happyShift action_45
action_71 (5) = happyGoto action_94
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (7) = happyShift action_5
action_72 (8) = happyShift action_6
action_72 (9) = happyShift action_7
action_72 (10) = happyShift action_8
action_72 (11) = happyShift action_9
action_72 (12) = happyShift action_10
action_72 (13) = happyShift action_11
action_72 (14) = happyShift action_12
action_72 (15) = happyShift action_13
action_72 (16) = happyShift action_14
action_72 (18) = happyShift action_15
action_72 (19) = happyShift action_16
action_72 (20) = happyShift action_17
action_72 (21) = happyShift action_18
action_72 (22) = happyShift action_19
action_72 (23) = happyShift action_20
action_72 (24) = happyShift action_21
action_72 (26) = happyShift action_22
action_72 (29) = happyShift action_23
action_72 (31) = happyShift action_24
action_72 (32) = happyShift action_25
action_72 (33) = happyShift action_26
action_72 (34) = happyShift action_27
action_72 (37) = happyShift action_28
action_72 (38) = happyShift action_29
action_72 (39) = happyShift action_30
action_72 (40) = happyShift action_31
action_72 (41) = happyShift action_32
action_72 (42) = happyShift action_33
action_72 (43) = happyShift action_34
action_72 (44) = happyShift action_35
action_72 (45) = happyShift action_36
action_72 (46) = happyShift action_37
action_72 (47) = happyShift action_38
action_72 (48) = happyShift action_39
action_72 (49) = happyShift action_40
action_72 (50) = happyShift action_41
action_72 (51) = happyShift action_42
action_72 (53) = happyShift action_43
action_72 (55) = happyShift action_44
action_72 (56) = happyShift action_45
action_72 (5) = happyGoto action_93
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (17) = happyShift action_92
action_73 _ = happyFail (happyExpListPerState 73)

action_74 _ = happyReduce_12

action_75 _ = happyReduce_11

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
action_76 (48) = happyShift action_39
action_76 (49) = happyShift action_40
action_76 (50) = happyShift action_41
action_76 (51) = happyShift action_42
action_76 (53) = happyShift action_43
action_76 (55) = happyShift action_44
action_76 (56) = happyShift action_45
action_76 (5) = happyGoto action_91
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_14

action_78 (7) = happyShift action_5
action_78 (8) = happyShift action_6
action_78 (9) = happyShift action_7
action_78 (10) = happyShift action_8
action_78 (11) = happyShift action_9
action_78 (12) = happyShift action_10
action_78 (13) = happyShift action_11
action_78 (14) = happyShift action_12
action_78 (15) = happyShift action_13
action_78 (16) = happyShift action_14
action_78 (18) = happyShift action_15
action_78 (19) = happyShift action_16
action_78 (20) = happyShift action_17
action_78 (21) = happyShift action_18
action_78 (22) = happyShift action_19
action_78 (23) = happyShift action_20
action_78 (24) = happyShift action_21
action_78 (26) = happyShift action_22
action_78 (29) = happyShift action_23
action_78 (31) = happyShift action_24
action_78 (32) = happyShift action_25
action_78 (33) = happyShift action_26
action_78 (34) = happyShift action_27
action_78 (37) = happyShift action_28
action_78 (38) = happyShift action_29
action_78 (39) = happyShift action_30
action_78 (40) = happyShift action_31
action_78 (41) = happyShift action_32
action_78 (42) = happyShift action_33
action_78 (43) = happyShift action_34
action_78 (44) = happyShift action_35
action_78 (45) = happyShift action_36
action_78 (46) = happyShift action_37
action_78 (47) = happyShift action_38
action_78 (48) = happyShift action_39
action_78 (49) = happyShift action_40
action_78 (50) = happyShift action_41
action_78 (51) = happyShift action_42
action_78 (53) = happyShift action_43
action_78 (55) = happyShift action_44
action_78 (56) = happyShift action_45
action_78 (5) = happyGoto action_90
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (7) = happyShift action_5
action_79 (8) = happyShift action_6
action_79 (9) = happyShift action_7
action_79 (10) = happyShift action_8
action_79 (11) = happyShift action_9
action_79 (12) = happyShift action_10
action_79 (13) = happyShift action_11
action_79 (14) = happyShift action_12
action_79 (15) = happyShift action_13
action_79 (16) = happyShift action_14
action_79 (18) = happyShift action_15
action_79 (19) = happyShift action_16
action_79 (20) = happyShift action_17
action_79 (21) = happyShift action_18
action_79 (22) = happyShift action_19
action_79 (23) = happyShift action_20
action_79 (24) = happyShift action_21
action_79 (26) = happyShift action_22
action_79 (29) = happyShift action_23
action_79 (31) = happyShift action_24
action_79 (32) = happyShift action_25
action_79 (33) = happyShift action_26
action_79 (34) = happyShift action_27
action_79 (37) = happyShift action_28
action_79 (38) = happyShift action_29
action_79 (39) = happyShift action_30
action_79 (40) = happyShift action_31
action_79 (41) = happyShift action_32
action_79 (42) = happyShift action_33
action_79 (43) = happyShift action_34
action_79 (44) = happyShift action_35
action_79 (45) = happyShift action_36
action_79 (46) = happyShift action_37
action_79 (47) = happyShift action_38
action_79 (48) = happyShift action_39
action_79 (49) = happyShift action_40
action_79 (50) = happyShift action_41
action_79 (51) = happyShift action_42
action_79 (53) = happyShift action_43
action_79 (55) = happyShift action_44
action_79 (56) = happyShift action_45
action_79 (5) = happyGoto action_89
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (7) = happyShift action_5
action_80 (8) = happyShift action_6
action_80 (9) = happyShift action_7
action_80 (10) = happyShift action_8
action_80 (11) = happyShift action_9
action_80 (12) = happyShift action_10
action_80 (13) = happyShift action_11
action_80 (14) = happyShift action_12
action_80 (15) = happyShift action_13
action_80 (16) = happyShift action_14
action_80 (18) = happyShift action_15
action_80 (19) = happyShift action_16
action_80 (20) = happyShift action_17
action_80 (21) = happyShift action_18
action_80 (22) = happyShift action_19
action_80 (23) = happyShift action_20
action_80 (24) = happyShift action_21
action_80 (26) = happyShift action_22
action_80 (29) = happyShift action_23
action_80 (31) = happyShift action_24
action_80 (32) = happyShift action_25
action_80 (33) = happyShift action_26
action_80 (34) = happyShift action_27
action_80 (37) = happyShift action_28
action_80 (38) = happyShift action_29
action_80 (39) = happyShift action_30
action_80 (40) = happyShift action_31
action_80 (41) = happyShift action_32
action_80 (42) = happyShift action_33
action_80 (43) = happyShift action_34
action_80 (44) = happyShift action_35
action_80 (45) = happyShift action_36
action_80 (46) = happyShift action_37
action_80 (47) = happyShift action_38
action_80 (48) = happyShift action_39
action_80 (49) = happyShift action_40
action_80 (50) = happyShift action_41
action_80 (51) = happyShift action_42
action_80 (53) = happyShift action_43
action_80 (55) = happyShift action_44
action_80 (56) = happyShift action_45
action_80 (5) = happyGoto action_88
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (7) = happyShift action_5
action_81 (8) = happyShift action_6
action_81 (9) = happyShift action_7
action_81 (10) = happyShift action_8
action_81 (11) = happyShift action_9
action_81 (12) = happyShift action_10
action_81 (13) = happyShift action_11
action_81 (14) = happyShift action_12
action_81 (15) = happyShift action_13
action_81 (16) = happyShift action_14
action_81 (18) = happyShift action_15
action_81 (19) = happyShift action_16
action_81 (20) = happyShift action_17
action_81 (21) = happyShift action_18
action_81 (22) = happyShift action_19
action_81 (23) = happyShift action_20
action_81 (24) = happyShift action_21
action_81 (26) = happyShift action_22
action_81 (29) = happyShift action_23
action_81 (31) = happyShift action_24
action_81 (32) = happyShift action_25
action_81 (33) = happyShift action_26
action_81 (34) = happyShift action_27
action_81 (37) = happyShift action_28
action_81 (38) = happyShift action_29
action_81 (39) = happyShift action_30
action_81 (40) = happyShift action_31
action_81 (41) = happyShift action_32
action_81 (42) = happyShift action_33
action_81 (43) = happyShift action_34
action_81 (44) = happyShift action_35
action_81 (45) = happyShift action_36
action_81 (46) = happyShift action_37
action_81 (47) = happyShift action_38
action_81 (48) = happyShift action_39
action_81 (49) = happyShift action_40
action_81 (50) = happyShift action_41
action_81 (51) = happyShift action_42
action_81 (53) = happyShift action_43
action_81 (55) = happyShift action_44
action_81 (56) = happyShift action_45
action_81 (5) = happyGoto action_87
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (7) = happyShift action_5
action_82 (8) = happyShift action_6
action_82 (9) = happyShift action_7
action_82 (10) = happyShift action_8
action_82 (11) = happyShift action_9
action_82 (12) = happyShift action_10
action_82 (13) = happyShift action_11
action_82 (14) = happyShift action_12
action_82 (15) = happyShift action_13
action_82 (16) = happyShift action_14
action_82 (18) = happyShift action_15
action_82 (19) = happyShift action_16
action_82 (20) = happyShift action_17
action_82 (21) = happyShift action_18
action_82 (22) = happyShift action_19
action_82 (23) = happyShift action_20
action_82 (24) = happyShift action_21
action_82 (26) = happyShift action_22
action_82 (29) = happyShift action_23
action_82 (31) = happyShift action_24
action_82 (32) = happyShift action_25
action_82 (33) = happyShift action_26
action_82 (34) = happyShift action_27
action_82 (37) = happyShift action_28
action_82 (38) = happyShift action_29
action_82 (39) = happyShift action_30
action_82 (40) = happyShift action_31
action_82 (41) = happyShift action_32
action_82 (42) = happyShift action_33
action_82 (43) = happyShift action_34
action_82 (44) = happyShift action_35
action_82 (45) = happyShift action_36
action_82 (46) = happyShift action_37
action_82 (47) = happyShift action_38
action_82 (48) = happyShift action_39
action_82 (49) = happyShift action_40
action_82 (50) = happyShift action_41
action_82 (51) = happyShift action_42
action_82 (53) = happyShift action_43
action_82 (55) = happyShift action_44
action_82 (56) = happyShift action_45
action_82 (5) = happyGoto action_86
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_2

action_84 _ = happyReduce_3

action_85 _ = happyReduce_1

action_86 _ = happyReduce_4

action_87 _ = happyReduce_5

action_88 _ = happyReduce_6

action_89 _ = happyReduce_7

action_90 _ = happyReduce_8

action_91 _ = happyReduce_10

action_92 _ = happyReduce_32

action_93 _ = happyReduce_15

action_94 _ = happyReduce_16

action_95 _ = happyReduce_17

action_96 _ = happyReduce_41

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
action_97 (48) = happyShift action_39
action_97 (49) = happyShift action_40
action_97 (50) = happyShift action_41
action_97 (51) = happyShift action_42
action_97 (53) = happyShift action_43
action_97 (55) = happyShift action_44
action_97 (56) = happyShift action_45
action_97 (5) = happyGoto action_117
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (7) = happyShift action_5
action_98 (8) = happyShift action_6
action_98 (9) = happyShift action_7
action_98 (10) = happyShift action_8
action_98 (11) = happyShift action_9
action_98 (12) = happyShift action_10
action_98 (13) = happyShift action_11
action_98 (14) = happyShift action_12
action_98 (15) = happyShift action_13
action_98 (16) = happyShift action_14
action_98 (18) = happyShift action_15
action_98 (19) = happyShift action_16
action_98 (20) = happyShift action_17
action_98 (21) = happyShift action_18
action_98 (22) = happyShift action_19
action_98 (23) = happyShift action_20
action_98 (24) = happyShift action_21
action_98 (26) = happyShift action_22
action_98 (29) = happyShift action_23
action_98 (30) = happyShift action_2
action_98 (31) = happyShift action_24
action_98 (32) = happyShift action_25
action_98 (33) = happyShift action_26
action_98 (34) = happyShift action_27
action_98 (37) = happyShift action_28
action_98 (38) = happyShift action_29
action_98 (39) = happyShift action_30
action_98 (40) = happyShift action_31
action_98 (41) = happyShift action_32
action_98 (42) = happyShift action_33
action_98 (43) = happyShift action_34
action_98 (44) = happyShift action_35
action_98 (45) = happyShift action_36
action_98 (46) = happyShift action_37
action_98 (47) = happyShift action_38
action_98 (48) = happyShift action_39
action_98 (49) = happyShift action_40
action_98 (50) = happyShift action_41
action_98 (51) = happyShift action_42
action_98 (53) = happyShift action_43
action_98 (55) = happyShift action_44
action_98 (56) = happyShift action_45
action_98 (4) = happyGoto action_116
action_98 (5) = happyGoto action_4
action_98 _ = happyFail (happyExpListPerState 98)

action_99 _ = happyReduce_20

action_100 (7) = happyShift action_5
action_100 (8) = happyShift action_6
action_100 (9) = happyShift action_7
action_100 (10) = happyShift action_8
action_100 (11) = happyShift action_9
action_100 (12) = happyShift action_10
action_100 (13) = happyShift action_11
action_100 (14) = happyShift action_12
action_100 (15) = happyShift action_13
action_100 (16) = happyShift action_14
action_100 (18) = happyShift action_15
action_100 (19) = happyShift action_16
action_100 (20) = happyShift action_17
action_100 (21) = happyShift action_18
action_100 (22) = happyShift action_19
action_100 (23) = happyShift action_20
action_100 (24) = happyShift action_21
action_100 (26) = happyShift action_22
action_100 (29) = happyShift action_23
action_100 (30) = happyShift action_2
action_100 (31) = happyShift action_24
action_100 (32) = happyShift action_25
action_100 (33) = happyShift action_26
action_100 (34) = happyShift action_27
action_100 (37) = happyShift action_28
action_100 (38) = happyShift action_29
action_100 (39) = happyShift action_30
action_100 (40) = happyShift action_31
action_100 (41) = happyShift action_32
action_100 (42) = happyShift action_33
action_100 (43) = happyShift action_34
action_100 (44) = happyShift action_35
action_100 (45) = happyShift action_36
action_100 (46) = happyShift action_37
action_100 (47) = happyShift action_38
action_100 (48) = happyShift action_39
action_100 (49) = happyShift action_40
action_100 (50) = happyShift action_41
action_100 (51) = happyShift action_42
action_100 (53) = happyShift action_43
action_100 (55) = happyShift action_44
action_100 (56) = happyShift action_45
action_100 (4) = happyGoto action_115
action_100 (5) = happyGoto action_4
action_100 _ = happyFail (happyExpListPerState 100)

action_101 _ = happyReduce_9

action_102 (7) = happyShift action_5
action_102 (8) = happyShift action_6
action_102 (9) = happyShift action_7
action_102 (10) = happyShift action_8
action_102 (11) = happyShift action_9
action_102 (12) = happyShift action_10
action_102 (13) = happyShift action_11
action_102 (14) = happyShift action_12
action_102 (15) = happyShift action_13
action_102 (16) = happyShift action_14
action_102 (18) = happyShift action_15
action_102 (19) = happyShift action_16
action_102 (20) = happyShift action_17
action_102 (21) = happyShift action_18
action_102 (22) = happyShift action_19
action_102 (23) = happyShift action_20
action_102 (24) = happyShift action_21
action_102 (26) = happyShift action_22
action_102 (29) = happyShift action_23
action_102 (31) = happyShift action_24
action_102 (32) = happyShift action_25
action_102 (33) = happyShift action_26
action_102 (34) = happyShift action_27
action_102 (37) = happyShift action_28
action_102 (38) = happyShift action_29
action_102 (39) = happyShift action_30
action_102 (40) = happyShift action_31
action_102 (41) = happyShift action_32
action_102 (42) = happyShift action_33
action_102 (43) = happyShift action_34
action_102 (44) = happyShift action_35
action_102 (45) = happyShift action_36
action_102 (46) = happyShift action_37
action_102 (47) = happyShift action_38
action_102 (48) = happyShift action_39
action_102 (49) = happyShift action_40
action_102 (50) = happyShift action_41
action_102 (51) = happyShift action_42
action_102 (53) = happyShift action_43
action_102 (55) = happyShift action_44
action_102 (56) = happyShift action_45
action_102 (5) = happyGoto action_114
action_102 _ = happyFail (happyExpListPerState 102)

action_103 _ = happyReduce_23

action_104 _ = happyReduce_24

action_105 _ = happyReduce_25

action_106 _ = happyReduce_26

action_107 _ = happyReduce_27

action_108 _ = happyReduce_28

action_109 _ = happyReduce_31

action_110 _ = happyReduce_30

action_111 (51) = happyShift action_113
action_111 _ = happyFail (happyExpListPerState 111)

action_112 _ = happyReduce_44

action_113 _ = happyReduce_48

action_114 _ = happyReduce_22

action_115 _ = happyReduce_39

action_116 (28) = happyShift action_119
action_116 _ = happyReduce_38

action_117 (25) = happyShift action_118
action_117 _ = happyFail (happyExpListPerState 117)

action_118 (7) = happyShift action_5
action_118 (8) = happyShift action_6
action_118 (9) = happyShift action_7
action_118 (10) = happyShift action_8
action_118 (11) = happyShift action_9
action_118 (12) = happyShift action_10
action_118 (13) = happyShift action_11
action_118 (14) = happyShift action_12
action_118 (15) = happyShift action_13
action_118 (16) = happyShift action_14
action_118 (18) = happyShift action_15
action_118 (19) = happyShift action_16
action_118 (20) = happyShift action_17
action_118 (21) = happyShift action_18
action_118 (22) = happyShift action_19
action_118 (23) = happyShift action_20
action_118 (24) = happyShift action_21
action_118 (26) = happyShift action_22
action_118 (29) = happyShift action_23
action_118 (30) = happyShift action_2
action_118 (31) = happyShift action_24
action_118 (32) = happyShift action_25
action_118 (33) = happyShift action_26
action_118 (34) = happyShift action_27
action_118 (37) = happyShift action_28
action_118 (38) = happyShift action_29
action_118 (39) = happyShift action_30
action_118 (40) = happyShift action_31
action_118 (41) = happyShift action_32
action_118 (42) = happyShift action_33
action_118 (43) = happyShift action_34
action_118 (44) = happyShift action_35
action_118 (45) = happyShift action_36
action_118 (46) = happyShift action_37
action_118 (47) = happyShift action_38
action_118 (48) = happyShift action_39
action_118 (49) = happyShift action_40
action_118 (50) = happyShift action_41
action_118 (51) = happyShift action_42
action_118 (53) = happyShift action_43
action_118 (55) = happyShift action_44
action_118 (56) = happyShift action_45
action_118 (4) = happyGoto action_121
action_118 (5) = happyGoto action_4
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (7) = happyShift action_5
action_119 (8) = happyShift action_6
action_119 (9) = happyShift action_7
action_119 (10) = happyShift action_8
action_119 (11) = happyShift action_9
action_119 (12) = happyShift action_10
action_119 (13) = happyShift action_11
action_119 (14) = happyShift action_12
action_119 (15) = happyShift action_13
action_119 (16) = happyShift action_14
action_119 (18) = happyShift action_15
action_119 (19) = happyShift action_16
action_119 (20) = happyShift action_17
action_119 (21) = happyShift action_18
action_119 (22) = happyShift action_19
action_119 (23) = happyShift action_20
action_119 (24) = happyShift action_21
action_119 (26) = happyShift action_22
action_119 (29) = happyShift action_23
action_119 (30) = happyShift action_2
action_119 (31) = happyShift action_24
action_119 (32) = happyShift action_25
action_119 (33) = happyShift action_26
action_119 (34) = happyShift action_27
action_119 (37) = happyShift action_28
action_119 (38) = happyShift action_29
action_119 (39) = happyShift action_30
action_119 (40) = happyShift action_31
action_119 (41) = happyShift action_32
action_119 (42) = happyShift action_33
action_119 (43) = happyShift action_34
action_119 (44) = happyShift action_35
action_119 (45) = happyShift action_36
action_119 (46) = happyShift action_37
action_119 (47) = happyShift action_38
action_119 (48) = happyShift action_39
action_119 (49) = happyShift action_40
action_119 (50) = happyShift action_41
action_119 (51) = happyShift action_42
action_119 (53) = happyShift action_43
action_119 (55) = happyShift action_44
action_119 (56) = happyShift action_45
action_119 (4) = happyGoto action_120
action_119 (5) = happyGoto action_4
action_119 _ = happyFail (happyExpListPerState 119)

action_120 _ = happyReduce_37

action_121 _ = happyReduce_40

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
happyReduction_30 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (And happy_var_2 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  5 happyReduction_31
happyReduction_31 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Or happy_var_2 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  5 happyReduction_32
happyReduction_32 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Br happy_var_2
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  5 happyReduction_33
happyReduction_33 (HappyTerminal (TokenInt _  happy_var_1))
	 =  HappyAbsSyn5
		 (Nr happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  5 happyReduction_34
happyReduction_34 _
	 =  HappyAbsSyn5
		 (Logic True
	)

happyReduce_35 = happySpecReduce_1  5 happyReduction_35
happyReduction_35 _
	 =  HappyAbsSyn5
		 (Logic False
	)

happyReduce_36 = happySpecReduce_1  5 happyReduction_36
happyReduction_36 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn5
		 (Var happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happyReduce 6 5 happyReduction_37
happyReduction_37 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (IfThenElse happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_38 = happyReduce 4 5 happyReduction_38
happyReduction_38 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (IfThen happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 4 5 happyReduction_39
happyReduction_39 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_40 = happyReduce 6 5 happyReduction_40
happyReduction_40 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Let happy_var_3 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_41 = happySpecReduce_3  5 happyReduction_41
happyReduction_41 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn5
		 (Assign happy_var_2 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_2  5 happyReduction_42
happyReduction_42 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Write happy_var_2
	)
happyReduction_42 _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_2  5 happyReduction_43
happyReduction_43 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (GetInArr happy_var_2
	)
happyReduction_43 _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  5 happyReduction_44
happyReduction_44 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Arr happy_var_2
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  5 happyReduction_45
happyReduction_45 _
	 =  HappyAbsSyn5
		 (InputSize
	)

happyReduce_46 = happySpecReduce_0  6 happyReduction_46
happyReduction_46  =  HappyAbsSyn6
		 ([]
	)

happyReduce_47 = happySpecReduce_1  6 happyReduction_47
happyReduction_47 (HappyTerminal (TokenInt _  happy_var_1))
	 =  HappyAbsSyn6
		 ([happy_var_1]
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  6 happyReduction_48
happyReduction_48 (HappyTerminal (TokenInt _  happy_var_3))
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1 ++ (happy_var_3:[])
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 57 57 notHappyAtAll (HappyState action) sts stk []

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
	TokenOr _ -> cont 46;
	TokenAnd _ -> cont 47;
	TokenTrue _ -> cont 48;
	TokenFalse _ -> cont 49;
	TokenVar _ happy_dollar_dollar -> cont 50;
	TokenInt _  happy_dollar_dollar -> cont 51;
	TokenComma _ -> cont 52;
	TokenArrBeginning _ -> cont 53;
	TokenArrEnd _ -> cont 54;
	TokenLength _ -> cont 55;
	TokenInputSize _ -> cont 56;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 57 tk tks = happyError' (tks, explist)
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
          | And Expr Expr
          | Or Expr Expr
          | Br Expr
          | Nr Int
          | Arr [Int]
          | Var String
          | Logic Bool
          | IfThenElse Expr Body Body
          | IfThen Expr Body
          | While Expr Body
          | VeraVerto Expr Expr Body
          | Let String Expr Body
          | Assign String Expr
          | Write Expr
          | GetInArr Expr
          | InputSize
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
