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
happyExpList = Happy_Data_Array.listArray (0,234) ([32704,39295,32755,11,0,4,0,63484,14743,47103,0,0,0,49152,32639,62393,2943,57328,57951,57340,64514,38903,65336,183,65023,52773,11775,32704,35199,32755,61451,24543,64738,735,63484,14487,47103,65280,9725,65486,49197,32639,62345,2943,57328,57951,57340,64514,38903,65336,183,65023,52773,11775,32704,35199,32755,61451,24543,64738,735,63484,14487,47103,0,0,0,4,8192,0,0,57328,57951,57340,64514,38903,65336,183,65023,52773,11775,32704,35199,32755,61451,24543,64738,735,63484,14487,47103,65280,9725,65486,49197,32639,62345,2943,57328,57951,57340,64514,38903,65336,183,65023,52773,11775,32704,35199,32755,61451,24543,64738,735,63484,14487,47103,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,20,0,0,0,63484,14487,47103,0,0,0,49152,32639,62345,2943,57328,57951,57340,64514,38903,65336,183,65023,52773,11775,32704,35199,32755,61451,24543,64738,735,63484,14487,47103,0,0,16,0,0,0,0,0,0,0,64512,38903,65336,183,0,8,0,0,0,0,61441,24543,64738,735,0,0,0,0,0,0,49152,32639,62345,2943,57328,57951,57340,64514,38903,65336,183,512,0,0,0,0,0,0,0,0,0,63484,14487,47103,0,0,0,49152,32639,62345,2943,57328,57951,57340,64514,38903,65336,183,65023,52773,11775,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,57328,57951,57340,64514,38903,65337,183,0,0,0,32704,39295,32755,11,0,0,0,63484,14487,47103,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,2,0,16384,0,0,0,2,0,32704,39295,32755,61451,24543,64742,735,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Body","Expr","Arr","Engorgio","Reducio","Geminio","Diminuando","Ferula","Accio","Ascendio","PrioriIncantatem","'('","')'","Depulso","Flipendo","Expelliarmus","Ventus","Obliviate","Fidelius","Appare","Vestigium","Confundo","Incendio","Aguamenti","Epoximise","Alohomora","Colloportus","Legilimens","Flagrate","EverteStatum","WingardiumLeviosa","Imperio","FiniteIncantatem","AlarteAscendere","Confringo","Entomorphis","CarpeRetractum","Defodio","Deprimo","Caterwauling","Crucio","Impedimenta","lumos","nox","Apparate","horcrux","int","','","'['","']'","%eof"]
        bit_start = st * 54
        bit_end = (st + 1) * 54
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..53]
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
action_0 (17) = happyShift action_14
action_0 (18) = happyShift action_15
action_0 (19) = happyShift action_16
action_0 (20) = happyShift action_17
action_0 (21) = happyShift action_18
action_0 (22) = happyShift action_19
action_0 (23) = happyShift action_20
action_0 (25) = happyShift action_21
action_0 (28) = happyShift action_22
action_0 (29) = happyShift action_2
action_0 (32) = happyShift action_23
action_0 (33) = happyShift action_24
action_0 (34) = happyShift action_25
action_0 (37) = happyShift action_26
action_0 (38) = happyShift action_27
action_0 (39) = happyShift action_28
action_0 (40) = happyShift action_29
action_0 (41) = happyShift action_30
action_0 (42) = happyShift action_31
action_0 (43) = happyShift action_32
action_0 (44) = happyShift action_33
action_0 (45) = happyShift action_34
action_0 (46) = happyShift action_35
action_0 (47) = happyShift action_36
action_0 (49) = happyShift action_37
action_0 (50) = happyShift action_38
action_0 (52) = happyShift action_39
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (29) = happyShift action_2
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
action_2 (17) = happyShift action_14
action_2 (18) = happyShift action_15
action_2 (19) = happyShift action_16
action_2 (20) = happyShift action_17
action_2 (21) = happyShift action_18
action_2 (22) = happyShift action_19
action_2 (23) = happyShift action_20
action_2 (25) = happyShift action_21
action_2 (28) = happyShift action_22
action_2 (29) = happyShift action_2
action_2 (32) = happyShift action_23
action_2 (33) = happyShift action_24
action_2 (34) = happyShift action_25
action_2 (37) = happyShift action_26
action_2 (38) = happyShift action_27
action_2 (39) = happyShift action_28
action_2 (40) = happyShift action_29
action_2 (41) = happyShift action_30
action_2 (42) = happyShift action_31
action_2 (43) = happyShift action_32
action_2 (44) = happyShift action_33
action_2 (45) = happyShift action_34
action_2 (46) = happyShift action_35
action_2 (47) = happyShift action_36
action_2 (49) = happyShift action_37
action_2 (50) = happyShift action_38
action_2 (52) = happyShift action_39
action_2 (4) = happyGoto action_74
action_2 (5) = happyGoto action_4
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (54) = happyAccept
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
action_4 (17) = happyShift action_14
action_4 (18) = happyShift action_15
action_4 (19) = happyShift action_16
action_4 (20) = happyShift action_17
action_4 (21) = happyShift action_18
action_4 (22) = happyShift action_19
action_4 (23) = happyShift action_20
action_4 (25) = happyShift action_21
action_4 (28) = happyShift action_22
action_4 (29) = happyShift action_2
action_4 (30) = happyShift action_73
action_4 (32) = happyShift action_23
action_4 (33) = happyShift action_24
action_4 (34) = happyShift action_25
action_4 (37) = happyShift action_26
action_4 (38) = happyShift action_27
action_4 (39) = happyShift action_28
action_4 (40) = happyShift action_29
action_4 (41) = happyShift action_30
action_4 (42) = happyShift action_31
action_4 (43) = happyShift action_32
action_4 (44) = happyShift action_33
action_4 (45) = happyShift action_34
action_4 (46) = happyShift action_35
action_4 (47) = happyShift action_36
action_4 (49) = happyShift action_37
action_4 (50) = happyShift action_38
action_4 (52) = happyShift action_39
action_4 (4) = happyGoto action_72
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
action_5 (17) = happyShift action_14
action_5 (18) = happyShift action_15
action_5 (19) = happyShift action_16
action_5 (20) = happyShift action_17
action_5 (21) = happyShift action_18
action_5 (22) = happyShift action_19
action_5 (23) = happyShift action_20
action_5 (25) = happyShift action_21
action_5 (28) = happyShift action_22
action_5 (32) = happyShift action_23
action_5 (33) = happyShift action_24
action_5 (34) = happyShift action_25
action_5 (37) = happyShift action_26
action_5 (38) = happyShift action_27
action_5 (39) = happyShift action_28
action_5 (40) = happyShift action_29
action_5 (41) = happyShift action_30
action_5 (42) = happyShift action_31
action_5 (43) = happyShift action_32
action_5 (44) = happyShift action_33
action_5 (45) = happyShift action_34
action_5 (46) = happyShift action_35
action_5 (47) = happyShift action_36
action_5 (49) = happyShift action_37
action_5 (50) = happyShift action_38
action_5 (52) = happyShift action_39
action_5 (5) = happyGoto action_71
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
action_6 (17) = happyShift action_14
action_6 (18) = happyShift action_15
action_6 (19) = happyShift action_16
action_6 (20) = happyShift action_17
action_6 (21) = happyShift action_18
action_6 (22) = happyShift action_19
action_6 (23) = happyShift action_20
action_6 (25) = happyShift action_21
action_6 (28) = happyShift action_22
action_6 (32) = happyShift action_23
action_6 (33) = happyShift action_24
action_6 (34) = happyShift action_25
action_6 (37) = happyShift action_26
action_6 (38) = happyShift action_27
action_6 (39) = happyShift action_28
action_6 (40) = happyShift action_29
action_6 (41) = happyShift action_30
action_6 (42) = happyShift action_31
action_6 (43) = happyShift action_32
action_6 (44) = happyShift action_33
action_6 (45) = happyShift action_34
action_6 (46) = happyShift action_35
action_6 (47) = happyShift action_36
action_6 (49) = happyShift action_37
action_6 (50) = happyShift action_38
action_6 (52) = happyShift action_39
action_6 (5) = happyGoto action_70
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
action_7 (17) = happyShift action_14
action_7 (18) = happyShift action_15
action_7 (19) = happyShift action_16
action_7 (20) = happyShift action_17
action_7 (21) = happyShift action_18
action_7 (22) = happyShift action_19
action_7 (23) = happyShift action_20
action_7 (25) = happyShift action_21
action_7 (28) = happyShift action_22
action_7 (32) = happyShift action_23
action_7 (33) = happyShift action_24
action_7 (34) = happyShift action_25
action_7 (37) = happyShift action_26
action_7 (38) = happyShift action_27
action_7 (39) = happyShift action_28
action_7 (40) = happyShift action_29
action_7 (41) = happyShift action_30
action_7 (42) = happyShift action_31
action_7 (43) = happyShift action_32
action_7 (44) = happyShift action_33
action_7 (45) = happyShift action_34
action_7 (46) = happyShift action_35
action_7 (47) = happyShift action_36
action_7 (49) = happyShift action_37
action_7 (50) = happyShift action_38
action_7 (52) = happyShift action_39
action_7 (5) = happyGoto action_69
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
action_8 (17) = happyShift action_14
action_8 (18) = happyShift action_15
action_8 (19) = happyShift action_16
action_8 (20) = happyShift action_17
action_8 (21) = happyShift action_18
action_8 (22) = happyShift action_19
action_8 (23) = happyShift action_20
action_8 (25) = happyShift action_21
action_8 (28) = happyShift action_22
action_8 (32) = happyShift action_23
action_8 (33) = happyShift action_24
action_8 (34) = happyShift action_25
action_8 (37) = happyShift action_26
action_8 (38) = happyShift action_27
action_8 (39) = happyShift action_28
action_8 (40) = happyShift action_29
action_8 (41) = happyShift action_30
action_8 (42) = happyShift action_31
action_8 (43) = happyShift action_32
action_8 (44) = happyShift action_33
action_8 (45) = happyShift action_34
action_8 (46) = happyShift action_35
action_8 (47) = happyShift action_36
action_8 (49) = happyShift action_37
action_8 (50) = happyShift action_38
action_8 (52) = happyShift action_39
action_8 (5) = happyGoto action_68
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
action_9 (17) = happyShift action_14
action_9 (18) = happyShift action_15
action_9 (19) = happyShift action_16
action_9 (20) = happyShift action_17
action_9 (21) = happyShift action_18
action_9 (22) = happyShift action_19
action_9 (23) = happyShift action_20
action_9 (25) = happyShift action_21
action_9 (28) = happyShift action_22
action_9 (32) = happyShift action_23
action_9 (33) = happyShift action_24
action_9 (34) = happyShift action_25
action_9 (37) = happyShift action_26
action_9 (38) = happyShift action_27
action_9 (39) = happyShift action_28
action_9 (40) = happyShift action_29
action_9 (41) = happyShift action_30
action_9 (42) = happyShift action_31
action_9 (43) = happyShift action_32
action_9 (44) = happyShift action_33
action_9 (45) = happyShift action_34
action_9 (46) = happyShift action_35
action_9 (47) = happyShift action_36
action_9 (49) = happyShift action_37
action_9 (50) = happyShift action_38
action_9 (52) = happyShift action_39
action_9 (5) = happyGoto action_67
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
action_10 (17) = happyShift action_14
action_10 (18) = happyShift action_15
action_10 (19) = happyShift action_16
action_10 (20) = happyShift action_17
action_10 (21) = happyShift action_18
action_10 (22) = happyShift action_19
action_10 (23) = happyShift action_20
action_10 (25) = happyShift action_21
action_10 (28) = happyShift action_22
action_10 (32) = happyShift action_23
action_10 (33) = happyShift action_24
action_10 (34) = happyShift action_25
action_10 (37) = happyShift action_26
action_10 (38) = happyShift action_27
action_10 (39) = happyShift action_28
action_10 (40) = happyShift action_29
action_10 (41) = happyShift action_30
action_10 (42) = happyShift action_31
action_10 (43) = happyShift action_32
action_10 (44) = happyShift action_33
action_10 (45) = happyShift action_34
action_10 (46) = happyShift action_35
action_10 (47) = happyShift action_36
action_10 (49) = happyShift action_37
action_10 (50) = happyShift action_38
action_10 (52) = happyShift action_39
action_10 (5) = happyGoto action_66
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
action_11 (17) = happyShift action_14
action_11 (18) = happyShift action_15
action_11 (19) = happyShift action_16
action_11 (20) = happyShift action_17
action_11 (21) = happyShift action_18
action_11 (22) = happyShift action_19
action_11 (23) = happyShift action_20
action_11 (25) = happyShift action_21
action_11 (28) = happyShift action_22
action_11 (32) = happyShift action_23
action_11 (33) = happyShift action_24
action_11 (34) = happyShift action_25
action_11 (37) = happyShift action_26
action_11 (38) = happyShift action_27
action_11 (39) = happyShift action_28
action_11 (40) = happyShift action_29
action_11 (41) = happyShift action_30
action_11 (42) = happyShift action_31
action_11 (43) = happyShift action_32
action_11 (44) = happyShift action_33
action_11 (45) = happyShift action_34
action_11 (46) = happyShift action_35
action_11 (47) = happyShift action_36
action_11 (49) = happyShift action_37
action_11 (50) = happyShift action_38
action_11 (52) = happyShift action_39
action_11 (5) = happyGoto action_65
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
action_12 (17) = happyShift action_14
action_12 (18) = happyShift action_15
action_12 (19) = happyShift action_16
action_12 (20) = happyShift action_17
action_12 (21) = happyShift action_18
action_12 (22) = happyShift action_19
action_12 (23) = happyShift action_20
action_12 (25) = happyShift action_21
action_12 (28) = happyShift action_22
action_12 (32) = happyShift action_23
action_12 (33) = happyShift action_24
action_12 (34) = happyShift action_25
action_12 (37) = happyShift action_26
action_12 (38) = happyShift action_27
action_12 (39) = happyShift action_28
action_12 (40) = happyShift action_29
action_12 (41) = happyShift action_30
action_12 (42) = happyShift action_31
action_12 (43) = happyShift action_32
action_12 (44) = happyShift action_33
action_12 (45) = happyShift action_34
action_12 (46) = happyShift action_35
action_12 (47) = happyShift action_36
action_12 (49) = happyShift action_37
action_12 (50) = happyShift action_38
action_12 (52) = happyShift action_39
action_12 (5) = happyGoto action_64
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
action_13 (17) = happyShift action_14
action_13 (18) = happyShift action_15
action_13 (19) = happyShift action_16
action_13 (20) = happyShift action_17
action_13 (21) = happyShift action_18
action_13 (22) = happyShift action_19
action_13 (23) = happyShift action_20
action_13 (25) = happyShift action_21
action_13 (28) = happyShift action_22
action_13 (32) = happyShift action_23
action_13 (33) = happyShift action_24
action_13 (34) = happyShift action_25
action_13 (37) = happyShift action_26
action_13 (38) = happyShift action_27
action_13 (39) = happyShift action_28
action_13 (40) = happyShift action_29
action_13 (41) = happyShift action_30
action_13 (42) = happyShift action_31
action_13 (43) = happyShift action_32
action_13 (44) = happyShift action_33
action_13 (45) = happyShift action_34
action_13 (46) = happyShift action_35
action_13 (47) = happyShift action_36
action_13 (49) = happyShift action_37
action_13 (50) = happyShift action_38
action_13 (52) = happyShift action_39
action_13 (5) = happyGoto action_63
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
action_14 (17) = happyShift action_14
action_14 (18) = happyShift action_15
action_14 (19) = happyShift action_16
action_14 (20) = happyShift action_17
action_14 (21) = happyShift action_18
action_14 (22) = happyShift action_19
action_14 (23) = happyShift action_20
action_14 (25) = happyShift action_21
action_14 (28) = happyShift action_22
action_14 (32) = happyShift action_23
action_14 (33) = happyShift action_24
action_14 (34) = happyShift action_25
action_14 (37) = happyShift action_26
action_14 (38) = happyShift action_27
action_14 (39) = happyShift action_28
action_14 (40) = happyShift action_29
action_14 (41) = happyShift action_30
action_14 (42) = happyShift action_31
action_14 (43) = happyShift action_32
action_14 (44) = happyShift action_33
action_14 (45) = happyShift action_34
action_14 (46) = happyShift action_35
action_14 (47) = happyShift action_36
action_14 (49) = happyShift action_37
action_14 (50) = happyShift action_38
action_14 (52) = happyShift action_39
action_14 (5) = happyGoto action_62
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
action_15 (17) = happyShift action_14
action_15 (18) = happyShift action_15
action_15 (19) = happyShift action_16
action_15 (20) = happyShift action_17
action_15 (21) = happyShift action_18
action_15 (22) = happyShift action_19
action_15 (23) = happyShift action_20
action_15 (25) = happyShift action_21
action_15 (28) = happyShift action_22
action_15 (32) = happyShift action_23
action_15 (33) = happyShift action_24
action_15 (34) = happyShift action_25
action_15 (37) = happyShift action_26
action_15 (38) = happyShift action_27
action_15 (39) = happyShift action_28
action_15 (40) = happyShift action_29
action_15 (41) = happyShift action_30
action_15 (42) = happyShift action_31
action_15 (43) = happyShift action_32
action_15 (44) = happyShift action_33
action_15 (45) = happyShift action_34
action_15 (46) = happyShift action_35
action_15 (47) = happyShift action_36
action_15 (49) = happyShift action_37
action_15 (50) = happyShift action_38
action_15 (52) = happyShift action_39
action_15 (5) = happyGoto action_61
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
action_16 (17) = happyShift action_14
action_16 (18) = happyShift action_15
action_16 (19) = happyShift action_16
action_16 (20) = happyShift action_17
action_16 (21) = happyShift action_18
action_16 (22) = happyShift action_19
action_16 (23) = happyShift action_20
action_16 (25) = happyShift action_21
action_16 (28) = happyShift action_22
action_16 (32) = happyShift action_23
action_16 (33) = happyShift action_24
action_16 (34) = happyShift action_25
action_16 (37) = happyShift action_26
action_16 (38) = happyShift action_27
action_16 (39) = happyShift action_28
action_16 (40) = happyShift action_29
action_16 (41) = happyShift action_30
action_16 (42) = happyShift action_31
action_16 (43) = happyShift action_32
action_16 (44) = happyShift action_33
action_16 (45) = happyShift action_34
action_16 (46) = happyShift action_35
action_16 (47) = happyShift action_36
action_16 (49) = happyShift action_37
action_16 (50) = happyShift action_38
action_16 (52) = happyShift action_39
action_16 (5) = happyGoto action_60
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
action_17 (17) = happyShift action_14
action_17 (18) = happyShift action_15
action_17 (19) = happyShift action_16
action_17 (20) = happyShift action_17
action_17 (21) = happyShift action_18
action_17 (22) = happyShift action_19
action_17 (23) = happyShift action_20
action_17 (25) = happyShift action_21
action_17 (28) = happyShift action_22
action_17 (32) = happyShift action_23
action_17 (33) = happyShift action_24
action_17 (34) = happyShift action_25
action_17 (37) = happyShift action_26
action_17 (38) = happyShift action_27
action_17 (39) = happyShift action_28
action_17 (40) = happyShift action_29
action_17 (41) = happyShift action_30
action_17 (42) = happyShift action_31
action_17 (43) = happyShift action_32
action_17 (44) = happyShift action_33
action_17 (45) = happyShift action_34
action_17 (46) = happyShift action_35
action_17 (47) = happyShift action_36
action_17 (49) = happyShift action_37
action_17 (50) = happyShift action_38
action_17 (52) = happyShift action_39
action_17 (5) = happyGoto action_59
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
action_18 (17) = happyShift action_14
action_18 (18) = happyShift action_15
action_18 (19) = happyShift action_16
action_18 (20) = happyShift action_17
action_18 (21) = happyShift action_18
action_18 (22) = happyShift action_19
action_18 (23) = happyShift action_20
action_18 (25) = happyShift action_21
action_18 (28) = happyShift action_22
action_18 (32) = happyShift action_23
action_18 (33) = happyShift action_24
action_18 (34) = happyShift action_25
action_18 (37) = happyShift action_26
action_18 (38) = happyShift action_27
action_18 (39) = happyShift action_28
action_18 (40) = happyShift action_29
action_18 (41) = happyShift action_30
action_18 (42) = happyShift action_31
action_18 (43) = happyShift action_32
action_18 (44) = happyShift action_33
action_18 (45) = happyShift action_34
action_18 (46) = happyShift action_35
action_18 (47) = happyShift action_36
action_18 (49) = happyShift action_37
action_18 (50) = happyShift action_38
action_18 (52) = happyShift action_39
action_18 (5) = happyGoto action_58
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (49) = happyShift action_57
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (22) = happyShift action_56
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (7) = happyShift action_5
action_21 (8) = happyShift action_6
action_21 (9) = happyShift action_7
action_21 (10) = happyShift action_8
action_21 (11) = happyShift action_9
action_21 (12) = happyShift action_10
action_21 (13) = happyShift action_11
action_21 (14) = happyShift action_12
action_21 (15) = happyShift action_13
action_21 (17) = happyShift action_14
action_21 (18) = happyShift action_15
action_21 (19) = happyShift action_16
action_21 (20) = happyShift action_17
action_21 (21) = happyShift action_18
action_21 (22) = happyShift action_19
action_21 (23) = happyShift action_20
action_21 (25) = happyShift action_21
action_21 (28) = happyShift action_22
action_21 (32) = happyShift action_23
action_21 (33) = happyShift action_24
action_21 (34) = happyShift action_25
action_21 (37) = happyShift action_26
action_21 (38) = happyShift action_27
action_21 (39) = happyShift action_28
action_21 (40) = happyShift action_29
action_21 (41) = happyShift action_30
action_21 (42) = happyShift action_31
action_21 (43) = happyShift action_32
action_21 (44) = happyShift action_33
action_21 (45) = happyShift action_34
action_21 (46) = happyShift action_35
action_21 (47) = happyShift action_36
action_21 (49) = happyShift action_37
action_21 (50) = happyShift action_38
action_21 (52) = happyShift action_39
action_21 (5) = happyGoto action_55
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
action_22 (17) = happyShift action_14
action_22 (18) = happyShift action_15
action_22 (19) = happyShift action_16
action_22 (20) = happyShift action_17
action_22 (21) = happyShift action_18
action_22 (22) = happyShift action_19
action_22 (23) = happyShift action_20
action_22 (25) = happyShift action_21
action_22 (28) = happyShift action_22
action_22 (32) = happyShift action_23
action_22 (33) = happyShift action_24
action_22 (34) = happyShift action_25
action_22 (37) = happyShift action_26
action_22 (38) = happyShift action_27
action_22 (39) = happyShift action_28
action_22 (40) = happyShift action_29
action_22 (41) = happyShift action_30
action_22 (42) = happyShift action_31
action_22 (43) = happyShift action_32
action_22 (44) = happyShift action_33
action_22 (45) = happyShift action_34
action_22 (46) = happyShift action_35
action_22 (47) = happyShift action_36
action_22 (49) = happyShift action_37
action_22 (50) = happyShift action_38
action_22 (52) = happyShift action_39
action_22 (5) = happyGoto action_54
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
action_23 (17) = happyShift action_14
action_23 (18) = happyShift action_15
action_23 (19) = happyShift action_16
action_23 (20) = happyShift action_17
action_23 (21) = happyShift action_18
action_23 (22) = happyShift action_19
action_23 (23) = happyShift action_20
action_23 (25) = happyShift action_21
action_23 (28) = happyShift action_22
action_23 (32) = happyShift action_23
action_23 (33) = happyShift action_24
action_23 (34) = happyShift action_25
action_23 (37) = happyShift action_26
action_23 (38) = happyShift action_27
action_23 (39) = happyShift action_28
action_23 (40) = happyShift action_29
action_23 (41) = happyShift action_30
action_23 (42) = happyShift action_31
action_23 (43) = happyShift action_32
action_23 (44) = happyShift action_33
action_23 (45) = happyShift action_34
action_23 (46) = happyShift action_35
action_23 (47) = happyShift action_36
action_23 (49) = happyShift action_37
action_23 (50) = happyShift action_38
action_23 (52) = happyShift action_39
action_23 (5) = happyGoto action_53
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
action_24 (17) = happyShift action_14
action_24 (18) = happyShift action_15
action_24 (19) = happyShift action_16
action_24 (20) = happyShift action_17
action_24 (21) = happyShift action_18
action_24 (22) = happyShift action_19
action_24 (23) = happyShift action_20
action_24 (25) = happyShift action_21
action_24 (28) = happyShift action_22
action_24 (32) = happyShift action_23
action_24 (33) = happyShift action_24
action_24 (34) = happyShift action_25
action_24 (37) = happyShift action_26
action_24 (38) = happyShift action_27
action_24 (39) = happyShift action_28
action_24 (40) = happyShift action_29
action_24 (41) = happyShift action_30
action_24 (42) = happyShift action_31
action_24 (43) = happyShift action_32
action_24 (44) = happyShift action_33
action_24 (45) = happyShift action_34
action_24 (46) = happyShift action_35
action_24 (47) = happyShift action_36
action_24 (49) = happyShift action_37
action_24 (50) = happyShift action_38
action_24 (52) = happyShift action_39
action_24 (5) = happyGoto action_52
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
action_25 (17) = happyShift action_14
action_25 (18) = happyShift action_15
action_25 (19) = happyShift action_16
action_25 (20) = happyShift action_17
action_25 (21) = happyShift action_18
action_25 (22) = happyShift action_19
action_25 (23) = happyShift action_20
action_25 (25) = happyShift action_21
action_25 (28) = happyShift action_22
action_25 (32) = happyShift action_23
action_25 (33) = happyShift action_24
action_25 (34) = happyShift action_25
action_25 (37) = happyShift action_26
action_25 (38) = happyShift action_27
action_25 (39) = happyShift action_28
action_25 (40) = happyShift action_29
action_25 (41) = happyShift action_30
action_25 (42) = happyShift action_31
action_25 (43) = happyShift action_32
action_25 (44) = happyShift action_33
action_25 (45) = happyShift action_34
action_25 (46) = happyShift action_35
action_25 (47) = happyShift action_36
action_25 (49) = happyShift action_37
action_25 (50) = happyShift action_38
action_25 (52) = happyShift action_39
action_25 (5) = happyGoto action_51
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
action_26 (17) = happyShift action_14
action_26 (18) = happyShift action_15
action_26 (19) = happyShift action_16
action_26 (20) = happyShift action_17
action_26 (21) = happyShift action_18
action_26 (22) = happyShift action_19
action_26 (23) = happyShift action_20
action_26 (25) = happyShift action_21
action_26 (28) = happyShift action_22
action_26 (32) = happyShift action_23
action_26 (33) = happyShift action_24
action_26 (34) = happyShift action_25
action_26 (37) = happyShift action_26
action_26 (38) = happyShift action_27
action_26 (39) = happyShift action_28
action_26 (40) = happyShift action_29
action_26 (41) = happyShift action_30
action_26 (42) = happyShift action_31
action_26 (43) = happyShift action_32
action_26 (44) = happyShift action_33
action_26 (45) = happyShift action_34
action_26 (46) = happyShift action_35
action_26 (47) = happyShift action_36
action_26 (49) = happyShift action_37
action_26 (50) = happyShift action_38
action_26 (52) = happyShift action_39
action_26 (5) = happyGoto action_50
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
action_27 (17) = happyShift action_14
action_27 (18) = happyShift action_15
action_27 (19) = happyShift action_16
action_27 (20) = happyShift action_17
action_27 (21) = happyShift action_18
action_27 (22) = happyShift action_19
action_27 (23) = happyShift action_20
action_27 (25) = happyShift action_21
action_27 (28) = happyShift action_22
action_27 (32) = happyShift action_23
action_27 (33) = happyShift action_24
action_27 (34) = happyShift action_25
action_27 (37) = happyShift action_26
action_27 (38) = happyShift action_27
action_27 (39) = happyShift action_28
action_27 (40) = happyShift action_29
action_27 (41) = happyShift action_30
action_27 (42) = happyShift action_31
action_27 (43) = happyShift action_32
action_27 (44) = happyShift action_33
action_27 (45) = happyShift action_34
action_27 (46) = happyShift action_35
action_27 (47) = happyShift action_36
action_27 (49) = happyShift action_37
action_27 (50) = happyShift action_38
action_27 (52) = happyShift action_39
action_27 (5) = happyGoto action_49
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
action_28 (17) = happyShift action_14
action_28 (18) = happyShift action_15
action_28 (19) = happyShift action_16
action_28 (20) = happyShift action_17
action_28 (21) = happyShift action_18
action_28 (22) = happyShift action_19
action_28 (23) = happyShift action_20
action_28 (25) = happyShift action_21
action_28 (28) = happyShift action_22
action_28 (32) = happyShift action_23
action_28 (33) = happyShift action_24
action_28 (34) = happyShift action_25
action_28 (37) = happyShift action_26
action_28 (38) = happyShift action_27
action_28 (39) = happyShift action_28
action_28 (40) = happyShift action_29
action_28 (41) = happyShift action_30
action_28 (42) = happyShift action_31
action_28 (43) = happyShift action_32
action_28 (44) = happyShift action_33
action_28 (45) = happyShift action_34
action_28 (46) = happyShift action_35
action_28 (47) = happyShift action_36
action_28 (49) = happyShift action_37
action_28 (50) = happyShift action_38
action_28 (52) = happyShift action_39
action_28 (5) = happyGoto action_48
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
action_29 (17) = happyShift action_14
action_29 (18) = happyShift action_15
action_29 (19) = happyShift action_16
action_29 (20) = happyShift action_17
action_29 (21) = happyShift action_18
action_29 (22) = happyShift action_19
action_29 (23) = happyShift action_20
action_29 (25) = happyShift action_21
action_29 (28) = happyShift action_22
action_29 (32) = happyShift action_23
action_29 (33) = happyShift action_24
action_29 (34) = happyShift action_25
action_29 (37) = happyShift action_26
action_29 (38) = happyShift action_27
action_29 (39) = happyShift action_28
action_29 (40) = happyShift action_29
action_29 (41) = happyShift action_30
action_29 (42) = happyShift action_31
action_29 (43) = happyShift action_32
action_29 (44) = happyShift action_33
action_29 (45) = happyShift action_34
action_29 (46) = happyShift action_35
action_29 (47) = happyShift action_36
action_29 (49) = happyShift action_37
action_29 (50) = happyShift action_38
action_29 (52) = happyShift action_39
action_29 (5) = happyGoto action_47
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
action_30 (17) = happyShift action_14
action_30 (18) = happyShift action_15
action_30 (19) = happyShift action_16
action_30 (20) = happyShift action_17
action_30 (21) = happyShift action_18
action_30 (22) = happyShift action_19
action_30 (23) = happyShift action_20
action_30 (25) = happyShift action_21
action_30 (28) = happyShift action_22
action_30 (32) = happyShift action_23
action_30 (33) = happyShift action_24
action_30 (34) = happyShift action_25
action_30 (37) = happyShift action_26
action_30 (38) = happyShift action_27
action_30 (39) = happyShift action_28
action_30 (40) = happyShift action_29
action_30 (41) = happyShift action_30
action_30 (42) = happyShift action_31
action_30 (43) = happyShift action_32
action_30 (44) = happyShift action_33
action_30 (45) = happyShift action_34
action_30 (46) = happyShift action_35
action_30 (47) = happyShift action_36
action_30 (49) = happyShift action_37
action_30 (50) = happyShift action_38
action_30 (52) = happyShift action_39
action_30 (5) = happyGoto action_46
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
action_31 (17) = happyShift action_14
action_31 (18) = happyShift action_15
action_31 (19) = happyShift action_16
action_31 (20) = happyShift action_17
action_31 (21) = happyShift action_18
action_31 (22) = happyShift action_19
action_31 (23) = happyShift action_20
action_31 (25) = happyShift action_21
action_31 (28) = happyShift action_22
action_31 (32) = happyShift action_23
action_31 (33) = happyShift action_24
action_31 (34) = happyShift action_25
action_31 (37) = happyShift action_26
action_31 (38) = happyShift action_27
action_31 (39) = happyShift action_28
action_31 (40) = happyShift action_29
action_31 (41) = happyShift action_30
action_31 (42) = happyShift action_31
action_31 (43) = happyShift action_32
action_31 (44) = happyShift action_33
action_31 (45) = happyShift action_34
action_31 (46) = happyShift action_35
action_31 (47) = happyShift action_36
action_31 (49) = happyShift action_37
action_31 (50) = happyShift action_38
action_31 (52) = happyShift action_39
action_31 (5) = happyGoto action_45
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
action_32 (17) = happyShift action_14
action_32 (18) = happyShift action_15
action_32 (19) = happyShift action_16
action_32 (20) = happyShift action_17
action_32 (21) = happyShift action_18
action_32 (22) = happyShift action_19
action_32 (23) = happyShift action_20
action_32 (25) = happyShift action_21
action_32 (28) = happyShift action_22
action_32 (32) = happyShift action_23
action_32 (33) = happyShift action_24
action_32 (34) = happyShift action_25
action_32 (37) = happyShift action_26
action_32 (38) = happyShift action_27
action_32 (39) = happyShift action_28
action_32 (40) = happyShift action_29
action_32 (41) = happyShift action_30
action_32 (42) = happyShift action_31
action_32 (43) = happyShift action_32
action_32 (44) = happyShift action_33
action_32 (45) = happyShift action_34
action_32 (46) = happyShift action_35
action_32 (47) = happyShift action_36
action_32 (49) = happyShift action_37
action_32 (50) = happyShift action_38
action_32 (52) = happyShift action_39
action_32 (5) = happyGoto action_44
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
action_33 (17) = happyShift action_14
action_33 (18) = happyShift action_15
action_33 (19) = happyShift action_16
action_33 (20) = happyShift action_17
action_33 (21) = happyShift action_18
action_33 (22) = happyShift action_19
action_33 (23) = happyShift action_20
action_33 (25) = happyShift action_21
action_33 (28) = happyShift action_22
action_33 (32) = happyShift action_23
action_33 (33) = happyShift action_24
action_33 (34) = happyShift action_25
action_33 (37) = happyShift action_26
action_33 (38) = happyShift action_27
action_33 (39) = happyShift action_28
action_33 (40) = happyShift action_29
action_33 (41) = happyShift action_30
action_33 (42) = happyShift action_31
action_33 (43) = happyShift action_32
action_33 (44) = happyShift action_33
action_33 (45) = happyShift action_34
action_33 (46) = happyShift action_35
action_33 (47) = happyShift action_36
action_33 (49) = happyShift action_37
action_33 (50) = happyShift action_38
action_33 (52) = happyShift action_39
action_33 (5) = happyGoto action_43
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
action_34 (17) = happyShift action_14
action_34 (18) = happyShift action_15
action_34 (19) = happyShift action_16
action_34 (20) = happyShift action_17
action_34 (21) = happyShift action_18
action_34 (22) = happyShift action_19
action_34 (23) = happyShift action_20
action_34 (25) = happyShift action_21
action_34 (28) = happyShift action_22
action_34 (32) = happyShift action_23
action_34 (33) = happyShift action_24
action_34 (34) = happyShift action_25
action_34 (37) = happyShift action_26
action_34 (38) = happyShift action_27
action_34 (39) = happyShift action_28
action_34 (40) = happyShift action_29
action_34 (41) = happyShift action_30
action_34 (42) = happyShift action_31
action_34 (43) = happyShift action_32
action_34 (44) = happyShift action_33
action_34 (45) = happyShift action_34
action_34 (46) = happyShift action_35
action_34 (47) = happyShift action_36
action_34 (49) = happyShift action_37
action_34 (50) = happyShift action_38
action_34 (52) = happyShift action_39
action_34 (5) = happyGoto action_42
action_34 _ = happyFail (happyExpListPerState 34)

action_35 _ = happyReduce_30

action_36 _ = happyReduce_31

action_37 _ = happyReduce_32

action_38 _ = happyReduce_29

action_39 (50) = happyShift action_41
action_39 (6) = happyGoto action_40
action_39 _ = happyReduce_40

action_40 (51) = happyShift action_97
action_40 (53) = happyShift action_98
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_41

action_42 (7) = happyShift action_5
action_42 (8) = happyShift action_6
action_42 (9) = happyShift action_7
action_42 (10) = happyShift action_8
action_42 (11) = happyShift action_9
action_42 (12) = happyShift action_10
action_42 (13) = happyShift action_11
action_42 (14) = happyShift action_12
action_42 (15) = happyShift action_13
action_42 (17) = happyShift action_14
action_42 (18) = happyShift action_15
action_42 (19) = happyShift action_16
action_42 (20) = happyShift action_17
action_42 (21) = happyShift action_18
action_42 (22) = happyShift action_19
action_42 (23) = happyShift action_20
action_42 (25) = happyShift action_21
action_42 (28) = happyShift action_22
action_42 (32) = happyShift action_23
action_42 (33) = happyShift action_24
action_42 (34) = happyShift action_25
action_42 (37) = happyShift action_26
action_42 (38) = happyShift action_27
action_42 (39) = happyShift action_28
action_42 (40) = happyShift action_29
action_42 (41) = happyShift action_30
action_42 (42) = happyShift action_31
action_42 (43) = happyShift action_32
action_42 (44) = happyShift action_33
action_42 (45) = happyShift action_34
action_42 (46) = happyShift action_35
action_42 (47) = happyShift action_36
action_42 (49) = happyShift action_37
action_42 (50) = happyShift action_38
action_42 (52) = happyShift action_39
action_42 (5) = happyGoto action_96
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_27

action_44 (7) = happyShift action_5
action_44 (8) = happyShift action_6
action_44 (9) = happyShift action_7
action_44 (10) = happyShift action_8
action_44 (11) = happyShift action_9
action_44 (12) = happyShift action_10
action_44 (13) = happyShift action_11
action_44 (14) = happyShift action_12
action_44 (15) = happyShift action_13
action_44 (17) = happyShift action_14
action_44 (18) = happyShift action_15
action_44 (19) = happyShift action_16
action_44 (20) = happyShift action_17
action_44 (21) = happyShift action_18
action_44 (22) = happyShift action_19
action_44 (23) = happyShift action_20
action_44 (25) = happyShift action_21
action_44 (28) = happyShift action_22
action_44 (32) = happyShift action_23
action_44 (33) = happyShift action_24
action_44 (34) = happyShift action_25
action_44 (37) = happyShift action_26
action_44 (38) = happyShift action_27
action_44 (39) = happyShift action_28
action_44 (40) = happyShift action_29
action_44 (41) = happyShift action_30
action_44 (42) = happyShift action_31
action_44 (43) = happyShift action_32
action_44 (44) = happyShift action_33
action_44 (45) = happyShift action_34
action_44 (46) = happyShift action_35
action_44 (47) = happyShift action_36
action_44 (49) = happyShift action_37
action_44 (50) = happyShift action_38
action_44 (52) = happyShift action_39
action_44 (5) = happyGoto action_95
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (7) = happyShift action_5
action_45 (8) = happyShift action_6
action_45 (9) = happyShift action_7
action_45 (10) = happyShift action_8
action_45 (11) = happyShift action_9
action_45 (12) = happyShift action_10
action_45 (13) = happyShift action_11
action_45 (14) = happyShift action_12
action_45 (15) = happyShift action_13
action_45 (17) = happyShift action_14
action_45 (18) = happyShift action_15
action_45 (19) = happyShift action_16
action_45 (20) = happyShift action_17
action_45 (21) = happyShift action_18
action_45 (22) = happyShift action_19
action_45 (23) = happyShift action_20
action_45 (25) = happyShift action_21
action_45 (28) = happyShift action_22
action_45 (32) = happyShift action_23
action_45 (33) = happyShift action_24
action_45 (34) = happyShift action_25
action_45 (37) = happyShift action_26
action_45 (38) = happyShift action_27
action_45 (39) = happyShift action_28
action_45 (40) = happyShift action_29
action_45 (41) = happyShift action_30
action_45 (42) = happyShift action_31
action_45 (43) = happyShift action_32
action_45 (44) = happyShift action_33
action_45 (45) = happyShift action_34
action_45 (46) = happyShift action_35
action_45 (47) = happyShift action_36
action_45 (49) = happyShift action_37
action_45 (50) = happyShift action_38
action_45 (52) = happyShift action_39
action_45 (5) = happyGoto action_94
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (7) = happyShift action_5
action_46 (8) = happyShift action_6
action_46 (9) = happyShift action_7
action_46 (10) = happyShift action_8
action_46 (11) = happyShift action_9
action_46 (12) = happyShift action_10
action_46 (13) = happyShift action_11
action_46 (14) = happyShift action_12
action_46 (15) = happyShift action_13
action_46 (17) = happyShift action_14
action_46 (18) = happyShift action_15
action_46 (19) = happyShift action_16
action_46 (20) = happyShift action_17
action_46 (21) = happyShift action_18
action_46 (22) = happyShift action_19
action_46 (23) = happyShift action_20
action_46 (25) = happyShift action_21
action_46 (28) = happyShift action_22
action_46 (32) = happyShift action_23
action_46 (33) = happyShift action_24
action_46 (34) = happyShift action_25
action_46 (37) = happyShift action_26
action_46 (38) = happyShift action_27
action_46 (39) = happyShift action_28
action_46 (40) = happyShift action_29
action_46 (41) = happyShift action_30
action_46 (42) = happyShift action_31
action_46 (43) = happyShift action_32
action_46 (44) = happyShift action_33
action_46 (45) = happyShift action_34
action_46 (46) = happyShift action_35
action_46 (47) = happyShift action_36
action_46 (49) = happyShift action_37
action_46 (50) = happyShift action_38
action_46 (52) = happyShift action_39
action_46 (5) = happyGoto action_93
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (7) = happyShift action_5
action_47 (8) = happyShift action_6
action_47 (9) = happyShift action_7
action_47 (10) = happyShift action_8
action_47 (11) = happyShift action_9
action_47 (12) = happyShift action_10
action_47 (13) = happyShift action_11
action_47 (14) = happyShift action_12
action_47 (15) = happyShift action_13
action_47 (17) = happyShift action_14
action_47 (18) = happyShift action_15
action_47 (19) = happyShift action_16
action_47 (20) = happyShift action_17
action_47 (21) = happyShift action_18
action_47 (22) = happyShift action_19
action_47 (23) = happyShift action_20
action_47 (25) = happyShift action_21
action_47 (28) = happyShift action_22
action_47 (32) = happyShift action_23
action_47 (33) = happyShift action_24
action_47 (34) = happyShift action_25
action_47 (37) = happyShift action_26
action_47 (38) = happyShift action_27
action_47 (39) = happyShift action_28
action_47 (40) = happyShift action_29
action_47 (41) = happyShift action_30
action_47 (42) = happyShift action_31
action_47 (43) = happyShift action_32
action_47 (44) = happyShift action_33
action_47 (45) = happyShift action_34
action_47 (46) = happyShift action_35
action_47 (47) = happyShift action_36
action_47 (49) = happyShift action_37
action_47 (50) = happyShift action_38
action_47 (52) = happyShift action_39
action_47 (5) = happyGoto action_92
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (7) = happyShift action_5
action_48 (8) = happyShift action_6
action_48 (9) = happyShift action_7
action_48 (10) = happyShift action_8
action_48 (11) = happyShift action_9
action_48 (12) = happyShift action_10
action_48 (13) = happyShift action_11
action_48 (14) = happyShift action_12
action_48 (15) = happyShift action_13
action_48 (17) = happyShift action_14
action_48 (18) = happyShift action_15
action_48 (19) = happyShift action_16
action_48 (20) = happyShift action_17
action_48 (21) = happyShift action_18
action_48 (22) = happyShift action_19
action_48 (23) = happyShift action_20
action_48 (25) = happyShift action_21
action_48 (28) = happyShift action_22
action_48 (32) = happyShift action_23
action_48 (33) = happyShift action_24
action_48 (34) = happyShift action_25
action_48 (37) = happyShift action_26
action_48 (38) = happyShift action_27
action_48 (39) = happyShift action_28
action_48 (40) = happyShift action_29
action_48 (41) = happyShift action_30
action_48 (42) = happyShift action_31
action_48 (43) = happyShift action_32
action_48 (44) = happyShift action_33
action_48 (45) = happyShift action_34
action_48 (46) = happyShift action_35
action_48 (47) = happyShift action_36
action_48 (49) = happyShift action_37
action_48 (50) = happyShift action_38
action_48 (52) = happyShift action_39
action_48 (5) = happyGoto action_91
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
action_49 (17) = happyShift action_14
action_49 (18) = happyShift action_15
action_49 (19) = happyShift action_16
action_49 (20) = happyShift action_17
action_49 (21) = happyShift action_18
action_49 (22) = happyShift action_19
action_49 (23) = happyShift action_20
action_49 (25) = happyShift action_21
action_49 (28) = happyShift action_22
action_49 (32) = happyShift action_23
action_49 (33) = happyShift action_24
action_49 (34) = happyShift action_25
action_49 (37) = happyShift action_26
action_49 (38) = happyShift action_27
action_49 (39) = happyShift action_28
action_49 (40) = happyShift action_29
action_49 (41) = happyShift action_30
action_49 (42) = happyShift action_31
action_49 (43) = happyShift action_32
action_49 (44) = happyShift action_33
action_49 (45) = happyShift action_34
action_49 (46) = happyShift action_35
action_49 (47) = happyShift action_36
action_49 (49) = happyShift action_37
action_49 (50) = happyShift action_38
action_49 (52) = happyShift action_39
action_49 (5) = happyGoto action_90
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
action_50 (17) = happyShift action_14
action_50 (18) = happyShift action_15
action_50 (19) = happyShift action_16
action_50 (20) = happyShift action_17
action_50 (21) = happyShift action_18
action_50 (22) = happyShift action_19
action_50 (23) = happyShift action_20
action_50 (25) = happyShift action_21
action_50 (28) = happyShift action_22
action_50 (32) = happyShift action_23
action_50 (33) = happyShift action_24
action_50 (34) = happyShift action_25
action_50 (37) = happyShift action_26
action_50 (38) = happyShift action_27
action_50 (39) = happyShift action_28
action_50 (40) = happyShift action_29
action_50 (41) = happyShift action_30
action_50 (42) = happyShift action_31
action_50 (43) = happyShift action_32
action_50 (44) = happyShift action_33
action_50 (45) = happyShift action_34
action_50 (46) = happyShift action_35
action_50 (47) = happyShift action_36
action_50 (49) = happyShift action_37
action_50 (50) = happyShift action_38
action_50 (52) = happyShift action_39
action_50 (5) = happyGoto action_89
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (35) = happyShift action_88
action_51 _ = happyFail (happyExpListPerState 51)

action_52 _ = happyReduce_19

action_53 _ = happyReduce_38

action_54 (7) = happyShift action_5
action_54 (8) = happyShift action_6
action_54 (9) = happyShift action_7
action_54 (10) = happyShift action_8
action_54 (11) = happyShift action_9
action_54 (12) = happyShift action_10
action_54 (13) = happyShift action_11
action_54 (14) = happyShift action_12
action_54 (15) = happyShift action_13
action_54 (17) = happyShift action_14
action_54 (18) = happyShift action_15
action_54 (19) = happyShift action_16
action_54 (20) = happyShift action_17
action_54 (21) = happyShift action_18
action_54 (22) = happyShift action_19
action_54 (23) = happyShift action_20
action_54 (25) = happyShift action_21
action_54 (28) = happyShift action_22
action_54 (32) = happyShift action_23
action_54 (33) = happyShift action_24
action_54 (34) = happyShift action_25
action_54 (37) = happyShift action_26
action_54 (38) = happyShift action_27
action_54 (39) = happyShift action_28
action_54 (40) = happyShift action_29
action_54 (41) = happyShift action_30
action_54 (42) = happyShift action_31
action_54 (43) = happyShift action_32
action_54 (44) = happyShift action_33
action_54 (45) = happyShift action_34
action_54 (46) = happyShift action_35
action_54 (47) = happyShift action_36
action_54 (49) = happyShift action_37
action_54 (50) = happyShift action_38
action_54 (52) = happyShift action_39
action_54 (5) = happyGoto action_87
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (26) = happyShift action_86
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (49) = happyShift action_85
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
action_57 (17) = happyShift action_14
action_57 (18) = happyShift action_15
action_57 (19) = happyShift action_16
action_57 (20) = happyShift action_17
action_57 (21) = happyShift action_18
action_57 (22) = happyShift action_19
action_57 (23) = happyShift action_20
action_57 (25) = happyShift action_21
action_57 (28) = happyShift action_22
action_57 (32) = happyShift action_23
action_57 (33) = happyShift action_24
action_57 (34) = happyShift action_25
action_57 (37) = happyShift action_26
action_57 (38) = happyShift action_27
action_57 (39) = happyShift action_28
action_57 (40) = happyShift action_29
action_57 (41) = happyShift action_30
action_57 (42) = happyShift action_31
action_57 (43) = happyShift action_32
action_57 (44) = happyShift action_33
action_57 (45) = happyShift action_34
action_57 (46) = happyShift action_35
action_57 (47) = happyShift action_36
action_57 (49) = happyShift action_37
action_57 (50) = happyShift action_38
action_57 (52) = happyShift action_39
action_57 (5) = happyGoto action_84
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_17

action_59 _ = happyReduce_16

action_60 (7) = happyShift action_5
action_60 (8) = happyShift action_6
action_60 (9) = happyShift action_7
action_60 (10) = happyShift action_8
action_60 (11) = happyShift action_9
action_60 (12) = happyShift action_10
action_60 (13) = happyShift action_11
action_60 (14) = happyShift action_12
action_60 (15) = happyShift action_13
action_60 (17) = happyShift action_14
action_60 (18) = happyShift action_15
action_60 (19) = happyShift action_16
action_60 (20) = happyShift action_17
action_60 (21) = happyShift action_18
action_60 (22) = happyShift action_19
action_60 (23) = happyShift action_20
action_60 (25) = happyShift action_21
action_60 (28) = happyShift action_22
action_60 (32) = happyShift action_23
action_60 (33) = happyShift action_24
action_60 (34) = happyShift action_25
action_60 (37) = happyShift action_26
action_60 (38) = happyShift action_27
action_60 (39) = happyShift action_28
action_60 (40) = happyShift action_29
action_60 (41) = happyShift action_30
action_60 (42) = happyShift action_31
action_60 (43) = happyShift action_32
action_60 (44) = happyShift action_33
action_60 (45) = happyShift action_34
action_60 (46) = happyShift action_35
action_60 (47) = happyShift action_36
action_60 (49) = happyShift action_37
action_60 (50) = happyShift action_38
action_60 (52) = happyShift action_39
action_60 (5) = happyGoto action_83
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (7) = happyShift action_5
action_61 (8) = happyShift action_6
action_61 (9) = happyShift action_7
action_61 (10) = happyShift action_8
action_61 (11) = happyShift action_9
action_61 (12) = happyShift action_10
action_61 (13) = happyShift action_11
action_61 (14) = happyShift action_12
action_61 (15) = happyShift action_13
action_61 (17) = happyShift action_14
action_61 (18) = happyShift action_15
action_61 (19) = happyShift action_16
action_61 (20) = happyShift action_17
action_61 (21) = happyShift action_18
action_61 (22) = happyShift action_19
action_61 (23) = happyShift action_20
action_61 (25) = happyShift action_21
action_61 (28) = happyShift action_22
action_61 (32) = happyShift action_23
action_61 (33) = happyShift action_24
action_61 (34) = happyShift action_25
action_61 (37) = happyShift action_26
action_61 (38) = happyShift action_27
action_61 (39) = happyShift action_28
action_61 (40) = happyShift action_29
action_61 (41) = happyShift action_30
action_61 (42) = happyShift action_31
action_61 (43) = happyShift action_32
action_61 (44) = happyShift action_33
action_61 (45) = happyShift action_34
action_61 (46) = happyShift action_35
action_61 (47) = happyShift action_36
action_61 (49) = happyShift action_37
action_61 (50) = happyShift action_38
action_61 (52) = happyShift action_39
action_61 (5) = happyGoto action_82
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
action_62 (17) = happyShift action_14
action_62 (18) = happyShift action_15
action_62 (19) = happyShift action_16
action_62 (20) = happyShift action_17
action_62 (21) = happyShift action_18
action_62 (22) = happyShift action_19
action_62 (23) = happyShift action_20
action_62 (25) = happyShift action_21
action_62 (28) = happyShift action_22
action_62 (32) = happyShift action_23
action_62 (33) = happyShift action_24
action_62 (34) = happyShift action_25
action_62 (37) = happyShift action_26
action_62 (38) = happyShift action_27
action_62 (39) = happyShift action_28
action_62 (40) = happyShift action_29
action_62 (41) = happyShift action_30
action_62 (42) = happyShift action_31
action_62 (43) = happyShift action_32
action_62 (44) = happyShift action_33
action_62 (45) = happyShift action_34
action_62 (46) = happyShift action_35
action_62 (47) = happyShift action_36
action_62 (49) = happyShift action_37
action_62 (50) = happyShift action_38
action_62 (52) = happyShift action_39
action_62 (5) = happyGoto action_81
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (16) = happyShift action_80
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_11

action_65 _ = happyReduce_10

action_66 (7) = happyShift action_5
action_66 (8) = happyShift action_6
action_66 (9) = happyShift action_7
action_66 (10) = happyShift action_8
action_66 (11) = happyShift action_9
action_66 (12) = happyShift action_10
action_66 (13) = happyShift action_11
action_66 (14) = happyShift action_12
action_66 (15) = happyShift action_13
action_66 (17) = happyShift action_14
action_66 (18) = happyShift action_15
action_66 (19) = happyShift action_16
action_66 (20) = happyShift action_17
action_66 (21) = happyShift action_18
action_66 (22) = happyShift action_19
action_66 (23) = happyShift action_20
action_66 (25) = happyShift action_21
action_66 (28) = happyShift action_22
action_66 (32) = happyShift action_23
action_66 (33) = happyShift action_24
action_66 (34) = happyShift action_25
action_66 (37) = happyShift action_26
action_66 (38) = happyShift action_27
action_66 (39) = happyShift action_28
action_66 (40) = happyShift action_29
action_66 (41) = happyShift action_30
action_66 (42) = happyShift action_31
action_66 (43) = happyShift action_32
action_66 (44) = happyShift action_33
action_66 (45) = happyShift action_34
action_66 (46) = happyShift action_35
action_66 (47) = happyShift action_36
action_66 (49) = happyShift action_37
action_66 (50) = happyShift action_38
action_66 (52) = happyShift action_39
action_66 (5) = happyGoto action_79
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_12

action_68 (7) = happyShift action_5
action_68 (8) = happyShift action_6
action_68 (9) = happyShift action_7
action_68 (10) = happyShift action_8
action_68 (11) = happyShift action_9
action_68 (12) = happyShift action_10
action_68 (13) = happyShift action_11
action_68 (14) = happyShift action_12
action_68 (15) = happyShift action_13
action_68 (17) = happyShift action_14
action_68 (18) = happyShift action_15
action_68 (19) = happyShift action_16
action_68 (20) = happyShift action_17
action_68 (21) = happyShift action_18
action_68 (22) = happyShift action_19
action_68 (23) = happyShift action_20
action_68 (25) = happyShift action_21
action_68 (28) = happyShift action_22
action_68 (32) = happyShift action_23
action_68 (33) = happyShift action_24
action_68 (34) = happyShift action_25
action_68 (37) = happyShift action_26
action_68 (38) = happyShift action_27
action_68 (39) = happyShift action_28
action_68 (40) = happyShift action_29
action_68 (41) = happyShift action_30
action_68 (42) = happyShift action_31
action_68 (43) = happyShift action_32
action_68 (44) = happyShift action_33
action_68 (45) = happyShift action_34
action_68 (46) = happyShift action_35
action_68 (47) = happyShift action_36
action_68 (49) = happyShift action_37
action_68 (50) = happyShift action_38
action_68 (52) = happyShift action_39
action_68 (5) = happyGoto action_78
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (7) = happyShift action_5
action_69 (8) = happyShift action_6
action_69 (9) = happyShift action_7
action_69 (10) = happyShift action_8
action_69 (11) = happyShift action_9
action_69 (12) = happyShift action_10
action_69 (13) = happyShift action_11
action_69 (14) = happyShift action_12
action_69 (15) = happyShift action_13
action_69 (17) = happyShift action_14
action_69 (18) = happyShift action_15
action_69 (19) = happyShift action_16
action_69 (20) = happyShift action_17
action_69 (21) = happyShift action_18
action_69 (22) = happyShift action_19
action_69 (23) = happyShift action_20
action_69 (25) = happyShift action_21
action_69 (28) = happyShift action_22
action_69 (32) = happyShift action_23
action_69 (33) = happyShift action_24
action_69 (34) = happyShift action_25
action_69 (37) = happyShift action_26
action_69 (38) = happyShift action_27
action_69 (39) = happyShift action_28
action_69 (40) = happyShift action_29
action_69 (41) = happyShift action_30
action_69 (42) = happyShift action_31
action_69 (43) = happyShift action_32
action_69 (44) = happyShift action_33
action_69 (45) = happyShift action_34
action_69 (46) = happyShift action_35
action_69 (47) = happyShift action_36
action_69 (49) = happyShift action_37
action_69 (50) = happyShift action_38
action_69 (52) = happyShift action_39
action_69 (5) = happyGoto action_77
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (7) = happyShift action_5
action_70 (8) = happyShift action_6
action_70 (9) = happyShift action_7
action_70 (10) = happyShift action_8
action_70 (11) = happyShift action_9
action_70 (12) = happyShift action_10
action_70 (13) = happyShift action_11
action_70 (14) = happyShift action_12
action_70 (15) = happyShift action_13
action_70 (17) = happyShift action_14
action_70 (18) = happyShift action_15
action_70 (19) = happyShift action_16
action_70 (20) = happyShift action_17
action_70 (21) = happyShift action_18
action_70 (22) = happyShift action_19
action_70 (23) = happyShift action_20
action_70 (25) = happyShift action_21
action_70 (28) = happyShift action_22
action_70 (32) = happyShift action_23
action_70 (33) = happyShift action_24
action_70 (34) = happyShift action_25
action_70 (37) = happyShift action_26
action_70 (38) = happyShift action_27
action_70 (39) = happyShift action_28
action_70 (40) = happyShift action_29
action_70 (41) = happyShift action_30
action_70 (42) = happyShift action_31
action_70 (43) = happyShift action_32
action_70 (44) = happyShift action_33
action_70 (45) = happyShift action_34
action_70 (46) = happyShift action_35
action_70 (47) = happyShift action_36
action_70 (49) = happyShift action_37
action_70 (50) = happyShift action_38
action_70 (52) = happyShift action_39
action_70 (5) = happyGoto action_76
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
action_71 (17) = happyShift action_14
action_71 (18) = happyShift action_15
action_71 (19) = happyShift action_16
action_71 (20) = happyShift action_17
action_71 (21) = happyShift action_18
action_71 (22) = happyShift action_19
action_71 (23) = happyShift action_20
action_71 (25) = happyShift action_21
action_71 (28) = happyShift action_22
action_71 (32) = happyShift action_23
action_71 (33) = happyShift action_24
action_71 (34) = happyShift action_25
action_71 (37) = happyShift action_26
action_71 (38) = happyShift action_27
action_71 (39) = happyShift action_28
action_71 (40) = happyShift action_29
action_71 (41) = happyShift action_30
action_71 (42) = happyShift action_31
action_71 (43) = happyShift action_32
action_71 (44) = happyShift action_33
action_71 (45) = happyShift action_34
action_71 (46) = happyShift action_35
action_71 (47) = happyShift action_36
action_71 (49) = happyShift action_37
action_71 (50) = happyShift action_38
action_71 (52) = happyShift action_39
action_71 (5) = happyGoto action_75
action_71 _ = happyFail (happyExpListPerState 71)

action_72 _ = happyReduce_2

action_73 _ = happyReduce_3

action_74 _ = happyReduce_1

action_75 _ = happyReduce_4

action_76 _ = happyReduce_5

action_77 _ = happyReduce_6

action_78 _ = happyReduce_7

action_79 _ = happyReduce_9

action_80 _ = happyReduce_28

action_81 _ = happyReduce_13

action_82 _ = happyReduce_14

action_83 _ = happyReduce_15

action_84 _ = happyReduce_37

action_85 (7) = happyShift action_5
action_85 (8) = happyShift action_6
action_85 (9) = happyShift action_7
action_85 (10) = happyShift action_8
action_85 (11) = happyShift action_9
action_85 (12) = happyShift action_10
action_85 (13) = happyShift action_11
action_85 (14) = happyShift action_12
action_85 (15) = happyShift action_13
action_85 (17) = happyShift action_14
action_85 (18) = happyShift action_15
action_85 (19) = happyShift action_16
action_85 (20) = happyShift action_17
action_85 (21) = happyShift action_18
action_85 (22) = happyShift action_19
action_85 (23) = happyShift action_20
action_85 (25) = happyShift action_21
action_85 (28) = happyShift action_22
action_85 (32) = happyShift action_23
action_85 (33) = happyShift action_24
action_85 (34) = happyShift action_25
action_85 (37) = happyShift action_26
action_85 (38) = happyShift action_27
action_85 (39) = happyShift action_28
action_85 (40) = happyShift action_29
action_85 (41) = happyShift action_30
action_85 (42) = happyShift action_31
action_85 (43) = happyShift action_32
action_85 (44) = happyShift action_33
action_85 (45) = happyShift action_34
action_85 (46) = happyShift action_35
action_85 (47) = happyShift action_36
action_85 (49) = happyShift action_37
action_85 (50) = happyShift action_38
action_85 (52) = happyShift action_39
action_85 (5) = happyGoto action_103
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (7) = happyShift action_5
action_86 (8) = happyShift action_6
action_86 (9) = happyShift action_7
action_86 (10) = happyShift action_8
action_86 (11) = happyShift action_9
action_86 (12) = happyShift action_10
action_86 (13) = happyShift action_11
action_86 (14) = happyShift action_12
action_86 (15) = happyShift action_13
action_86 (17) = happyShift action_14
action_86 (18) = happyShift action_15
action_86 (19) = happyShift action_16
action_86 (20) = happyShift action_17
action_86 (21) = happyShift action_18
action_86 (22) = happyShift action_19
action_86 (23) = happyShift action_20
action_86 (25) = happyShift action_21
action_86 (28) = happyShift action_22
action_86 (29) = happyShift action_2
action_86 (32) = happyShift action_23
action_86 (33) = happyShift action_24
action_86 (34) = happyShift action_25
action_86 (37) = happyShift action_26
action_86 (38) = happyShift action_27
action_86 (39) = happyShift action_28
action_86 (40) = happyShift action_29
action_86 (41) = happyShift action_30
action_86 (42) = happyShift action_31
action_86 (43) = happyShift action_32
action_86 (44) = happyShift action_33
action_86 (45) = happyShift action_34
action_86 (46) = happyShift action_35
action_86 (47) = happyShift action_36
action_86 (49) = happyShift action_37
action_86 (50) = happyShift action_38
action_86 (52) = happyShift action_39
action_86 (4) = happyGoto action_102
action_86 (5) = happyGoto action_4
action_86 _ = happyFail (happyExpListPerState 86)

action_87 _ = happyReduce_18

action_88 (7) = happyShift action_5
action_88 (8) = happyShift action_6
action_88 (9) = happyShift action_7
action_88 (10) = happyShift action_8
action_88 (11) = happyShift action_9
action_88 (12) = happyShift action_10
action_88 (13) = happyShift action_11
action_88 (14) = happyShift action_12
action_88 (15) = happyShift action_13
action_88 (17) = happyShift action_14
action_88 (18) = happyShift action_15
action_88 (19) = happyShift action_16
action_88 (20) = happyShift action_17
action_88 (21) = happyShift action_18
action_88 (22) = happyShift action_19
action_88 (23) = happyShift action_20
action_88 (25) = happyShift action_21
action_88 (28) = happyShift action_22
action_88 (29) = happyShift action_2
action_88 (32) = happyShift action_23
action_88 (33) = happyShift action_24
action_88 (34) = happyShift action_25
action_88 (37) = happyShift action_26
action_88 (38) = happyShift action_27
action_88 (39) = happyShift action_28
action_88 (40) = happyShift action_29
action_88 (41) = happyShift action_30
action_88 (42) = happyShift action_31
action_88 (43) = happyShift action_32
action_88 (44) = happyShift action_33
action_88 (45) = happyShift action_34
action_88 (46) = happyShift action_35
action_88 (47) = happyShift action_36
action_88 (49) = happyShift action_37
action_88 (50) = happyShift action_38
action_88 (52) = happyShift action_39
action_88 (4) = happyGoto action_101
action_88 (5) = happyGoto action_4
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_8

action_90 (7) = happyShift action_5
action_90 (8) = happyShift action_6
action_90 (9) = happyShift action_7
action_90 (10) = happyShift action_8
action_90 (11) = happyShift action_9
action_90 (12) = happyShift action_10
action_90 (13) = happyShift action_11
action_90 (14) = happyShift action_12
action_90 (15) = happyShift action_13
action_90 (17) = happyShift action_14
action_90 (18) = happyShift action_15
action_90 (19) = happyShift action_16
action_90 (20) = happyShift action_17
action_90 (21) = happyShift action_18
action_90 (22) = happyShift action_19
action_90 (23) = happyShift action_20
action_90 (25) = happyShift action_21
action_90 (28) = happyShift action_22
action_90 (32) = happyShift action_23
action_90 (33) = happyShift action_24
action_90 (34) = happyShift action_25
action_90 (37) = happyShift action_26
action_90 (38) = happyShift action_27
action_90 (39) = happyShift action_28
action_90 (40) = happyShift action_29
action_90 (41) = happyShift action_30
action_90 (42) = happyShift action_31
action_90 (43) = happyShift action_32
action_90 (44) = happyShift action_33
action_90 (45) = happyShift action_34
action_90 (46) = happyShift action_35
action_90 (47) = happyShift action_36
action_90 (49) = happyShift action_37
action_90 (50) = happyShift action_38
action_90 (52) = happyShift action_39
action_90 (5) = happyGoto action_100
action_90 _ = happyFail (happyExpListPerState 90)

action_91 _ = happyReduce_21

action_92 _ = happyReduce_22

action_93 _ = happyReduce_23

action_94 _ = happyReduce_24

action_95 _ = happyReduce_25

action_96 _ = happyReduce_26

action_97 (50) = happyShift action_99
action_97 _ = happyFail (happyExpListPerState 97)

action_98 _ = happyReduce_39

action_99 _ = happyReduce_42

action_100 _ = happyReduce_20

action_101 (36) = happyShift action_106
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (27) = happyShift action_105
action_102 _ = happyReduce_34

action_103 (24) = happyShift action_104
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (7) = happyShift action_5
action_104 (8) = happyShift action_6
action_104 (9) = happyShift action_7
action_104 (10) = happyShift action_8
action_104 (11) = happyShift action_9
action_104 (12) = happyShift action_10
action_104 (13) = happyShift action_11
action_104 (14) = happyShift action_12
action_104 (15) = happyShift action_13
action_104 (17) = happyShift action_14
action_104 (18) = happyShift action_15
action_104 (19) = happyShift action_16
action_104 (20) = happyShift action_17
action_104 (21) = happyShift action_18
action_104 (22) = happyShift action_19
action_104 (23) = happyShift action_20
action_104 (25) = happyShift action_21
action_104 (28) = happyShift action_22
action_104 (29) = happyShift action_2
action_104 (32) = happyShift action_23
action_104 (33) = happyShift action_24
action_104 (34) = happyShift action_25
action_104 (37) = happyShift action_26
action_104 (38) = happyShift action_27
action_104 (39) = happyShift action_28
action_104 (40) = happyShift action_29
action_104 (41) = happyShift action_30
action_104 (42) = happyShift action_31
action_104 (43) = happyShift action_32
action_104 (44) = happyShift action_33
action_104 (45) = happyShift action_34
action_104 (46) = happyShift action_35
action_104 (47) = happyShift action_36
action_104 (49) = happyShift action_37
action_104 (50) = happyShift action_38
action_104 (52) = happyShift action_39
action_104 (4) = happyGoto action_108
action_104 (5) = happyGoto action_4
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (7) = happyShift action_5
action_105 (8) = happyShift action_6
action_105 (9) = happyShift action_7
action_105 (10) = happyShift action_8
action_105 (11) = happyShift action_9
action_105 (12) = happyShift action_10
action_105 (13) = happyShift action_11
action_105 (14) = happyShift action_12
action_105 (15) = happyShift action_13
action_105 (17) = happyShift action_14
action_105 (18) = happyShift action_15
action_105 (19) = happyShift action_16
action_105 (20) = happyShift action_17
action_105 (21) = happyShift action_18
action_105 (22) = happyShift action_19
action_105 (23) = happyShift action_20
action_105 (25) = happyShift action_21
action_105 (28) = happyShift action_22
action_105 (29) = happyShift action_2
action_105 (32) = happyShift action_23
action_105 (33) = happyShift action_24
action_105 (34) = happyShift action_25
action_105 (37) = happyShift action_26
action_105 (38) = happyShift action_27
action_105 (39) = happyShift action_28
action_105 (40) = happyShift action_29
action_105 (41) = happyShift action_30
action_105 (42) = happyShift action_31
action_105 (43) = happyShift action_32
action_105 (44) = happyShift action_33
action_105 (45) = happyShift action_34
action_105 (46) = happyShift action_35
action_105 (47) = happyShift action_36
action_105 (49) = happyShift action_37
action_105 (50) = happyShift action_38
action_105 (52) = happyShift action_39
action_105 (4) = happyGoto action_107
action_105 (5) = happyGoto action_4
action_105 _ = happyFail (happyExpListPerState 105)

action_106 _ = happyReduce_35

action_107 _ = happyReduce_33

action_108 _ = happyReduce_36

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
		 (Power happy_var_2 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  5 happyReduction_9
happyReduction_9 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Get happy_var_2 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  5 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Head happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  5 happyReduction_11
happyReduction_11 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Last happy_var_2
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  5 happyReduction_12
happyReduction_12 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Sum happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  5 happyReduction_13
happyReduction_13 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (AddLst happy_var_2 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  5 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (AddFst happy_var_2 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  5 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Remove happy_var_2 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  5 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Init happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  5 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Tail happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  5 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Concat happy_var_2 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_2  5 happyReduction_19
happyReduction_19 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Revert happy_var_2
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happyReduce 4 5 happyReduction_20
happyReduction_20 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (GetXY happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_21 = happySpecReduce_3  5 happyReduction_21
happyReduction_21 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Less happy_var_2 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  5 happyReduction_22
happyReduction_22 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (LessEq happy_var_2 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  5 happyReduction_23
happyReduction_23 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Greater happy_var_2 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  5 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (GreaterEq happy_var_2 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  5 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Eq happy_var_2 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  5 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (NotEq happy_var_2 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  5 happyReduction_27
happyReduction_27 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Not happy_var_2
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  5 happyReduction_28
happyReduction_28 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Br happy_var_2
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  5 happyReduction_29
happyReduction_29 (HappyTerminal (TokenInt _  happy_var_1))
	 =  HappyAbsSyn5
		 (Nr happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  5 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn5
		 (Logic True
	)

happyReduce_31 = happySpecReduce_1  5 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn5
		 (Logic False
	)

happyReduce_32 = happySpecReduce_1  5 happyReduction_32
happyReduction_32 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn5
		 (Var happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happyReduce 6 5 happyReduction_33
happyReduction_33 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (IfThenElse happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 4 5 happyReduction_34
happyReduction_34 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (IfThen happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_35 = happyReduce 5 5 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_36 = happyReduce 6 5 happyReduction_36
happyReduction_36 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Let happy_var_3 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_37 = happySpecReduce_3  5 happyReduction_37
happyReduction_37 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn5
		 (Assign happy_var_2 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_2  5 happyReduction_38
happyReduction_38 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Write happy_var_2
	)
happyReduction_38 _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  5 happyReduction_39
happyReduction_39 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Arr happy_var_2
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_0  6 happyReduction_40
happyReduction_40  =  HappyAbsSyn6
		 ([]
	)

happyReduce_41 = happySpecReduce_1  6 happyReduction_41
happyReduction_41 (HappyTerminal (TokenInt _  happy_var_1))
	 =  HappyAbsSyn6
		 ([happy_var_1]
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  6 happyReduction_42
happyReduction_42 (HappyTerminal (TokenInt _  happy_var_3))
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_3 : happy_var_1
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 54 54 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenPlus _ -> cont 7;
	TokenMinus _ -> cont 8;
	TokenTimes _ -> cont 9;
	TokenDiv _ -> cont 10;
	TokenSum _ -> cont 11;
	TokenGet _ -> cont 12;
	TokenHead _ -> cont 13;
	TokenLast _ -> cont 14;
	TokenLParen _ -> cont 15;
	TokenRParen _ -> cont 16;
	TokenAddEnd _ -> cont 17;
	TokenAddFront _ -> cont 18;
	TokenRemove _ -> cont 19;
	TokenInit _ -> cont 20;
	TokenTail _ -> cont 21;
	TokenEq _ -> cont 22;
	TokenLet _ -> cont 23;
	TokenIn _ -> cont 24;
	TokenIf _ -> cont 25;
	TokenThen _ -> cont 26;
	TokenElse _ -> cont 27;
	TokenConcat _ -> cont 28;
	TokenBegin _ -> cont 29;
	TokenEnd _ -> cont 30;
	TokenRead _ -> cont 31;
	TokenWrite _ -> cont 32;
	TokenRevert _ -> cont 33;
	TokenWhile _ -> cont 34;
	TokenDo _ -> cont 35;
	TokenEndWhile _ -> cont 36;
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
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 54 tk tks = happyError' (tks, explist)
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
          | Power Expr Expr
          | Get Expr Expr
          | Head Expr
          | Last Expr
          | Sum Expr
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
          deriving (Show,Eq)

-- data Variable = VarInt String
--               | VarArr String
--               | VarBool String
--               deriving (Show,Eq)

data Body = Begin Body
          | Multi Expr Body
          | Single Expr
          deriving (Show,Eq)



-- data IntExpr = Plus IntExpr IntExpr
--           | Minus IntExpr IntExpr
--           | Times IntExpr IntExpr
--           | Div IntExpr IntExpr
--           | Power IntExpr IntExpr
--           | Get IntExpr ArrExpr
--           | Head ArrExpr
--           | Last ArrExpr
--           | Nr Int
--           | Br IntExpr
--           deriving (Show,Eq)
--
-- data ArrExpr = Sum ArrExpr
--           | AddLst IntExpr ArrExpr
--           | AddFst IntExpr ArrExpr
--           | Remove IntExpr ArrExpr
--           | Init ArrExpr
--           | Tail ArrExpr
--           | Concat ArrExpr ArrExpr
--           | Revert ArrExpr
--           | GetXY IntExpr IntExpr ArrExpr
--           deriving (Show,Eq)
--
-- data BoolExpr = Less IntExpr IntExpr
--           | LessEq IntExpr IntExpr
--           | Greater IntExpr IntExpr
--           | GreaterEq IntExpr IntExpr
--           | Eq IntExpr IntExpr
--           | NotEq IntExpr IntExpr
--           | Not BoolExpr
--           deriving (Show,Eq)
--
-- data Expr = IntExpr | ArrExpr | BoolExpr | Var deriving (Show,Eq)
--
-- data Act =  IfThenElse BoolExpr Body Body
--           | IfThen BoolExpr Body
--           | While BoolExpr Body
--           | Let Var Expr Body
--           | Assign Var Expr
--           | Write Expr
--           deriving (Show,Eq)
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
