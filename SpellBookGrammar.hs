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
happyExpList = Happy_Data_Array.listArray (0,254) ([32704,35199,65267,16399,0,0,0,32704,35199,65267,15,0,0,0,0,0,0,49152,32639,62345,4094,32704,35199,65267,49167,32639,62345,4094,32704,35199,65267,49167,32639,62345,4094,32704,35199,65267,49167,32639,62345,4094,32704,35199,65267,49167,32639,62345,4094,32704,35199,65267,49167,32639,62345,4094,32704,35199,65267,49167,32639,62345,4094,0,0,3584,0,8192,0,0,32704,35199,65267,49167,32639,62345,4094,32704,35199,65267,49167,32639,62345,4094,32704,35199,65267,49167,32639,62345,4094,32704,35199,65267,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49152,32639,62345,4094,32704,35199,65267,49167,32639,62345,4094,32704,35199,65267,49167,32639,62345,4094,32704,35199,65267,49167,32639,62345,4094,32704,35199,65267,15,0,0,0,32704,35199,65267,49167,32639,62345,4094,32704,35199,65267,49167,32639,62345,4094,32704,35199,65267,49167,32639,62345,4094,32704,35199,65267,15,0,1024,0,0,0,0,0,0,0,0,32704,35199,65267,15,0,2,0,0,0,3584,49152,32639,62345,4094,0,0,0,0,0,0,0,32704,35199,65267,49167,32639,62345,4094,32704,35199,65267,15,128,0,0,0,0,0,0,0,0,0,32704,35199,65267,15,0,0,0,32704,35199,65267,49167,32639,62345,4094,32704,35199,65267,49167,32639,62345,4094,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32704,35199,65267,49167,32639,62361,4094,0,0,0,49152,32639,62361,4094,0,0,0,49152,32639,62345,4094,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,4096,0,0,8,49152,32639,62361,4094,0,1024,0,0,32768,0,0,32704,39295,65267,49167,32639,62361,4094,0,0,0,0,0,0,0,0,0,0,49152,32639,62361,4094,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Expr","Var","Body","Engorgio","Reducio","Geminio","Diminuando","Ferula","Accio","Ascendio","PrioriIncantatem","'('","')'","Depulso","Flipendo","Expelliarmus","Ventus","Obliviate","Fidelius","Appare","Vestigium","Confundo","Incendio","Aguamenti","Epoximise","Alohomora","Colloportus","Legilimens","Flagrate","EverteStatum","WingardiumLeviosa","Imperio","FiniteIncantatem","AlarteAscendere","Confringo","lumos","nox","Apparate","horcruxInt","horcruxArr","horcruxBool","int","Entomorphis","CarpeRetractum","Defodio","Deprimo","Caterwauling","Crucio","Impedimenta","newLine","'-'","','","%eof"]
        bit_start = st * 56
        bit_end = (st + 1) * 56
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..55]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (7) = happyShift action_2
action_0 (8) = happyShift action_5
action_0 (9) = happyShift action_6
action_0 (10) = happyShift action_7
action_0 (11) = happyShift action_8
action_0 (12) = happyShift action_9
action_0 (13) = happyShift action_10
action_0 (14) = happyShift action_11
action_0 (15) = happyShift action_12
action_0 (17) = happyShift action_13
action_0 (18) = happyShift action_14
action_0 (19) = happyShift action_15
action_0 (20) = happyShift action_16
action_0 (21) = happyShift action_17
action_0 (22) = happyShift action_18
action_0 (23) = happyShift action_19
action_0 (25) = happyShift action_20
action_0 (28) = happyShift action_21
action_0 (32) = happyShift action_22
action_0 (33) = happyShift action_23
action_0 (34) = happyShift action_24
action_0 (37) = happyShift action_25
action_0 (38) = happyShift action_26
action_0 (39) = happyShift action_27
action_0 (40) = happyShift action_28
action_0 (42) = happyShift action_29
action_0 (43) = happyShift action_30
action_0 (44) = happyShift action_31
action_0 (45) = happyShift action_32
action_0 (46) = happyShift action_33
action_0 (47) = happyShift action_34
action_0 (48) = happyShift action_35
action_0 (49) = happyShift action_36
action_0 (50) = happyShift action_37
action_0 (51) = happyShift action_38
action_0 (52) = happyShift action_39
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (7) = happyShift action_2
action_2 (8) = happyShift action_5
action_2 (9) = happyShift action_6
action_2 (10) = happyShift action_7
action_2 (11) = happyShift action_8
action_2 (12) = happyShift action_9
action_2 (13) = happyShift action_10
action_2 (14) = happyShift action_11
action_2 (15) = happyShift action_12
action_2 (17) = happyShift action_13
action_2 (18) = happyShift action_14
action_2 (19) = happyShift action_15
action_2 (20) = happyShift action_16
action_2 (21) = happyShift action_17
action_2 (22) = happyShift action_18
action_2 (23) = happyShift action_19
action_2 (25) = happyShift action_20
action_2 (28) = happyShift action_21
action_2 (32) = happyShift action_22
action_2 (33) = happyShift action_23
action_2 (34) = happyShift action_24
action_2 (37) = happyShift action_25
action_2 (38) = happyShift action_26
action_2 (39) = happyShift action_27
action_2 (40) = happyShift action_28
action_2 (42) = happyShift action_29
action_2 (43) = happyShift action_30
action_2 (44) = happyShift action_31
action_2 (45) = happyShift action_32
action_2 (46) = happyShift action_33
action_2 (47) = happyShift action_34
action_2 (48) = happyShift action_35
action_2 (49) = happyShift action_36
action_2 (50) = happyShift action_37
action_2 (51) = happyShift action_38
action_2 (52) = happyShift action_39
action_2 (4) = happyGoto action_69
action_2 (5) = happyGoto action_4
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (56) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_29

action_5 (7) = happyShift action_2
action_5 (8) = happyShift action_5
action_5 (9) = happyShift action_6
action_5 (10) = happyShift action_7
action_5 (11) = happyShift action_8
action_5 (12) = happyShift action_9
action_5 (13) = happyShift action_10
action_5 (14) = happyShift action_11
action_5 (15) = happyShift action_12
action_5 (17) = happyShift action_13
action_5 (18) = happyShift action_14
action_5 (19) = happyShift action_15
action_5 (20) = happyShift action_16
action_5 (21) = happyShift action_17
action_5 (22) = happyShift action_18
action_5 (23) = happyShift action_19
action_5 (25) = happyShift action_20
action_5 (28) = happyShift action_21
action_5 (32) = happyShift action_22
action_5 (33) = happyShift action_23
action_5 (34) = happyShift action_24
action_5 (37) = happyShift action_25
action_5 (38) = happyShift action_26
action_5 (39) = happyShift action_27
action_5 (40) = happyShift action_28
action_5 (42) = happyShift action_29
action_5 (43) = happyShift action_30
action_5 (44) = happyShift action_31
action_5 (45) = happyShift action_32
action_5 (46) = happyShift action_33
action_5 (47) = happyShift action_34
action_5 (48) = happyShift action_35
action_5 (49) = happyShift action_36
action_5 (50) = happyShift action_37
action_5 (51) = happyShift action_38
action_5 (52) = happyShift action_39
action_5 (4) = happyGoto action_68
action_5 (5) = happyGoto action_4
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (7) = happyShift action_2
action_6 (8) = happyShift action_5
action_6 (9) = happyShift action_6
action_6 (10) = happyShift action_7
action_6 (11) = happyShift action_8
action_6 (12) = happyShift action_9
action_6 (13) = happyShift action_10
action_6 (14) = happyShift action_11
action_6 (15) = happyShift action_12
action_6 (17) = happyShift action_13
action_6 (18) = happyShift action_14
action_6 (19) = happyShift action_15
action_6 (20) = happyShift action_16
action_6 (21) = happyShift action_17
action_6 (22) = happyShift action_18
action_6 (23) = happyShift action_19
action_6 (25) = happyShift action_20
action_6 (28) = happyShift action_21
action_6 (32) = happyShift action_22
action_6 (33) = happyShift action_23
action_6 (34) = happyShift action_24
action_6 (37) = happyShift action_25
action_6 (38) = happyShift action_26
action_6 (39) = happyShift action_27
action_6 (40) = happyShift action_28
action_6 (42) = happyShift action_29
action_6 (43) = happyShift action_30
action_6 (44) = happyShift action_31
action_6 (45) = happyShift action_32
action_6 (46) = happyShift action_33
action_6 (47) = happyShift action_34
action_6 (48) = happyShift action_35
action_6 (49) = happyShift action_36
action_6 (50) = happyShift action_37
action_6 (51) = happyShift action_38
action_6 (52) = happyShift action_39
action_6 (4) = happyGoto action_67
action_6 (5) = happyGoto action_4
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (7) = happyShift action_2
action_7 (8) = happyShift action_5
action_7 (9) = happyShift action_6
action_7 (10) = happyShift action_7
action_7 (11) = happyShift action_8
action_7 (12) = happyShift action_9
action_7 (13) = happyShift action_10
action_7 (14) = happyShift action_11
action_7 (15) = happyShift action_12
action_7 (17) = happyShift action_13
action_7 (18) = happyShift action_14
action_7 (19) = happyShift action_15
action_7 (20) = happyShift action_16
action_7 (21) = happyShift action_17
action_7 (22) = happyShift action_18
action_7 (23) = happyShift action_19
action_7 (25) = happyShift action_20
action_7 (28) = happyShift action_21
action_7 (32) = happyShift action_22
action_7 (33) = happyShift action_23
action_7 (34) = happyShift action_24
action_7 (37) = happyShift action_25
action_7 (38) = happyShift action_26
action_7 (39) = happyShift action_27
action_7 (40) = happyShift action_28
action_7 (42) = happyShift action_29
action_7 (43) = happyShift action_30
action_7 (44) = happyShift action_31
action_7 (45) = happyShift action_32
action_7 (46) = happyShift action_33
action_7 (47) = happyShift action_34
action_7 (48) = happyShift action_35
action_7 (49) = happyShift action_36
action_7 (50) = happyShift action_37
action_7 (51) = happyShift action_38
action_7 (52) = happyShift action_39
action_7 (4) = happyGoto action_66
action_7 (5) = happyGoto action_4
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (7) = happyShift action_2
action_8 (8) = happyShift action_5
action_8 (9) = happyShift action_6
action_8 (10) = happyShift action_7
action_8 (11) = happyShift action_8
action_8 (12) = happyShift action_9
action_8 (13) = happyShift action_10
action_8 (14) = happyShift action_11
action_8 (15) = happyShift action_12
action_8 (17) = happyShift action_13
action_8 (18) = happyShift action_14
action_8 (19) = happyShift action_15
action_8 (20) = happyShift action_16
action_8 (21) = happyShift action_17
action_8 (22) = happyShift action_18
action_8 (23) = happyShift action_19
action_8 (25) = happyShift action_20
action_8 (28) = happyShift action_21
action_8 (32) = happyShift action_22
action_8 (33) = happyShift action_23
action_8 (34) = happyShift action_24
action_8 (37) = happyShift action_25
action_8 (38) = happyShift action_26
action_8 (39) = happyShift action_27
action_8 (40) = happyShift action_28
action_8 (42) = happyShift action_29
action_8 (43) = happyShift action_30
action_8 (44) = happyShift action_31
action_8 (45) = happyShift action_32
action_8 (46) = happyShift action_33
action_8 (47) = happyShift action_34
action_8 (48) = happyShift action_35
action_8 (49) = happyShift action_36
action_8 (50) = happyShift action_37
action_8 (51) = happyShift action_38
action_8 (52) = happyShift action_39
action_8 (4) = happyGoto action_65
action_8 (5) = happyGoto action_4
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (7) = happyShift action_2
action_9 (8) = happyShift action_5
action_9 (9) = happyShift action_6
action_9 (10) = happyShift action_7
action_9 (11) = happyShift action_8
action_9 (12) = happyShift action_9
action_9 (13) = happyShift action_10
action_9 (14) = happyShift action_11
action_9 (15) = happyShift action_12
action_9 (17) = happyShift action_13
action_9 (18) = happyShift action_14
action_9 (19) = happyShift action_15
action_9 (20) = happyShift action_16
action_9 (21) = happyShift action_17
action_9 (22) = happyShift action_18
action_9 (23) = happyShift action_19
action_9 (25) = happyShift action_20
action_9 (28) = happyShift action_21
action_9 (32) = happyShift action_22
action_9 (33) = happyShift action_23
action_9 (34) = happyShift action_24
action_9 (37) = happyShift action_25
action_9 (38) = happyShift action_26
action_9 (39) = happyShift action_27
action_9 (40) = happyShift action_28
action_9 (42) = happyShift action_29
action_9 (43) = happyShift action_30
action_9 (44) = happyShift action_31
action_9 (45) = happyShift action_32
action_9 (46) = happyShift action_33
action_9 (47) = happyShift action_34
action_9 (48) = happyShift action_35
action_9 (49) = happyShift action_36
action_9 (50) = happyShift action_37
action_9 (51) = happyShift action_38
action_9 (52) = happyShift action_39
action_9 (4) = happyGoto action_64
action_9 (5) = happyGoto action_4
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (7) = happyShift action_2
action_10 (8) = happyShift action_5
action_10 (9) = happyShift action_6
action_10 (10) = happyShift action_7
action_10 (11) = happyShift action_8
action_10 (12) = happyShift action_9
action_10 (13) = happyShift action_10
action_10 (14) = happyShift action_11
action_10 (15) = happyShift action_12
action_10 (17) = happyShift action_13
action_10 (18) = happyShift action_14
action_10 (19) = happyShift action_15
action_10 (20) = happyShift action_16
action_10 (21) = happyShift action_17
action_10 (22) = happyShift action_18
action_10 (23) = happyShift action_19
action_10 (25) = happyShift action_20
action_10 (28) = happyShift action_21
action_10 (32) = happyShift action_22
action_10 (33) = happyShift action_23
action_10 (34) = happyShift action_24
action_10 (37) = happyShift action_25
action_10 (38) = happyShift action_26
action_10 (39) = happyShift action_27
action_10 (40) = happyShift action_28
action_10 (42) = happyShift action_29
action_10 (43) = happyShift action_30
action_10 (44) = happyShift action_31
action_10 (45) = happyShift action_32
action_10 (46) = happyShift action_33
action_10 (47) = happyShift action_34
action_10 (48) = happyShift action_35
action_10 (49) = happyShift action_36
action_10 (50) = happyShift action_37
action_10 (51) = happyShift action_38
action_10 (52) = happyShift action_39
action_10 (4) = happyGoto action_63
action_10 (5) = happyGoto action_4
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (7) = happyShift action_2
action_11 (8) = happyShift action_5
action_11 (9) = happyShift action_6
action_11 (10) = happyShift action_7
action_11 (11) = happyShift action_8
action_11 (12) = happyShift action_9
action_11 (13) = happyShift action_10
action_11 (14) = happyShift action_11
action_11 (15) = happyShift action_12
action_11 (17) = happyShift action_13
action_11 (18) = happyShift action_14
action_11 (19) = happyShift action_15
action_11 (20) = happyShift action_16
action_11 (21) = happyShift action_17
action_11 (22) = happyShift action_18
action_11 (23) = happyShift action_19
action_11 (25) = happyShift action_20
action_11 (28) = happyShift action_21
action_11 (32) = happyShift action_22
action_11 (33) = happyShift action_23
action_11 (34) = happyShift action_24
action_11 (37) = happyShift action_25
action_11 (38) = happyShift action_26
action_11 (39) = happyShift action_27
action_11 (40) = happyShift action_28
action_11 (42) = happyShift action_29
action_11 (43) = happyShift action_30
action_11 (44) = happyShift action_31
action_11 (45) = happyShift action_32
action_11 (46) = happyShift action_33
action_11 (47) = happyShift action_34
action_11 (48) = happyShift action_35
action_11 (49) = happyShift action_36
action_11 (50) = happyShift action_37
action_11 (51) = happyShift action_38
action_11 (52) = happyShift action_39
action_11 (4) = happyGoto action_62
action_11 (5) = happyGoto action_4
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (7) = happyShift action_2
action_12 (8) = happyShift action_5
action_12 (9) = happyShift action_6
action_12 (10) = happyShift action_7
action_12 (11) = happyShift action_8
action_12 (12) = happyShift action_9
action_12 (13) = happyShift action_10
action_12 (14) = happyShift action_11
action_12 (15) = happyShift action_12
action_12 (17) = happyShift action_13
action_12 (18) = happyShift action_14
action_12 (19) = happyShift action_15
action_12 (20) = happyShift action_16
action_12 (21) = happyShift action_17
action_12 (22) = happyShift action_18
action_12 (23) = happyShift action_19
action_12 (25) = happyShift action_20
action_12 (28) = happyShift action_21
action_12 (32) = happyShift action_22
action_12 (33) = happyShift action_23
action_12 (34) = happyShift action_24
action_12 (37) = happyShift action_25
action_12 (38) = happyShift action_26
action_12 (39) = happyShift action_27
action_12 (40) = happyShift action_28
action_12 (42) = happyShift action_29
action_12 (43) = happyShift action_30
action_12 (44) = happyShift action_31
action_12 (45) = happyShift action_32
action_12 (46) = happyShift action_33
action_12 (47) = happyShift action_34
action_12 (48) = happyShift action_35
action_12 (49) = happyShift action_36
action_12 (50) = happyShift action_37
action_12 (51) = happyShift action_38
action_12 (52) = happyShift action_39
action_12 (4) = happyGoto action_61
action_12 (5) = happyGoto action_4
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (7) = happyShift action_2
action_13 (8) = happyShift action_5
action_13 (9) = happyShift action_6
action_13 (10) = happyShift action_7
action_13 (11) = happyShift action_8
action_13 (12) = happyShift action_9
action_13 (13) = happyShift action_10
action_13 (14) = happyShift action_11
action_13 (15) = happyShift action_12
action_13 (17) = happyShift action_13
action_13 (18) = happyShift action_14
action_13 (19) = happyShift action_15
action_13 (20) = happyShift action_16
action_13 (21) = happyShift action_17
action_13 (22) = happyShift action_18
action_13 (23) = happyShift action_19
action_13 (25) = happyShift action_20
action_13 (28) = happyShift action_21
action_13 (32) = happyShift action_22
action_13 (33) = happyShift action_23
action_13 (34) = happyShift action_24
action_13 (37) = happyShift action_25
action_13 (38) = happyShift action_26
action_13 (39) = happyShift action_27
action_13 (40) = happyShift action_28
action_13 (42) = happyShift action_29
action_13 (43) = happyShift action_30
action_13 (44) = happyShift action_31
action_13 (45) = happyShift action_32
action_13 (46) = happyShift action_33
action_13 (47) = happyShift action_34
action_13 (48) = happyShift action_35
action_13 (49) = happyShift action_36
action_13 (50) = happyShift action_37
action_13 (51) = happyShift action_38
action_13 (52) = happyShift action_39
action_13 (4) = happyGoto action_60
action_13 (5) = happyGoto action_4
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (7) = happyShift action_2
action_14 (8) = happyShift action_5
action_14 (9) = happyShift action_6
action_14 (10) = happyShift action_7
action_14 (11) = happyShift action_8
action_14 (12) = happyShift action_9
action_14 (13) = happyShift action_10
action_14 (14) = happyShift action_11
action_14 (15) = happyShift action_12
action_14 (17) = happyShift action_13
action_14 (18) = happyShift action_14
action_14 (19) = happyShift action_15
action_14 (20) = happyShift action_16
action_14 (21) = happyShift action_17
action_14 (22) = happyShift action_18
action_14 (23) = happyShift action_19
action_14 (25) = happyShift action_20
action_14 (28) = happyShift action_21
action_14 (32) = happyShift action_22
action_14 (33) = happyShift action_23
action_14 (34) = happyShift action_24
action_14 (37) = happyShift action_25
action_14 (38) = happyShift action_26
action_14 (39) = happyShift action_27
action_14 (40) = happyShift action_28
action_14 (42) = happyShift action_29
action_14 (43) = happyShift action_30
action_14 (44) = happyShift action_31
action_14 (45) = happyShift action_32
action_14 (46) = happyShift action_33
action_14 (47) = happyShift action_34
action_14 (48) = happyShift action_35
action_14 (49) = happyShift action_36
action_14 (50) = happyShift action_37
action_14 (51) = happyShift action_38
action_14 (52) = happyShift action_39
action_14 (4) = happyGoto action_59
action_14 (5) = happyGoto action_4
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (7) = happyShift action_2
action_15 (8) = happyShift action_5
action_15 (9) = happyShift action_6
action_15 (10) = happyShift action_7
action_15 (11) = happyShift action_8
action_15 (12) = happyShift action_9
action_15 (13) = happyShift action_10
action_15 (14) = happyShift action_11
action_15 (15) = happyShift action_12
action_15 (17) = happyShift action_13
action_15 (18) = happyShift action_14
action_15 (19) = happyShift action_15
action_15 (20) = happyShift action_16
action_15 (21) = happyShift action_17
action_15 (22) = happyShift action_18
action_15 (23) = happyShift action_19
action_15 (25) = happyShift action_20
action_15 (28) = happyShift action_21
action_15 (32) = happyShift action_22
action_15 (33) = happyShift action_23
action_15 (34) = happyShift action_24
action_15 (37) = happyShift action_25
action_15 (38) = happyShift action_26
action_15 (39) = happyShift action_27
action_15 (40) = happyShift action_28
action_15 (42) = happyShift action_29
action_15 (43) = happyShift action_30
action_15 (44) = happyShift action_31
action_15 (45) = happyShift action_32
action_15 (46) = happyShift action_33
action_15 (47) = happyShift action_34
action_15 (48) = happyShift action_35
action_15 (49) = happyShift action_36
action_15 (50) = happyShift action_37
action_15 (51) = happyShift action_38
action_15 (52) = happyShift action_39
action_15 (4) = happyGoto action_58
action_15 (5) = happyGoto action_4
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (7) = happyShift action_2
action_16 (8) = happyShift action_5
action_16 (9) = happyShift action_6
action_16 (10) = happyShift action_7
action_16 (11) = happyShift action_8
action_16 (12) = happyShift action_9
action_16 (13) = happyShift action_10
action_16 (14) = happyShift action_11
action_16 (15) = happyShift action_12
action_16 (17) = happyShift action_13
action_16 (18) = happyShift action_14
action_16 (19) = happyShift action_15
action_16 (20) = happyShift action_16
action_16 (21) = happyShift action_17
action_16 (22) = happyShift action_18
action_16 (23) = happyShift action_19
action_16 (25) = happyShift action_20
action_16 (28) = happyShift action_21
action_16 (32) = happyShift action_22
action_16 (33) = happyShift action_23
action_16 (34) = happyShift action_24
action_16 (37) = happyShift action_25
action_16 (38) = happyShift action_26
action_16 (39) = happyShift action_27
action_16 (40) = happyShift action_28
action_16 (42) = happyShift action_29
action_16 (43) = happyShift action_30
action_16 (44) = happyShift action_31
action_16 (45) = happyShift action_32
action_16 (46) = happyShift action_33
action_16 (47) = happyShift action_34
action_16 (48) = happyShift action_35
action_16 (49) = happyShift action_36
action_16 (50) = happyShift action_37
action_16 (51) = happyShift action_38
action_16 (52) = happyShift action_39
action_16 (4) = happyGoto action_57
action_16 (5) = happyGoto action_4
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (7) = happyShift action_2
action_17 (8) = happyShift action_5
action_17 (9) = happyShift action_6
action_17 (10) = happyShift action_7
action_17 (11) = happyShift action_8
action_17 (12) = happyShift action_9
action_17 (13) = happyShift action_10
action_17 (14) = happyShift action_11
action_17 (15) = happyShift action_12
action_17 (17) = happyShift action_13
action_17 (18) = happyShift action_14
action_17 (19) = happyShift action_15
action_17 (20) = happyShift action_16
action_17 (21) = happyShift action_17
action_17 (22) = happyShift action_18
action_17 (23) = happyShift action_19
action_17 (25) = happyShift action_20
action_17 (28) = happyShift action_21
action_17 (32) = happyShift action_22
action_17 (33) = happyShift action_23
action_17 (34) = happyShift action_24
action_17 (37) = happyShift action_25
action_17 (38) = happyShift action_26
action_17 (39) = happyShift action_27
action_17 (40) = happyShift action_28
action_17 (42) = happyShift action_29
action_17 (43) = happyShift action_30
action_17 (44) = happyShift action_31
action_17 (45) = happyShift action_32
action_17 (46) = happyShift action_33
action_17 (47) = happyShift action_34
action_17 (48) = happyShift action_35
action_17 (49) = happyShift action_36
action_17 (50) = happyShift action_37
action_17 (51) = happyShift action_38
action_17 (52) = happyShift action_39
action_17 (4) = happyGoto action_56
action_17 (5) = happyGoto action_4
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (42) = happyShift action_29
action_18 (43) = happyShift action_30
action_18 (44) = happyShift action_31
action_18 (5) = happyGoto action_55
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (22) = happyShift action_54
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (7) = happyShift action_2
action_20 (8) = happyShift action_5
action_20 (9) = happyShift action_6
action_20 (10) = happyShift action_7
action_20 (11) = happyShift action_8
action_20 (12) = happyShift action_9
action_20 (13) = happyShift action_10
action_20 (14) = happyShift action_11
action_20 (15) = happyShift action_12
action_20 (17) = happyShift action_13
action_20 (18) = happyShift action_14
action_20 (19) = happyShift action_15
action_20 (20) = happyShift action_16
action_20 (21) = happyShift action_17
action_20 (22) = happyShift action_18
action_20 (23) = happyShift action_19
action_20 (25) = happyShift action_20
action_20 (28) = happyShift action_21
action_20 (32) = happyShift action_22
action_20 (33) = happyShift action_23
action_20 (34) = happyShift action_24
action_20 (37) = happyShift action_25
action_20 (38) = happyShift action_26
action_20 (39) = happyShift action_27
action_20 (40) = happyShift action_28
action_20 (42) = happyShift action_29
action_20 (43) = happyShift action_30
action_20 (44) = happyShift action_31
action_20 (45) = happyShift action_32
action_20 (46) = happyShift action_33
action_20 (47) = happyShift action_34
action_20 (48) = happyShift action_35
action_20 (49) = happyShift action_36
action_20 (50) = happyShift action_37
action_20 (51) = happyShift action_38
action_20 (52) = happyShift action_39
action_20 (4) = happyGoto action_53
action_20 (5) = happyGoto action_4
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (7) = happyShift action_2
action_21 (8) = happyShift action_5
action_21 (9) = happyShift action_6
action_21 (10) = happyShift action_7
action_21 (11) = happyShift action_8
action_21 (12) = happyShift action_9
action_21 (13) = happyShift action_10
action_21 (14) = happyShift action_11
action_21 (15) = happyShift action_12
action_21 (17) = happyShift action_13
action_21 (18) = happyShift action_14
action_21 (19) = happyShift action_15
action_21 (20) = happyShift action_16
action_21 (21) = happyShift action_17
action_21 (22) = happyShift action_18
action_21 (23) = happyShift action_19
action_21 (25) = happyShift action_20
action_21 (28) = happyShift action_21
action_21 (32) = happyShift action_22
action_21 (33) = happyShift action_23
action_21 (34) = happyShift action_24
action_21 (37) = happyShift action_25
action_21 (38) = happyShift action_26
action_21 (39) = happyShift action_27
action_21 (40) = happyShift action_28
action_21 (42) = happyShift action_29
action_21 (43) = happyShift action_30
action_21 (44) = happyShift action_31
action_21 (45) = happyShift action_32
action_21 (46) = happyShift action_33
action_21 (47) = happyShift action_34
action_21 (48) = happyShift action_35
action_21 (49) = happyShift action_36
action_21 (50) = happyShift action_37
action_21 (51) = happyShift action_38
action_21 (52) = happyShift action_39
action_21 (4) = happyGoto action_52
action_21 (5) = happyGoto action_4
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (7) = happyShift action_2
action_22 (8) = happyShift action_5
action_22 (9) = happyShift action_6
action_22 (10) = happyShift action_7
action_22 (11) = happyShift action_8
action_22 (12) = happyShift action_9
action_22 (13) = happyShift action_10
action_22 (14) = happyShift action_11
action_22 (15) = happyShift action_12
action_22 (17) = happyShift action_13
action_22 (18) = happyShift action_14
action_22 (19) = happyShift action_15
action_22 (20) = happyShift action_16
action_22 (21) = happyShift action_17
action_22 (22) = happyShift action_18
action_22 (23) = happyShift action_19
action_22 (25) = happyShift action_20
action_22 (28) = happyShift action_21
action_22 (32) = happyShift action_22
action_22 (33) = happyShift action_23
action_22 (34) = happyShift action_24
action_22 (37) = happyShift action_25
action_22 (38) = happyShift action_26
action_22 (39) = happyShift action_27
action_22 (40) = happyShift action_28
action_22 (42) = happyShift action_29
action_22 (43) = happyShift action_30
action_22 (44) = happyShift action_31
action_22 (45) = happyShift action_32
action_22 (46) = happyShift action_33
action_22 (47) = happyShift action_34
action_22 (48) = happyShift action_35
action_22 (49) = happyShift action_36
action_22 (50) = happyShift action_37
action_22 (51) = happyShift action_38
action_22 (52) = happyShift action_39
action_22 (4) = happyGoto action_51
action_22 (5) = happyGoto action_4
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_2
action_23 (8) = happyShift action_5
action_23 (9) = happyShift action_6
action_23 (10) = happyShift action_7
action_23 (11) = happyShift action_8
action_23 (12) = happyShift action_9
action_23 (13) = happyShift action_10
action_23 (14) = happyShift action_11
action_23 (15) = happyShift action_12
action_23 (17) = happyShift action_13
action_23 (18) = happyShift action_14
action_23 (19) = happyShift action_15
action_23 (20) = happyShift action_16
action_23 (21) = happyShift action_17
action_23 (22) = happyShift action_18
action_23 (23) = happyShift action_19
action_23 (25) = happyShift action_20
action_23 (28) = happyShift action_21
action_23 (32) = happyShift action_22
action_23 (33) = happyShift action_23
action_23 (34) = happyShift action_24
action_23 (37) = happyShift action_25
action_23 (38) = happyShift action_26
action_23 (39) = happyShift action_27
action_23 (40) = happyShift action_28
action_23 (42) = happyShift action_29
action_23 (43) = happyShift action_30
action_23 (44) = happyShift action_31
action_23 (45) = happyShift action_32
action_23 (46) = happyShift action_33
action_23 (47) = happyShift action_34
action_23 (48) = happyShift action_35
action_23 (49) = happyShift action_36
action_23 (50) = happyShift action_37
action_23 (51) = happyShift action_38
action_23 (52) = happyShift action_39
action_23 (4) = happyGoto action_50
action_23 (5) = happyGoto action_4
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (7) = happyShift action_2
action_24 (8) = happyShift action_5
action_24 (9) = happyShift action_6
action_24 (10) = happyShift action_7
action_24 (11) = happyShift action_8
action_24 (12) = happyShift action_9
action_24 (13) = happyShift action_10
action_24 (14) = happyShift action_11
action_24 (15) = happyShift action_12
action_24 (17) = happyShift action_13
action_24 (18) = happyShift action_14
action_24 (19) = happyShift action_15
action_24 (20) = happyShift action_16
action_24 (21) = happyShift action_17
action_24 (22) = happyShift action_18
action_24 (23) = happyShift action_19
action_24 (25) = happyShift action_20
action_24 (28) = happyShift action_21
action_24 (32) = happyShift action_22
action_24 (33) = happyShift action_23
action_24 (34) = happyShift action_24
action_24 (37) = happyShift action_25
action_24 (38) = happyShift action_26
action_24 (39) = happyShift action_27
action_24 (40) = happyShift action_28
action_24 (42) = happyShift action_29
action_24 (43) = happyShift action_30
action_24 (44) = happyShift action_31
action_24 (45) = happyShift action_32
action_24 (46) = happyShift action_33
action_24 (47) = happyShift action_34
action_24 (48) = happyShift action_35
action_24 (49) = happyShift action_36
action_24 (50) = happyShift action_37
action_24 (51) = happyShift action_38
action_24 (52) = happyShift action_39
action_24 (4) = happyGoto action_49
action_24 (5) = happyGoto action_4
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (7) = happyShift action_2
action_25 (8) = happyShift action_5
action_25 (9) = happyShift action_6
action_25 (10) = happyShift action_7
action_25 (11) = happyShift action_8
action_25 (12) = happyShift action_9
action_25 (13) = happyShift action_10
action_25 (14) = happyShift action_11
action_25 (15) = happyShift action_12
action_25 (17) = happyShift action_13
action_25 (18) = happyShift action_14
action_25 (19) = happyShift action_15
action_25 (20) = happyShift action_16
action_25 (21) = happyShift action_17
action_25 (22) = happyShift action_18
action_25 (23) = happyShift action_19
action_25 (25) = happyShift action_20
action_25 (28) = happyShift action_21
action_25 (32) = happyShift action_22
action_25 (33) = happyShift action_23
action_25 (34) = happyShift action_24
action_25 (37) = happyShift action_25
action_25 (38) = happyShift action_26
action_25 (39) = happyShift action_27
action_25 (40) = happyShift action_28
action_25 (42) = happyShift action_29
action_25 (43) = happyShift action_30
action_25 (44) = happyShift action_31
action_25 (45) = happyShift action_32
action_25 (46) = happyShift action_33
action_25 (47) = happyShift action_34
action_25 (48) = happyShift action_35
action_25 (49) = happyShift action_36
action_25 (50) = happyShift action_37
action_25 (51) = happyShift action_38
action_25 (52) = happyShift action_39
action_25 (4) = happyGoto action_48
action_25 (5) = happyGoto action_4
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (7) = happyShift action_2
action_26 (8) = happyShift action_5
action_26 (9) = happyShift action_6
action_26 (10) = happyShift action_7
action_26 (11) = happyShift action_8
action_26 (12) = happyShift action_9
action_26 (13) = happyShift action_10
action_26 (14) = happyShift action_11
action_26 (15) = happyShift action_12
action_26 (17) = happyShift action_13
action_26 (18) = happyShift action_14
action_26 (19) = happyShift action_15
action_26 (20) = happyShift action_16
action_26 (21) = happyShift action_17
action_26 (22) = happyShift action_18
action_26 (23) = happyShift action_19
action_26 (25) = happyShift action_20
action_26 (28) = happyShift action_21
action_26 (32) = happyShift action_22
action_26 (33) = happyShift action_23
action_26 (34) = happyShift action_24
action_26 (37) = happyShift action_25
action_26 (38) = happyShift action_26
action_26 (39) = happyShift action_27
action_26 (40) = happyShift action_28
action_26 (42) = happyShift action_29
action_26 (43) = happyShift action_30
action_26 (44) = happyShift action_31
action_26 (45) = happyShift action_32
action_26 (46) = happyShift action_33
action_26 (47) = happyShift action_34
action_26 (48) = happyShift action_35
action_26 (49) = happyShift action_36
action_26 (50) = happyShift action_37
action_26 (51) = happyShift action_38
action_26 (52) = happyShift action_39
action_26 (4) = happyGoto action_47
action_26 (5) = happyGoto action_4
action_26 _ = happyFail (happyExpListPerState 26)

action_27 _ = happyReduce_27

action_28 _ = happyReduce_28

action_29 _ = happyReduce_36

action_30 _ = happyReduce_37

action_31 _ = happyReduce_38

action_32 _ = happyReduce_26

action_33 (7) = happyShift action_2
action_33 (8) = happyShift action_5
action_33 (9) = happyShift action_6
action_33 (10) = happyShift action_7
action_33 (11) = happyShift action_8
action_33 (12) = happyShift action_9
action_33 (13) = happyShift action_10
action_33 (14) = happyShift action_11
action_33 (15) = happyShift action_12
action_33 (17) = happyShift action_13
action_33 (18) = happyShift action_14
action_33 (19) = happyShift action_15
action_33 (20) = happyShift action_16
action_33 (21) = happyShift action_17
action_33 (22) = happyShift action_18
action_33 (23) = happyShift action_19
action_33 (25) = happyShift action_20
action_33 (28) = happyShift action_21
action_33 (32) = happyShift action_22
action_33 (33) = happyShift action_23
action_33 (34) = happyShift action_24
action_33 (37) = happyShift action_25
action_33 (38) = happyShift action_26
action_33 (39) = happyShift action_27
action_33 (40) = happyShift action_28
action_33 (42) = happyShift action_29
action_33 (43) = happyShift action_30
action_33 (44) = happyShift action_31
action_33 (45) = happyShift action_32
action_33 (46) = happyShift action_33
action_33 (47) = happyShift action_34
action_33 (48) = happyShift action_35
action_33 (49) = happyShift action_36
action_33 (50) = happyShift action_37
action_33 (51) = happyShift action_38
action_33 (52) = happyShift action_39
action_33 (4) = happyGoto action_46
action_33 (5) = happyGoto action_4
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (7) = happyShift action_2
action_34 (8) = happyShift action_5
action_34 (9) = happyShift action_6
action_34 (10) = happyShift action_7
action_34 (11) = happyShift action_8
action_34 (12) = happyShift action_9
action_34 (13) = happyShift action_10
action_34 (14) = happyShift action_11
action_34 (15) = happyShift action_12
action_34 (17) = happyShift action_13
action_34 (18) = happyShift action_14
action_34 (19) = happyShift action_15
action_34 (20) = happyShift action_16
action_34 (21) = happyShift action_17
action_34 (22) = happyShift action_18
action_34 (23) = happyShift action_19
action_34 (25) = happyShift action_20
action_34 (28) = happyShift action_21
action_34 (32) = happyShift action_22
action_34 (33) = happyShift action_23
action_34 (34) = happyShift action_24
action_34 (37) = happyShift action_25
action_34 (38) = happyShift action_26
action_34 (39) = happyShift action_27
action_34 (40) = happyShift action_28
action_34 (42) = happyShift action_29
action_34 (43) = happyShift action_30
action_34 (44) = happyShift action_31
action_34 (45) = happyShift action_32
action_34 (46) = happyShift action_33
action_34 (47) = happyShift action_34
action_34 (48) = happyShift action_35
action_34 (49) = happyShift action_36
action_34 (50) = happyShift action_37
action_34 (51) = happyShift action_38
action_34 (52) = happyShift action_39
action_34 (4) = happyGoto action_45
action_34 (5) = happyGoto action_4
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (7) = happyShift action_2
action_35 (8) = happyShift action_5
action_35 (9) = happyShift action_6
action_35 (10) = happyShift action_7
action_35 (11) = happyShift action_8
action_35 (12) = happyShift action_9
action_35 (13) = happyShift action_10
action_35 (14) = happyShift action_11
action_35 (15) = happyShift action_12
action_35 (17) = happyShift action_13
action_35 (18) = happyShift action_14
action_35 (19) = happyShift action_15
action_35 (20) = happyShift action_16
action_35 (21) = happyShift action_17
action_35 (22) = happyShift action_18
action_35 (23) = happyShift action_19
action_35 (25) = happyShift action_20
action_35 (28) = happyShift action_21
action_35 (32) = happyShift action_22
action_35 (33) = happyShift action_23
action_35 (34) = happyShift action_24
action_35 (37) = happyShift action_25
action_35 (38) = happyShift action_26
action_35 (39) = happyShift action_27
action_35 (40) = happyShift action_28
action_35 (42) = happyShift action_29
action_35 (43) = happyShift action_30
action_35 (44) = happyShift action_31
action_35 (45) = happyShift action_32
action_35 (46) = happyShift action_33
action_35 (47) = happyShift action_34
action_35 (48) = happyShift action_35
action_35 (49) = happyShift action_36
action_35 (50) = happyShift action_37
action_35 (51) = happyShift action_38
action_35 (52) = happyShift action_39
action_35 (4) = happyGoto action_44
action_35 (5) = happyGoto action_4
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (7) = happyShift action_2
action_36 (8) = happyShift action_5
action_36 (9) = happyShift action_6
action_36 (10) = happyShift action_7
action_36 (11) = happyShift action_8
action_36 (12) = happyShift action_9
action_36 (13) = happyShift action_10
action_36 (14) = happyShift action_11
action_36 (15) = happyShift action_12
action_36 (17) = happyShift action_13
action_36 (18) = happyShift action_14
action_36 (19) = happyShift action_15
action_36 (20) = happyShift action_16
action_36 (21) = happyShift action_17
action_36 (22) = happyShift action_18
action_36 (23) = happyShift action_19
action_36 (25) = happyShift action_20
action_36 (28) = happyShift action_21
action_36 (32) = happyShift action_22
action_36 (33) = happyShift action_23
action_36 (34) = happyShift action_24
action_36 (37) = happyShift action_25
action_36 (38) = happyShift action_26
action_36 (39) = happyShift action_27
action_36 (40) = happyShift action_28
action_36 (42) = happyShift action_29
action_36 (43) = happyShift action_30
action_36 (44) = happyShift action_31
action_36 (45) = happyShift action_32
action_36 (46) = happyShift action_33
action_36 (47) = happyShift action_34
action_36 (48) = happyShift action_35
action_36 (49) = happyShift action_36
action_36 (50) = happyShift action_37
action_36 (51) = happyShift action_38
action_36 (52) = happyShift action_39
action_36 (4) = happyGoto action_43
action_36 (5) = happyGoto action_4
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (7) = happyShift action_2
action_37 (8) = happyShift action_5
action_37 (9) = happyShift action_6
action_37 (10) = happyShift action_7
action_37 (11) = happyShift action_8
action_37 (12) = happyShift action_9
action_37 (13) = happyShift action_10
action_37 (14) = happyShift action_11
action_37 (15) = happyShift action_12
action_37 (17) = happyShift action_13
action_37 (18) = happyShift action_14
action_37 (19) = happyShift action_15
action_37 (20) = happyShift action_16
action_37 (21) = happyShift action_17
action_37 (22) = happyShift action_18
action_37 (23) = happyShift action_19
action_37 (25) = happyShift action_20
action_37 (28) = happyShift action_21
action_37 (32) = happyShift action_22
action_37 (33) = happyShift action_23
action_37 (34) = happyShift action_24
action_37 (37) = happyShift action_25
action_37 (38) = happyShift action_26
action_37 (39) = happyShift action_27
action_37 (40) = happyShift action_28
action_37 (42) = happyShift action_29
action_37 (43) = happyShift action_30
action_37 (44) = happyShift action_31
action_37 (45) = happyShift action_32
action_37 (46) = happyShift action_33
action_37 (47) = happyShift action_34
action_37 (48) = happyShift action_35
action_37 (49) = happyShift action_36
action_37 (50) = happyShift action_37
action_37 (51) = happyShift action_38
action_37 (52) = happyShift action_39
action_37 (4) = happyGoto action_42
action_37 (5) = happyGoto action_4
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (7) = happyShift action_2
action_38 (8) = happyShift action_5
action_38 (9) = happyShift action_6
action_38 (10) = happyShift action_7
action_38 (11) = happyShift action_8
action_38 (12) = happyShift action_9
action_38 (13) = happyShift action_10
action_38 (14) = happyShift action_11
action_38 (15) = happyShift action_12
action_38 (17) = happyShift action_13
action_38 (18) = happyShift action_14
action_38 (19) = happyShift action_15
action_38 (20) = happyShift action_16
action_38 (21) = happyShift action_17
action_38 (22) = happyShift action_18
action_38 (23) = happyShift action_19
action_38 (25) = happyShift action_20
action_38 (28) = happyShift action_21
action_38 (32) = happyShift action_22
action_38 (33) = happyShift action_23
action_38 (34) = happyShift action_24
action_38 (37) = happyShift action_25
action_38 (38) = happyShift action_26
action_38 (39) = happyShift action_27
action_38 (40) = happyShift action_28
action_38 (42) = happyShift action_29
action_38 (43) = happyShift action_30
action_38 (44) = happyShift action_31
action_38 (45) = happyShift action_32
action_38 (46) = happyShift action_33
action_38 (47) = happyShift action_34
action_38 (48) = happyShift action_35
action_38 (49) = happyShift action_36
action_38 (50) = happyShift action_37
action_38 (51) = happyShift action_38
action_38 (52) = happyShift action_39
action_38 (4) = happyGoto action_41
action_38 (5) = happyGoto action_4
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (7) = happyShift action_2
action_39 (8) = happyShift action_5
action_39 (9) = happyShift action_6
action_39 (10) = happyShift action_7
action_39 (11) = happyShift action_8
action_39 (12) = happyShift action_9
action_39 (13) = happyShift action_10
action_39 (14) = happyShift action_11
action_39 (15) = happyShift action_12
action_39 (17) = happyShift action_13
action_39 (18) = happyShift action_14
action_39 (19) = happyShift action_15
action_39 (20) = happyShift action_16
action_39 (21) = happyShift action_17
action_39 (22) = happyShift action_18
action_39 (23) = happyShift action_19
action_39 (25) = happyShift action_20
action_39 (28) = happyShift action_21
action_39 (32) = happyShift action_22
action_39 (33) = happyShift action_23
action_39 (34) = happyShift action_24
action_39 (37) = happyShift action_25
action_39 (38) = happyShift action_26
action_39 (39) = happyShift action_27
action_39 (40) = happyShift action_28
action_39 (42) = happyShift action_29
action_39 (43) = happyShift action_30
action_39 (44) = happyShift action_31
action_39 (45) = happyShift action_32
action_39 (46) = happyShift action_33
action_39 (47) = happyShift action_34
action_39 (48) = happyShift action_35
action_39 (49) = happyShift action_36
action_39 (50) = happyShift action_37
action_39 (51) = happyShift action_38
action_39 (52) = happyShift action_39
action_39 (4) = happyGoto action_40
action_39 (5) = happyGoto action_4
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (7) = happyShift action_2
action_40 (8) = happyShift action_5
action_40 (9) = happyShift action_6
action_40 (10) = happyShift action_7
action_40 (11) = happyShift action_8
action_40 (12) = happyShift action_9
action_40 (13) = happyShift action_10
action_40 (14) = happyShift action_11
action_40 (15) = happyShift action_12
action_40 (17) = happyShift action_13
action_40 (18) = happyShift action_14
action_40 (19) = happyShift action_15
action_40 (20) = happyShift action_16
action_40 (21) = happyShift action_17
action_40 (22) = happyShift action_18
action_40 (23) = happyShift action_19
action_40 (25) = happyShift action_20
action_40 (28) = happyShift action_21
action_40 (32) = happyShift action_22
action_40 (33) = happyShift action_23
action_40 (34) = happyShift action_24
action_40 (37) = happyShift action_25
action_40 (38) = happyShift action_26
action_40 (39) = happyShift action_27
action_40 (40) = happyShift action_28
action_40 (42) = happyShift action_29
action_40 (43) = happyShift action_30
action_40 (44) = happyShift action_31
action_40 (45) = happyShift action_32
action_40 (46) = happyShift action_33
action_40 (47) = happyShift action_34
action_40 (48) = happyShift action_35
action_40 (49) = happyShift action_36
action_40 (50) = happyShift action_37
action_40 (51) = happyShift action_38
action_40 (52) = happyShift action_39
action_40 (4) = happyGoto action_91
action_40 (5) = happyGoto action_4
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_24

action_42 (7) = happyShift action_2
action_42 (8) = happyShift action_5
action_42 (9) = happyShift action_6
action_42 (10) = happyShift action_7
action_42 (11) = happyShift action_8
action_42 (12) = happyShift action_9
action_42 (13) = happyShift action_10
action_42 (14) = happyShift action_11
action_42 (15) = happyShift action_12
action_42 (17) = happyShift action_13
action_42 (18) = happyShift action_14
action_42 (19) = happyShift action_15
action_42 (20) = happyShift action_16
action_42 (21) = happyShift action_17
action_42 (22) = happyShift action_18
action_42 (23) = happyShift action_19
action_42 (25) = happyShift action_20
action_42 (28) = happyShift action_21
action_42 (32) = happyShift action_22
action_42 (33) = happyShift action_23
action_42 (34) = happyShift action_24
action_42 (37) = happyShift action_25
action_42 (38) = happyShift action_26
action_42 (39) = happyShift action_27
action_42 (40) = happyShift action_28
action_42 (42) = happyShift action_29
action_42 (43) = happyShift action_30
action_42 (44) = happyShift action_31
action_42 (45) = happyShift action_32
action_42 (46) = happyShift action_33
action_42 (47) = happyShift action_34
action_42 (48) = happyShift action_35
action_42 (49) = happyShift action_36
action_42 (50) = happyShift action_37
action_42 (51) = happyShift action_38
action_42 (52) = happyShift action_39
action_42 (4) = happyGoto action_90
action_42 (5) = happyGoto action_4
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (7) = happyShift action_2
action_43 (8) = happyShift action_5
action_43 (9) = happyShift action_6
action_43 (10) = happyShift action_7
action_43 (11) = happyShift action_8
action_43 (12) = happyShift action_9
action_43 (13) = happyShift action_10
action_43 (14) = happyShift action_11
action_43 (15) = happyShift action_12
action_43 (17) = happyShift action_13
action_43 (18) = happyShift action_14
action_43 (19) = happyShift action_15
action_43 (20) = happyShift action_16
action_43 (21) = happyShift action_17
action_43 (22) = happyShift action_18
action_43 (23) = happyShift action_19
action_43 (25) = happyShift action_20
action_43 (28) = happyShift action_21
action_43 (32) = happyShift action_22
action_43 (33) = happyShift action_23
action_43 (34) = happyShift action_24
action_43 (37) = happyShift action_25
action_43 (38) = happyShift action_26
action_43 (39) = happyShift action_27
action_43 (40) = happyShift action_28
action_43 (42) = happyShift action_29
action_43 (43) = happyShift action_30
action_43 (44) = happyShift action_31
action_43 (45) = happyShift action_32
action_43 (46) = happyShift action_33
action_43 (47) = happyShift action_34
action_43 (48) = happyShift action_35
action_43 (49) = happyShift action_36
action_43 (50) = happyShift action_37
action_43 (51) = happyShift action_38
action_43 (52) = happyShift action_39
action_43 (4) = happyGoto action_89
action_43 (5) = happyGoto action_4
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (7) = happyShift action_2
action_44 (8) = happyShift action_5
action_44 (9) = happyShift action_6
action_44 (10) = happyShift action_7
action_44 (11) = happyShift action_8
action_44 (12) = happyShift action_9
action_44 (13) = happyShift action_10
action_44 (14) = happyShift action_11
action_44 (15) = happyShift action_12
action_44 (17) = happyShift action_13
action_44 (18) = happyShift action_14
action_44 (19) = happyShift action_15
action_44 (20) = happyShift action_16
action_44 (21) = happyShift action_17
action_44 (22) = happyShift action_18
action_44 (23) = happyShift action_19
action_44 (25) = happyShift action_20
action_44 (28) = happyShift action_21
action_44 (32) = happyShift action_22
action_44 (33) = happyShift action_23
action_44 (34) = happyShift action_24
action_44 (37) = happyShift action_25
action_44 (38) = happyShift action_26
action_44 (39) = happyShift action_27
action_44 (40) = happyShift action_28
action_44 (42) = happyShift action_29
action_44 (43) = happyShift action_30
action_44 (44) = happyShift action_31
action_44 (45) = happyShift action_32
action_44 (46) = happyShift action_33
action_44 (47) = happyShift action_34
action_44 (48) = happyShift action_35
action_44 (49) = happyShift action_36
action_44 (50) = happyShift action_37
action_44 (51) = happyShift action_38
action_44 (52) = happyShift action_39
action_44 (4) = happyGoto action_88
action_44 (5) = happyGoto action_4
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (7) = happyShift action_2
action_45 (8) = happyShift action_5
action_45 (9) = happyShift action_6
action_45 (10) = happyShift action_7
action_45 (11) = happyShift action_8
action_45 (12) = happyShift action_9
action_45 (13) = happyShift action_10
action_45 (14) = happyShift action_11
action_45 (15) = happyShift action_12
action_45 (17) = happyShift action_13
action_45 (18) = happyShift action_14
action_45 (19) = happyShift action_15
action_45 (20) = happyShift action_16
action_45 (21) = happyShift action_17
action_45 (22) = happyShift action_18
action_45 (23) = happyShift action_19
action_45 (25) = happyShift action_20
action_45 (28) = happyShift action_21
action_45 (32) = happyShift action_22
action_45 (33) = happyShift action_23
action_45 (34) = happyShift action_24
action_45 (37) = happyShift action_25
action_45 (38) = happyShift action_26
action_45 (39) = happyShift action_27
action_45 (40) = happyShift action_28
action_45 (42) = happyShift action_29
action_45 (43) = happyShift action_30
action_45 (44) = happyShift action_31
action_45 (45) = happyShift action_32
action_45 (46) = happyShift action_33
action_45 (47) = happyShift action_34
action_45 (48) = happyShift action_35
action_45 (49) = happyShift action_36
action_45 (50) = happyShift action_37
action_45 (51) = happyShift action_38
action_45 (52) = happyShift action_39
action_45 (4) = happyGoto action_87
action_45 (5) = happyGoto action_4
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (7) = happyShift action_2
action_46 (8) = happyShift action_5
action_46 (9) = happyShift action_6
action_46 (10) = happyShift action_7
action_46 (11) = happyShift action_8
action_46 (12) = happyShift action_9
action_46 (13) = happyShift action_10
action_46 (14) = happyShift action_11
action_46 (15) = happyShift action_12
action_46 (17) = happyShift action_13
action_46 (18) = happyShift action_14
action_46 (19) = happyShift action_15
action_46 (20) = happyShift action_16
action_46 (21) = happyShift action_17
action_46 (22) = happyShift action_18
action_46 (23) = happyShift action_19
action_46 (25) = happyShift action_20
action_46 (28) = happyShift action_21
action_46 (32) = happyShift action_22
action_46 (33) = happyShift action_23
action_46 (34) = happyShift action_24
action_46 (37) = happyShift action_25
action_46 (38) = happyShift action_26
action_46 (39) = happyShift action_27
action_46 (40) = happyShift action_28
action_46 (42) = happyShift action_29
action_46 (43) = happyShift action_30
action_46 (44) = happyShift action_31
action_46 (45) = happyShift action_32
action_46 (46) = happyShift action_33
action_46 (47) = happyShift action_34
action_46 (48) = happyShift action_35
action_46 (49) = happyShift action_36
action_46 (50) = happyShift action_37
action_46 (51) = happyShift action_38
action_46 (52) = happyShift action_39
action_46 (4) = happyGoto action_86
action_46 (5) = happyGoto action_4
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (7) = happyShift action_2
action_47 (8) = happyShift action_5
action_47 (9) = happyShift action_6
action_47 (10) = happyShift action_7
action_47 (11) = happyShift action_8
action_47 (12) = happyShift action_9
action_47 (13) = happyShift action_10
action_47 (14) = happyShift action_11
action_47 (15) = happyShift action_12
action_47 (17) = happyShift action_13
action_47 (18) = happyShift action_14
action_47 (19) = happyShift action_15
action_47 (20) = happyShift action_16
action_47 (21) = happyShift action_17
action_47 (22) = happyShift action_18
action_47 (23) = happyShift action_19
action_47 (25) = happyShift action_20
action_47 (28) = happyShift action_21
action_47 (32) = happyShift action_22
action_47 (33) = happyShift action_23
action_47 (34) = happyShift action_24
action_47 (37) = happyShift action_25
action_47 (38) = happyShift action_26
action_47 (39) = happyShift action_27
action_47 (40) = happyShift action_28
action_47 (42) = happyShift action_29
action_47 (43) = happyShift action_30
action_47 (44) = happyShift action_31
action_47 (45) = happyShift action_32
action_47 (46) = happyShift action_33
action_47 (47) = happyShift action_34
action_47 (48) = happyShift action_35
action_47 (49) = happyShift action_36
action_47 (50) = happyShift action_37
action_47 (51) = happyShift action_38
action_47 (52) = happyShift action_39
action_47 (4) = happyGoto action_85
action_47 (5) = happyGoto action_4
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (7) = happyShift action_2
action_48 (8) = happyShift action_5
action_48 (9) = happyShift action_6
action_48 (10) = happyShift action_7
action_48 (11) = happyShift action_8
action_48 (12) = happyShift action_9
action_48 (13) = happyShift action_10
action_48 (14) = happyShift action_11
action_48 (15) = happyShift action_12
action_48 (17) = happyShift action_13
action_48 (18) = happyShift action_14
action_48 (19) = happyShift action_15
action_48 (20) = happyShift action_16
action_48 (21) = happyShift action_17
action_48 (22) = happyShift action_18
action_48 (23) = happyShift action_19
action_48 (25) = happyShift action_20
action_48 (28) = happyShift action_21
action_48 (32) = happyShift action_22
action_48 (33) = happyShift action_23
action_48 (34) = happyShift action_24
action_48 (37) = happyShift action_25
action_48 (38) = happyShift action_26
action_48 (39) = happyShift action_27
action_48 (40) = happyShift action_28
action_48 (42) = happyShift action_29
action_48 (43) = happyShift action_30
action_48 (44) = happyShift action_31
action_48 (45) = happyShift action_32
action_48 (46) = happyShift action_33
action_48 (47) = happyShift action_34
action_48 (48) = happyShift action_35
action_48 (49) = happyShift action_36
action_48 (50) = happyShift action_37
action_48 (51) = happyShift action_38
action_48 (52) = happyShift action_39
action_48 (4) = happyGoto action_84
action_48 (5) = happyGoto action_4
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (35) = happyShift action_83
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_16

action_51 _ = happyReduce_35

action_52 (7) = happyShift action_2
action_52 (8) = happyShift action_5
action_52 (9) = happyShift action_6
action_52 (10) = happyShift action_7
action_52 (11) = happyShift action_8
action_52 (12) = happyShift action_9
action_52 (13) = happyShift action_10
action_52 (14) = happyShift action_11
action_52 (15) = happyShift action_12
action_52 (17) = happyShift action_13
action_52 (18) = happyShift action_14
action_52 (19) = happyShift action_15
action_52 (20) = happyShift action_16
action_52 (21) = happyShift action_17
action_52 (22) = happyShift action_18
action_52 (23) = happyShift action_19
action_52 (25) = happyShift action_20
action_52 (28) = happyShift action_21
action_52 (32) = happyShift action_22
action_52 (33) = happyShift action_23
action_52 (34) = happyShift action_24
action_52 (37) = happyShift action_25
action_52 (38) = happyShift action_26
action_52 (39) = happyShift action_27
action_52 (40) = happyShift action_28
action_52 (42) = happyShift action_29
action_52 (43) = happyShift action_30
action_52 (44) = happyShift action_31
action_52 (45) = happyShift action_32
action_52 (46) = happyShift action_33
action_52 (47) = happyShift action_34
action_52 (48) = happyShift action_35
action_52 (49) = happyShift action_36
action_52 (50) = happyShift action_37
action_52 (51) = happyShift action_38
action_52 (52) = happyShift action_39
action_52 (4) = happyGoto action_82
action_52 (5) = happyGoto action_4
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (26) = happyShift action_81
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (42) = happyShift action_29
action_54 (43) = happyShift action_30
action_54 (44) = happyShift action_31
action_54 (5) = happyGoto action_80
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (7) = happyShift action_2
action_55 (8) = happyShift action_5
action_55 (9) = happyShift action_6
action_55 (10) = happyShift action_7
action_55 (11) = happyShift action_8
action_55 (12) = happyShift action_9
action_55 (13) = happyShift action_10
action_55 (14) = happyShift action_11
action_55 (15) = happyShift action_12
action_55 (17) = happyShift action_13
action_55 (18) = happyShift action_14
action_55 (19) = happyShift action_15
action_55 (20) = happyShift action_16
action_55 (21) = happyShift action_17
action_55 (22) = happyShift action_18
action_55 (23) = happyShift action_19
action_55 (25) = happyShift action_20
action_55 (28) = happyShift action_21
action_55 (32) = happyShift action_22
action_55 (33) = happyShift action_23
action_55 (34) = happyShift action_24
action_55 (37) = happyShift action_25
action_55 (38) = happyShift action_26
action_55 (39) = happyShift action_27
action_55 (40) = happyShift action_28
action_55 (42) = happyShift action_29
action_55 (43) = happyShift action_30
action_55 (44) = happyShift action_31
action_55 (45) = happyShift action_32
action_55 (46) = happyShift action_33
action_55 (47) = happyShift action_34
action_55 (48) = happyShift action_35
action_55 (49) = happyShift action_36
action_55 (50) = happyShift action_37
action_55 (51) = happyShift action_38
action_55 (52) = happyShift action_39
action_55 (4) = happyGoto action_79
action_55 (5) = happyGoto action_4
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_14

action_57 _ = happyReduce_13

action_58 (7) = happyShift action_2
action_58 (8) = happyShift action_5
action_58 (9) = happyShift action_6
action_58 (10) = happyShift action_7
action_58 (11) = happyShift action_8
action_58 (12) = happyShift action_9
action_58 (13) = happyShift action_10
action_58 (14) = happyShift action_11
action_58 (15) = happyShift action_12
action_58 (17) = happyShift action_13
action_58 (18) = happyShift action_14
action_58 (19) = happyShift action_15
action_58 (20) = happyShift action_16
action_58 (21) = happyShift action_17
action_58 (22) = happyShift action_18
action_58 (23) = happyShift action_19
action_58 (25) = happyShift action_20
action_58 (28) = happyShift action_21
action_58 (32) = happyShift action_22
action_58 (33) = happyShift action_23
action_58 (34) = happyShift action_24
action_58 (37) = happyShift action_25
action_58 (38) = happyShift action_26
action_58 (39) = happyShift action_27
action_58 (40) = happyShift action_28
action_58 (42) = happyShift action_29
action_58 (43) = happyShift action_30
action_58 (44) = happyShift action_31
action_58 (45) = happyShift action_32
action_58 (46) = happyShift action_33
action_58 (47) = happyShift action_34
action_58 (48) = happyShift action_35
action_58 (49) = happyShift action_36
action_58 (50) = happyShift action_37
action_58 (51) = happyShift action_38
action_58 (52) = happyShift action_39
action_58 (4) = happyGoto action_78
action_58 (5) = happyGoto action_4
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (7) = happyShift action_2
action_59 (8) = happyShift action_5
action_59 (9) = happyShift action_6
action_59 (10) = happyShift action_7
action_59 (11) = happyShift action_8
action_59 (12) = happyShift action_9
action_59 (13) = happyShift action_10
action_59 (14) = happyShift action_11
action_59 (15) = happyShift action_12
action_59 (17) = happyShift action_13
action_59 (18) = happyShift action_14
action_59 (19) = happyShift action_15
action_59 (20) = happyShift action_16
action_59 (21) = happyShift action_17
action_59 (22) = happyShift action_18
action_59 (23) = happyShift action_19
action_59 (25) = happyShift action_20
action_59 (28) = happyShift action_21
action_59 (32) = happyShift action_22
action_59 (33) = happyShift action_23
action_59 (34) = happyShift action_24
action_59 (37) = happyShift action_25
action_59 (38) = happyShift action_26
action_59 (39) = happyShift action_27
action_59 (40) = happyShift action_28
action_59 (42) = happyShift action_29
action_59 (43) = happyShift action_30
action_59 (44) = happyShift action_31
action_59 (45) = happyShift action_32
action_59 (46) = happyShift action_33
action_59 (47) = happyShift action_34
action_59 (48) = happyShift action_35
action_59 (49) = happyShift action_36
action_59 (50) = happyShift action_37
action_59 (51) = happyShift action_38
action_59 (52) = happyShift action_39
action_59 (4) = happyGoto action_77
action_59 (5) = happyGoto action_4
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (7) = happyShift action_2
action_60 (8) = happyShift action_5
action_60 (9) = happyShift action_6
action_60 (10) = happyShift action_7
action_60 (11) = happyShift action_8
action_60 (12) = happyShift action_9
action_60 (13) = happyShift action_10
action_60 (14) = happyShift action_11
action_60 (15) = happyShift action_12
action_60 (17) = happyShift action_13
action_60 (18) = happyShift action_14
action_60 (19) = happyShift action_15
action_60 (20) = happyShift action_16
action_60 (21) = happyShift action_17
action_60 (22) = happyShift action_18
action_60 (23) = happyShift action_19
action_60 (25) = happyShift action_20
action_60 (28) = happyShift action_21
action_60 (32) = happyShift action_22
action_60 (33) = happyShift action_23
action_60 (34) = happyShift action_24
action_60 (37) = happyShift action_25
action_60 (38) = happyShift action_26
action_60 (39) = happyShift action_27
action_60 (40) = happyShift action_28
action_60 (42) = happyShift action_29
action_60 (43) = happyShift action_30
action_60 (44) = happyShift action_31
action_60 (45) = happyShift action_32
action_60 (46) = happyShift action_33
action_60 (47) = happyShift action_34
action_60 (48) = happyShift action_35
action_60 (49) = happyShift action_36
action_60 (50) = happyShift action_37
action_60 (51) = happyShift action_38
action_60 (52) = happyShift action_39
action_60 (4) = happyGoto action_76
action_60 (5) = happyGoto action_4
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (16) = happyShift action_75
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_8

action_63 _ = happyReduce_7

action_64 (7) = happyShift action_2
action_64 (8) = happyShift action_5
action_64 (9) = happyShift action_6
action_64 (10) = happyShift action_7
action_64 (11) = happyShift action_8
action_64 (12) = happyShift action_9
action_64 (13) = happyShift action_10
action_64 (14) = happyShift action_11
action_64 (15) = happyShift action_12
action_64 (17) = happyShift action_13
action_64 (18) = happyShift action_14
action_64 (19) = happyShift action_15
action_64 (20) = happyShift action_16
action_64 (21) = happyShift action_17
action_64 (22) = happyShift action_18
action_64 (23) = happyShift action_19
action_64 (25) = happyShift action_20
action_64 (28) = happyShift action_21
action_64 (32) = happyShift action_22
action_64 (33) = happyShift action_23
action_64 (34) = happyShift action_24
action_64 (37) = happyShift action_25
action_64 (38) = happyShift action_26
action_64 (39) = happyShift action_27
action_64 (40) = happyShift action_28
action_64 (42) = happyShift action_29
action_64 (43) = happyShift action_30
action_64 (44) = happyShift action_31
action_64 (45) = happyShift action_32
action_64 (46) = happyShift action_33
action_64 (47) = happyShift action_34
action_64 (48) = happyShift action_35
action_64 (49) = happyShift action_36
action_64 (50) = happyShift action_37
action_64 (51) = happyShift action_38
action_64 (52) = happyShift action_39
action_64 (4) = happyGoto action_74
action_64 (5) = happyGoto action_4
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_9

action_66 (7) = happyShift action_2
action_66 (8) = happyShift action_5
action_66 (9) = happyShift action_6
action_66 (10) = happyShift action_7
action_66 (11) = happyShift action_8
action_66 (12) = happyShift action_9
action_66 (13) = happyShift action_10
action_66 (14) = happyShift action_11
action_66 (15) = happyShift action_12
action_66 (17) = happyShift action_13
action_66 (18) = happyShift action_14
action_66 (19) = happyShift action_15
action_66 (20) = happyShift action_16
action_66 (21) = happyShift action_17
action_66 (22) = happyShift action_18
action_66 (23) = happyShift action_19
action_66 (25) = happyShift action_20
action_66 (28) = happyShift action_21
action_66 (32) = happyShift action_22
action_66 (33) = happyShift action_23
action_66 (34) = happyShift action_24
action_66 (37) = happyShift action_25
action_66 (38) = happyShift action_26
action_66 (39) = happyShift action_27
action_66 (40) = happyShift action_28
action_66 (42) = happyShift action_29
action_66 (43) = happyShift action_30
action_66 (44) = happyShift action_31
action_66 (45) = happyShift action_32
action_66 (46) = happyShift action_33
action_66 (47) = happyShift action_34
action_66 (48) = happyShift action_35
action_66 (49) = happyShift action_36
action_66 (50) = happyShift action_37
action_66 (51) = happyShift action_38
action_66 (52) = happyShift action_39
action_66 (4) = happyGoto action_73
action_66 (5) = happyGoto action_4
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (7) = happyShift action_2
action_67 (8) = happyShift action_5
action_67 (9) = happyShift action_6
action_67 (10) = happyShift action_7
action_67 (11) = happyShift action_8
action_67 (12) = happyShift action_9
action_67 (13) = happyShift action_10
action_67 (14) = happyShift action_11
action_67 (15) = happyShift action_12
action_67 (17) = happyShift action_13
action_67 (18) = happyShift action_14
action_67 (19) = happyShift action_15
action_67 (20) = happyShift action_16
action_67 (21) = happyShift action_17
action_67 (22) = happyShift action_18
action_67 (23) = happyShift action_19
action_67 (25) = happyShift action_20
action_67 (28) = happyShift action_21
action_67 (32) = happyShift action_22
action_67 (33) = happyShift action_23
action_67 (34) = happyShift action_24
action_67 (37) = happyShift action_25
action_67 (38) = happyShift action_26
action_67 (39) = happyShift action_27
action_67 (40) = happyShift action_28
action_67 (42) = happyShift action_29
action_67 (43) = happyShift action_30
action_67 (44) = happyShift action_31
action_67 (45) = happyShift action_32
action_67 (46) = happyShift action_33
action_67 (47) = happyShift action_34
action_67 (48) = happyShift action_35
action_67 (49) = happyShift action_36
action_67 (50) = happyShift action_37
action_67 (51) = happyShift action_38
action_67 (52) = happyShift action_39
action_67 (4) = happyGoto action_72
action_67 (5) = happyGoto action_4
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (7) = happyShift action_2
action_68 (8) = happyShift action_5
action_68 (9) = happyShift action_6
action_68 (10) = happyShift action_7
action_68 (11) = happyShift action_8
action_68 (12) = happyShift action_9
action_68 (13) = happyShift action_10
action_68 (14) = happyShift action_11
action_68 (15) = happyShift action_12
action_68 (17) = happyShift action_13
action_68 (18) = happyShift action_14
action_68 (19) = happyShift action_15
action_68 (20) = happyShift action_16
action_68 (21) = happyShift action_17
action_68 (22) = happyShift action_18
action_68 (23) = happyShift action_19
action_68 (25) = happyShift action_20
action_68 (28) = happyShift action_21
action_68 (32) = happyShift action_22
action_68 (33) = happyShift action_23
action_68 (34) = happyShift action_24
action_68 (37) = happyShift action_25
action_68 (38) = happyShift action_26
action_68 (39) = happyShift action_27
action_68 (40) = happyShift action_28
action_68 (42) = happyShift action_29
action_68 (43) = happyShift action_30
action_68 (44) = happyShift action_31
action_68 (45) = happyShift action_32
action_68 (46) = happyShift action_33
action_68 (47) = happyShift action_34
action_68 (48) = happyShift action_35
action_68 (49) = happyShift action_36
action_68 (50) = happyShift action_37
action_68 (51) = happyShift action_38
action_68 (52) = happyShift action_39
action_68 (4) = happyGoto action_71
action_68 (5) = happyGoto action_4
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (7) = happyShift action_2
action_69 (8) = happyShift action_5
action_69 (9) = happyShift action_6
action_69 (10) = happyShift action_7
action_69 (11) = happyShift action_8
action_69 (12) = happyShift action_9
action_69 (13) = happyShift action_10
action_69 (14) = happyShift action_11
action_69 (15) = happyShift action_12
action_69 (17) = happyShift action_13
action_69 (18) = happyShift action_14
action_69 (19) = happyShift action_15
action_69 (20) = happyShift action_16
action_69 (21) = happyShift action_17
action_69 (22) = happyShift action_18
action_69 (23) = happyShift action_19
action_69 (25) = happyShift action_20
action_69 (28) = happyShift action_21
action_69 (32) = happyShift action_22
action_69 (33) = happyShift action_23
action_69 (34) = happyShift action_24
action_69 (37) = happyShift action_25
action_69 (38) = happyShift action_26
action_69 (39) = happyShift action_27
action_69 (40) = happyShift action_28
action_69 (42) = happyShift action_29
action_69 (43) = happyShift action_30
action_69 (44) = happyShift action_31
action_69 (45) = happyShift action_32
action_69 (46) = happyShift action_33
action_69 (47) = happyShift action_34
action_69 (48) = happyShift action_35
action_69 (49) = happyShift action_36
action_69 (50) = happyShift action_37
action_69 (51) = happyShift action_38
action_69 (52) = happyShift action_39
action_69 (4) = happyGoto action_70
action_69 (5) = happyGoto action_4
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_1

action_71 _ = happyReduce_2

action_72 _ = happyReduce_3

action_73 _ = happyReduce_4

action_74 _ = happyReduce_6

action_75 _ = happyReduce_25

action_76 _ = happyReduce_10

action_77 _ = happyReduce_11

action_78 _ = happyReduce_12

action_79 _ = happyReduce_34

action_80 (7) = happyShift action_2
action_80 (8) = happyShift action_5
action_80 (9) = happyShift action_6
action_80 (10) = happyShift action_7
action_80 (11) = happyShift action_8
action_80 (12) = happyShift action_9
action_80 (13) = happyShift action_10
action_80 (14) = happyShift action_11
action_80 (15) = happyShift action_12
action_80 (17) = happyShift action_13
action_80 (18) = happyShift action_14
action_80 (19) = happyShift action_15
action_80 (20) = happyShift action_16
action_80 (21) = happyShift action_17
action_80 (22) = happyShift action_18
action_80 (23) = happyShift action_19
action_80 (25) = happyShift action_20
action_80 (28) = happyShift action_21
action_80 (32) = happyShift action_22
action_80 (33) = happyShift action_23
action_80 (34) = happyShift action_24
action_80 (37) = happyShift action_25
action_80 (38) = happyShift action_26
action_80 (39) = happyShift action_27
action_80 (40) = happyShift action_28
action_80 (42) = happyShift action_29
action_80 (43) = happyShift action_30
action_80 (44) = happyShift action_31
action_80 (45) = happyShift action_32
action_80 (46) = happyShift action_33
action_80 (47) = happyShift action_34
action_80 (48) = happyShift action_35
action_80 (49) = happyShift action_36
action_80 (50) = happyShift action_37
action_80 (51) = happyShift action_38
action_80 (52) = happyShift action_39
action_80 (4) = happyGoto action_97
action_80 (5) = happyGoto action_4
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (7) = happyShift action_2
action_81 (8) = happyShift action_5
action_81 (9) = happyShift action_6
action_81 (10) = happyShift action_7
action_81 (11) = happyShift action_8
action_81 (12) = happyShift action_9
action_81 (13) = happyShift action_10
action_81 (14) = happyShift action_11
action_81 (15) = happyShift action_12
action_81 (17) = happyShift action_13
action_81 (18) = happyShift action_14
action_81 (19) = happyShift action_15
action_81 (20) = happyShift action_16
action_81 (21) = happyShift action_17
action_81 (22) = happyShift action_18
action_81 (23) = happyShift action_19
action_81 (25) = happyShift action_20
action_81 (28) = happyShift action_21
action_81 (29) = happyShift action_95
action_81 (32) = happyShift action_22
action_81 (33) = happyShift action_23
action_81 (34) = happyShift action_24
action_81 (37) = happyShift action_25
action_81 (38) = happyShift action_26
action_81 (39) = happyShift action_27
action_81 (40) = happyShift action_28
action_81 (42) = happyShift action_29
action_81 (43) = happyShift action_30
action_81 (44) = happyShift action_31
action_81 (45) = happyShift action_32
action_81 (46) = happyShift action_33
action_81 (47) = happyShift action_34
action_81 (48) = happyShift action_35
action_81 (49) = happyShift action_36
action_81 (50) = happyShift action_37
action_81 (51) = happyShift action_38
action_81 (52) = happyShift action_39
action_81 (4) = happyGoto action_93
action_81 (5) = happyGoto action_4
action_81 (6) = happyGoto action_96
action_81 _ = happyFail (happyExpListPerState 81)

action_82 _ = happyReduce_15

action_83 (7) = happyShift action_2
action_83 (8) = happyShift action_5
action_83 (9) = happyShift action_6
action_83 (10) = happyShift action_7
action_83 (11) = happyShift action_8
action_83 (12) = happyShift action_9
action_83 (13) = happyShift action_10
action_83 (14) = happyShift action_11
action_83 (15) = happyShift action_12
action_83 (17) = happyShift action_13
action_83 (18) = happyShift action_14
action_83 (19) = happyShift action_15
action_83 (20) = happyShift action_16
action_83 (21) = happyShift action_17
action_83 (22) = happyShift action_18
action_83 (23) = happyShift action_19
action_83 (25) = happyShift action_20
action_83 (28) = happyShift action_21
action_83 (29) = happyShift action_95
action_83 (32) = happyShift action_22
action_83 (33) = happyShift action_23
action_83 (34) = happyShift action_24
action_83 (37) = happyShift action_25
action_83 (38) = happyShift action_26
action_83 (39) = happyShift action_27
action_83 (40) = happyShift action_28
action_83 (42) = happyShift action_29
action_83 (43) = happyShift action_30
action_83 (44) = happyShift action_31
action_83 (45) = happyShift action_32
action_83 (46) = happyShift action_33
action_83 (47) = happyShift action_34
action_83 (48) = happyShift action_35
action_83 (49) = happyShift action_36
action_83 (50) = happyShift action_37
action_83 (51) = happyShift action_38
action_83 (52) = happyShift action_39
action_83 (4) = happyGoto action_93
action_83 (5) = happyGoto action_4
action_83 (6) = happyGoto action_94
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_5

action_85 (7) = happyShift action_2
action_85 (8) = happyShift action_5
action_85 (9) = happyShift action_6
action_85 (10) = happyShift action_7
action_85 (11) = happyShift action_8
action_85 (12) = happyShift action_9
action_85 (13) = happyShift action_10
action_85 (14) = happyShift action_11
action_85 (15) = happyShift action_12
action_85 (17) = happyShift action_13
action_85 (18) = happyShift action_14
action_85 (19) = happyShift action_15
action_85 (20) = happyShift action_16
action_85 (21) = happyShift action_17
action_85 (22) = happyShift action_18
action_85 (23) = happyShift action_19
action_85 (25) = happyShift action_20
action_85 (28) = happyShift action_21
action_85 (32) = happyShift action_22
action_85 (33) = happyShift action_23
action_85 (34) = happyShift action_24
action_85 (37) = happyShift action_25
action_85 (38) = happyShift action_26
action_85 (39) = happyShift action_27
action_85 (40) = happyShift action_28
action_85 (42) = happyShift action_29
action_85 (43) = happyShift action_30
action_85 (44) = happyShift action_31
action_85 (45) = happyShift action_32
action_85 (46) = happyShift action_33
action_85 (47) = happyShift action_34
action_85 (48) = happyShift action_35
action_85 (49) = happyShift action_36
action_85 (50) = happyShift action_37
action_85 (51) = happyShift action_38
action_85 (52) = happyShift action_39
action_85 (4) = happyGoto action_92
action_85 (5) = happyGoto action_4
action_85 _ = happyFail (happyExpListPerState 85)

action_86 _ = happyReduce_18

action_87 _ = happyReduce_19

action_88 _ = happyReduce_20

action_89 _ = happyReduce_21

action_90 _ = happyReduce_22

action_91 _ = happyReduce_23

action_92 _ = happyReduce_17

action_93 (30) = happyShift action_102
action_93 (53) = happyShift action_103
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (36) = happyShift action_101
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (7) = happyShift action_2
action_95 (8) = happyShift action_5
action_95 (9) = happyShift action_6
action_95 (10) = happyShift action_7
action_95 (11) = happyShift action_8
action_95 (12) = happyShift action_9
action_95 (13) = happyShift action_10
action_95 (14) = happyShift action_11
action_95 (15) = happyShift action_12
action_95 (17) = happyShift action_13
action_95 (18) = happyShift action_14
action_95 (19) = happyShift action_15
action_95 (20) = happyShift action_16
action_95 (21) = happyShift action_17
action_95 (22) = happyShift action_18
action_95 (23) = happyShift action_19
action_95 (25) = happyShift action_20
action_95 (28) = happyShift action_21
action_95 (29) = happyShift action_95
action_95 (32) = happyShift action_22
action_95 (33) = happyShift action_23
action_95 (34) = happyShift action_24
action_95 (37) = happyShift action_25
action_95 (38) = happyShift action_26
action_95 (39) = happyShift action_27
action_95 (40) = happyShift action_28
action_95 (42) = happyShift action_29
action_95 (43) = happyShift action_30
action_95 (44) = happyShift action_31
action_95 (45) = happyShift action_32
action_95 (46) = happyShift action_33
action_95 (47) = happyShift action_34
action_95 (48) = happyShift action_35
action_95 (49) = happyShift action_36
action_95 (50) = happyShift action_37
action_95 (51) = happyShift action_38
action_95 (52) = happyShift action_39
action_95 (4) = happyGoto action_93
action_95 (5) = happyGoto action_4
action_95 (6) = happyGoto action_100
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (27) = happyShift action_99
action_96 _ = happyReduce_31

action_97 (24) = happyShift action_98
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (7) = happyShift action_2
action_98 (8) = happyShift action_5
action_98 (9) = happyShift action_6
action_98 (10) = happyShift action_7
action_98 (11) = happyShift action_8
action_98 (12) = happyShift action_9
action_98 (13) = happyShift action_10
action_98 (14) = happyShift action_11
action_98 (15) = happyShift action_12
action_98 (17) = happyShift action_13
action_98 (18) = happyShift action_14
action_98 (19) = happyShift action_15
action_98 (20) = happyShift action_16
action_98 (21) = happyShift action_17
action_98 (22) = happyShift action_18
action_98 (23) = happyShift action_19
action_98 (25) = happyShift action_20
action_98 (28) = happyShift action_21
action_98 (29) = happyShift action_95
action_98 (32) = happyShift action_22
action_98 (33) = happyShift action_23
action_98 (34) = happyShift action_24
action_98 (37) = happyShift action_25
action_98 (38) = happyShift action_26
action_98 (39) = happyShift action_27
action_98 (40) = happyShift action_28
action_98 (42) = happyShift action_29
action_98 (43) = happyShift action_30
action_98 (44) = happyShift action_31
action_98 (45) = happyShift action_32
action_98 (46) = happyShift action_33
action_98 (47) = happyShift action_34
action_98 (48) = happyShift action_35
action_98 (49) = happyShift action_36
action_98 (50) = happyShift action_37
action_98 (51) = happyShift action_38
action_98 (52) = happyShift action_39
action_98 (4) = happyGoto action_93
action_98 (5) = happyGoto action_4
action_98 (6) = happyGoto action_106
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (7) = happyShift action_2
action_99 (8) = happyShift action_5
action_99 (9) = happyShift action_6
action_99 (10) = happyShift action_7
action_99 (11) = happyShift action_8
action_99 (12) = happyShift action_9
action_99 (13) = happyShift action_10
action_99 (14) = happyShift action_11
action_99 (15) = happyShift action_12
action_99 (17) = happyShift action_13
action_99 (18) = happyShift action_14
action_99 (19) = happyShift action_15
action_99 (20) = happyShift action_16
action_99 (21) = happyShift action_17
action_99 (22) = happyShift action_18
action_99 (23) = happyShift action_19
action_99 (25) = happyShift action_20
action_99 (28) = happyShift action_21
action_99 (29) = happyShift action_95
action_99 (32) = happyShift action_22
action_99 (33) = happyShift action_23
action_99 (34) = happyShift action_24
action_99 (37) = happyShift action_25
action_99 (38) = happyShift action_26
action_99 (39) = happyShift action_27
action_99 (40) = happyShift action_28
action_99 (42) = happyShift action_29
action_99 (43) = happyShift action_30
action_99 (44) = happyShift action_31
action_99 (45) = happyShift action_32
action_99 (46) = happyShift action_33
action_99 (47) = happyShift action_34
action_99 (48) = happyShift action_35
action_99 (49) = happyShift action_36
action_99 (50) = happyShift action_37
action_99 (51) = happyShift action_38
action_99 (52) = happyShift action_39
action_99 (4) = happyGoto action_93
action_99 (5) = happyGoto action_4
action_99 (6) = happyGoto action_105
action_99 _ = happyFail (happyExpListPerState 99)

action_100 _ = happyReduce_39

action_101 _ = happyReduce_32

action_102 _ = happyReduce_41

action_103 (7) = happyShift action_2
action_103 (8) = happyShift action_5
action_103 (9) = happyShift action_6
action_103 (10) = happyShift action_7
action_103 (11) = happyShift action_8
action_103 (12) = happyShift action_9
action_103 (13) = happyShift action_10
action_103 (14) = happyShift action_11
action_103 (15) = happyShift action_12
action_103 (17) = happyShift action_13
action_103 (18) = happyShift action_14
action_103 (19) = happyShift action_15
action_103 (20) = happyShift action_16
action_103 (21) = happyShift action_17
action_103 (22) = happyShift action_18
action_103 (23) = happyShift action_19
action_103 (25) = happyShift action_20
action_103 (28) = happyShift action_21
action_103 (29) = happyShift action_95
action_103 (32) = happyShift action_22
action_103 (33) = happyShift action_23
action_103 (34) = happyShift action_24
action_103 (37) = happyShift action_25
action_103 (38) = happyShift action_26
action_103 (39) = happyShift action_27
action_103 (40) = happyShift action_28
action_103 (42) = happyShift action_29
action_103 (43) = happyShift action_30
action_103 (44) = happyShift action_31
action_103 (45) = happyShift action_32
action_103 (46) = happyShift action_33
action_103 (47) = happyShift action_34
action_103 (48) = happyShift action_35
action_103 (49) = happyShift action_36
action_103 (50) = happyShift action_37
action_103 (51) = happyShift action_38
action_103 (52) = happyShift action_39
action_103 (4) = happyGoto action_93
action_103 (5) = happyGoto action_4
action_103 (6) = happyGoto action_104
action_103 _ = happyFail (happyExpListPerState 103)

action_104 _ = happyReduce_40

action_105 _ = happyReduce_30

action_106 _ = happyReduce_33

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Plus happy_var_2 happy_var_3
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_3  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Minus happy_var_2 happy_var_3
	)
happyReduction_2 _ _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_3  4 happyReduction_3
happyReduction_3 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Times happy_var_2 happy_var_3
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Div happy_var_2 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Power happy_var_2 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Get happy_var_2 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_2  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Head happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Last happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Sum happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (AddLst happy_var_2 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (AddFst happy_var_2 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Remove happy_var_2 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Init happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_2  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Tail happy_var_2
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Concat happy_var_2 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Revert happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 4 4 happyReduction_17
happyReduction_17 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (GetXY happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Less happy_var_2 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (LessEq happy_var_2 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Greater happy_var_2 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (GreaterEq happy_var_2 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Eq happy_var_2 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (NotEq happy_var_2 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  4 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  4 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Br happy_var_2
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  4 happyReduction_26
happyReduction_26 (HappyTerminal (TokenInt _  happy_var_1))
	 =  HappyAbsSyn4
		 (Nr happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  4 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn4
		 (True
	)

happyReduce_28 = happySpecReduce_1  4 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn4
		 (False
	)

happyReduce_29 = happySpecReduce_1  4 happyReduction_29
happyReduction_29 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happyReduce 6 4 happyReduction_30
happyReduction_30 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (IfThenElse happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 4 4 happyReduction_31
happyReduction_31 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (IfThen happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 5 4 happyReduction_32
happyReduction_32 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 6 4 happyReduction_33
happyReduction_33 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_3 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_34 = happySpecReduce_3  4 happyReduction_34
happyReduction_34 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Assign happy_var_2 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_2  4 happyReduction_35
happyReduction_35 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Write happy_var_2
	)
happyReduction_35 _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  5 happyReduction_36
happyReduction_36 (HappyTerminal (TokenVar _  happy_var_1))
	 =  HappyAbsSyn5
		 (VarInt happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  5 happyReduction_37
happyReduction_37 (HappyTerminal (TokenVar _  happy_var_1))
	 =  HappyAbsSyn5
		 (VarArr happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  5 happyReduction_38
happyReduction_38 (HappyTerminal (TokenVar _  happy_var_1))
	 =  HappyAbsSyn5
		 (VarBool happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_2  6 happyReduction_39
happyReduction_39 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Begin happy_var_2
	)
happyReduction_39 _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  6 happyReduction_40
happyReduction_40 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn6
		 (Multi happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_2  6 happyReduction_41
happyReduction_41 _
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn6
		 (Single happy_var_1
	)
happyReduction_41 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 56 56 notHappyAtAll (HappyState action) sts stk []

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
	TokenTrue _ -> cont 39;
	TokenFalse _ -> cont 40;
	TokenWriteFile _ -> cont 41;
	TokenVar _  happy_dollar_dollar -> cont 42;
	TokenVar _  happy_dollar_dollar -> cont 43;
	TokenVar _  happy_dollar_dollar -> cont 44;
	TokenInt _  happy_dollar_dollar -> cont 45;
	TokenLess _ -> cont 46;
	TokenLessEq _ -> cont 47;
	TokenGreater _ -> cont 48;
	TokenGreaterEq _ -> cont 49;
	TokenEqEq _ -> cont 50;
	TokenNot _ -> cont 51;
	TokenNotEq _ -> cont 52;
	TokenNewLine _ -> cont 53;
	TokenDash _ -> cont 54;
	TokenComma _ -> cont 55;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 56 tk tks = happyError' (tks, explist)
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

-- data Expr = Plus Expr Expr
--           | Minus Expr Expr
--           | Times Expr Expr
--           | Div Expr Expr
--           | Power Expr Expr
--           | Get Expr Expr
--           | Head Expr
--           | Last Expr
--           | Sum Expr
--           | AddLst Expr Expr
--           | AddFst Expr Expr
--           | Remove Expr Expr
--           | Init Expr
--           | Tail Expr
--           | Concat Expr Expr
--           | Revert Expr
--           | GetXY Expr Expr Expr
--           | Less Expr Expr
--           | LessEq Expr Expr
--           | Greater Expr Expr
--           | GreaterEq Expr Expr
--           | Eq Expr Expr
--           | NotEq Expr Expr
--           | Not Expr
--           | Br Expr
--           | Nr Int
--           | Var
--           | Bool
--           | IfThenElse Expr Body Body
--           | IfThen Expr Body
--           | While Expr Body
--           | Let Var Expr Body
--           | Assign Var Expr
--           | Write Expr
--           deriving (Show,Eq)
data IntExpr = Plus IntExpr IntExpr
          | Minus IntExpr IntExpr
          | Times IntExpr IntExpr
          | Div IntExpr IntExpr
          | Power IntExpr IntExpr
          | Get IntExpr ArrExpr
          | Head ArrExpr
          | Last ArrExpr
          | Nr Int
          | Br IntExpr
          deriving (Show,Eq)

data ArrExpr = Sum ArrExpr
          | AddLst IntExpr ArrExpr
          | AddFst IntExpr ArrExpr
          | Remove IntExpr ArrExpr
          | Init ArrExpr
          | Tail ArrExpr
          | Concat ArrExpr ArrExpr
          | Revert ArrExpr
          | GetXY IntExpr IntExpr ArrExpr
          deriving (Show,Eq)

data BoolExpr = Less IntExpr IntExpr
          | LessEq IntExpr IntExpr
          | Greater IntExpr IntExpr
          | GreaterEq IntExpr IntExpr
          | Eq IntExpr IntExpr
          | NotEq IntExpr IntExpr
          | Not BoolExpr
          deriving (Show,Eq)

data Expr = IntExpr | ArrExpr | BoolExpr | Var deriving (Show,Eq)

data Act =  IfThenElse BoolExpr Body Body
          | IfThen BoolExpr Body
          | While BoolExpr Body
          | Let Var Expr Body
          | Assign Var Expr
          | Write Expr
          deriving (Show,Eq)

data Var = VarInt String
         | VarArr String
         | VarBool String
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
