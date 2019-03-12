{-# OPTIONS_GHC -w #-}
module SpellBookGrammar where
import SpellBookTokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,261) ([0,5632,8237,7,0,4096,0,0,0,4,3072,16260,0,0,0,0,0,0,0,7,0,512,0,0,0,4,3072,16260,0,5632,8237,7,0,0,0,64,0,0,0,16384,0,4,3072,16260,0,0,0,64,0,0,0,32,0,0,0,32,0,0,0,32,0,0,4096,0,0,0,16384,0,0,0,32768,0,0,0,0,16384,0,0,64,0,0,4,3072,16260,0,0,0,0,0,0,0,0,0,0,0,0,48640,7,256,9,48640,7,256,9,48640,7,256,9,48640,7,256,9,48640,7,3328,16269,0,4,3072,16260,48640,7,3328,16269,0,0,0,0,0,0,0,0,0,0,2,0,0,8192,0,0,0,0,0,7,65024,33271,3856,16287,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,5632,8237,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,48640,7,256,9,48640,7,256,9,48640,7,256,9,48640,7,256,9,48640,7,256,9,16384,33268,528,18,48640,7,256,9,16384,33268,528,18,16384,33268,528,18,65024,33271,3856,16287,48640,7,256,9,48640,7,256,9,48640,7,256,9,16384,33268,528,18,16384,33268,528,18,16384,33268,528,18,16384,33268,528,18,48640,7,256,9,48640,7,256,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65024,33271,3856,16287,0,5632,8237,7,0,0,0,0,48640,7,256,9,0,4,3072,16260,48640,7,3328,16269,0,0,0,0,48640,7,256,9,0,4,3072,16260,48640,7,256,9,48640,7,256,9,48640,7,256,9,48640,7,256,9,48640,7,256,9,0,8,0,0,0,5632,8237,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,48640,7,256,9,48640,7,256,9,0,0,0,0,16384,33268,528,18,16384,33268,528,18,0,0,0,0,0,0,0,0,16384,33268,528,18,16384,33268,528,18,16384,33268,528,18,0,8,0,0,0,0,0,0,0,0,0,0,16384,33268,528,18,0,0,0,0,0,0,0,0,48640,7,256,9,48640,7,256,9,48640,7,256,9,48640,7,256,9,0,16384,0,0,0,5632,8237,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,33268,528,18,0,5632,8237,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Cast","Horcrux","Spell","Charm","Jinx","Magic","Engorgio","Reducio","Inflatus","Diminuando","Geminio","Ferula","Accio","Ascendio","PrioriIncantatem","'('","')'","Depulso","Flipendo","Expelliarmus","Ventus","Obliviate","Fidelius","Appare","Vestigium","Confundo","Incendio","Aguamenti","Epoximise","Alohomora","Colloportus","Legilimens","Flagrate","EverteStatum","WingardiumLeviosa","Imperio","FiniteIncantatem","AlarteAscendere","Confringo","lumos","nox","Light","Apparate","Hogwarts","Wizard","horcruxInt","horcruxArr","horcruxBool","int","arr","':'","file","Entomorphis","CarpeRetractum","Defodio","Deprimo","Caterwauling","Crucio","Impedimenta","str","%eof"]
        bit_start = st * 64
        bit_end = (st + 1) * 64
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..63]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (26) = happyShift action_4
action_0 (27) = happyShift action_5
action_0 (29) = happyShift action_6
action_0 (33) = happyShift action_7
action_0 (35) = happyShift action_8
action_0 (36) = happyShift action_9
action_0 (38) = happyShift action_10
action_0 (46) = happyShift action_11
action_0 (49) = happyShift action_12
action_0 (50) = happyShift action_13
action_0 (51) = happyShift action_14
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (29) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (19) = happyShift action_20
action_2 (43) = happyShift action_21
action_2 (44) = happyShift action_22
action_2 (51) = happyShift action_23
action_2 (56) = happyShift action_24
action_2 (57) = happyShift action_25
action_2 (58) = happyShift action_26
action_2 (59) = happyShift action_27
action_2 (60) = happyShift action_28
action_2 (61) = happyShift action_29
action_2 (62) = happyShift action_30
action_2 (8) = happyGoto action_40
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (64) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (49) = happyShift action_37
action_4 (50) = happyShift action_38
action_4 (51) = happyShift action_39
action_4 (5) = happyGoto action_36
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (26) = happyShift action_35
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (19) = happyShift action_20
action_6 (43) = happyShift action_21
action_6 (44) = happyShift action_22
action_6 (51) = happyShift action_23
action_6 (56) = happyShift action_24
action_6 (57) = happyShift action_25
action_6 (58) = happyShift action_26
action_6 (59) = happyShift action_27
action_6 (60) = happyShift action_28
action_6 (61) = happyShift action_29
action_6 (62) = happyShift action_30
action_6 (8) = happyGoto action_34
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (26) = happyShift action_4
action_7 (27) = happyShift action_5
action_7 (29) = happyShift action_6
action_7 (33) = happyShift action_7
action_7 (35) = happyShift action_8
action_7 (36) = happyShift action_9
action_7 (38) = happyShift action_10
action_7 (46) = happyShift action_11
action_7 (49) = happyShift action_12
action_7 (50) = happyShift action_13
action_7 (51) = happyShift action_14
action_7 (4) = happyGoto action_33
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (55) = happyShift action_32
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (63) = happyShift action_31
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (19) = happyShift action_20
action_10 (43) = happyShift action_21
action_10 (44) = happyShift action_22
action_10 (51) = happyShift action_23
action_10 (56) = happyShift action_24
action_10 (57) = happyShift action_25
action_10 (58) = happyShift action_26
action_10 (59) = happyShift action_27
action_10 (60) = happyShift action_28
action_10 (61) = happyShift action_29
action_10 (62) = happyShift action_30
action_10 (8) = happyGoto action_19
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (55) = happyShift action_18
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (54) = happyShift action_17
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (54) = happyShift action_16
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (54) = happyShift action_15
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (45) = happyShift action_88
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (47) = happyShift action_87
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (48) = happyShift action_86
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (63) = happyShift action_85
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (39) = happyShift action_84
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (19) = happyShift action_20
action_20 (43) = happyShift action_21
action_20 (44) = happyShift action_22
action_20 (51) = happyShift action_23
action_20 (56) = happyShift action_24
action_20 (57) = happyShift action_25
action_20 (58) = happyShift action_26
action_20 (59) = happyShift action_27
action_20 (60) = happyShift action_28
action_20 (61) = happyShift action_29
action_20 (62) = happyShift action_30
action_20 (8) = happyGoto action_83
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_50

action_22 _ = happyReduce_51

action_23 _ = happyReduce_52

action_24 (10) = happyShift action_46
action_24 (11) = happyShift action_47
action_24 (12) = happyShift action_48
action_24 (13) = happyShift action_49
action_24 (14) = happyShift action_50
action_24 (16) = happyShift action_52
action_24 (17) = happyShift action_53
action_24 (18) = happyShift action_54
action_24 (19) = happyShift action_79
action_24 (41) = happyShift action_63
action_24 (49) = happyShift action_65
action_24 (52) = happyShift action_67
action_24 (6) = happyGoto action_82
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (10) = happyShift action_46
action_25 (11) = happyShift action_47
action_25 (12) = happyShift action_48
action_25 (13) = happyShift action_49
action_25 (14) = happyShift action_50
action_25 (16) = happyShift action_52
action_25 (17) = happyShift action_53
action_25 (18) = happyShift action_54
action_25 (19) = happyShift action_79
action_25 (41) = happyShift action_63
action_25 (49) = happyShift action_65
action_25 (52) = happyShift action_67
action_25 (6) = happyGoto action_81
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (10) = happyShift action_46
action_26 (11) = happyShift action_47
action_26 (12) = happyShift action_48
action_26 (13) = happyShift action_49
action_26 (14) = happyShift action_50
action_26 (16) = happyShift action_52
action_26 (17) = happyShift action_53
action_26 (18) = happyShift action_54
action_26 (19) = happyShift action_79
action_26 (41) = happyShift action_63
action_26 (49) = happyShift action_65
action_26 (52) = happyShift action_67
action_26 (6) = happyGoto action_80
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (10) = happyShift action_46
action_27 (11) = happyShift action_47
action_27 (12) = happyShift action_48
action_27 (13) = happyShift action_49
action_27 (14) = happyShift action_50
action_27 (16) = happyShift action_52
action_27 (17) = happyShift action_53
action_27 (18) = happyShift action_54
action_27 (19) = happyShift action_79
action_27 (41) = happyShift action_63
action_27 (49) = happyShift action_65
action_27 (52) = happyShift action_67
action_27 (6) = happyGoto action_78
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (10) = happyShift action_46
action_28 (11) = happyShift action_47
action_28 (12) = happyShift action_48
action_28 (13) = happyShift action_49
action_28 (14) = happyShift action_50
action_28 (16) = happyShift action_52
action_28 (17) = happyShift action_53
action_28 (18) = happyShift action_54
action_28 (19) = happyShift action_74
action_28 (41) = happyShift action_63
action_28 (43) = happyShift action_21
action_28 (44) = happyShift action_22
action_28 (49) = happyShift action_65
action_28 (51) = happyShift action_23
action_28 (52) = happyShift action_67
action_28 (56) = happyShift action_24
action_28 (57) = happyShift action_25
action_28 (58) = happyShift action_26
action_28 (59) = happyShift action_27
action_28 (60) = happyShift action_28
action_28 (61) = happyShift action_29
action_28 (62) = happyShift action_30
action_28 (6) = happyGoto action_76
action_28 (8) = happyGoto action_77
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (19) = happyShift action_20
action_29 (43) = happyShift action_21
action_29 (44) = happyShift action_22
action_29 (51) = happyShift action_23
action_29 (56) = happyShift action_24
action_29 (57) = happyShift action_25
action_29 (58) = happyShift action_26
action_29 (59) = happyShift action_27
action_29 (60) = happyShift action_28
action_29 (61) = happyShift action_29
action_29 (62) = happyShift action_30
action_29 (8) = happyGoto action_75
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (10) = happyShift action_46
action_30 (11) = happyShift action_47
action_30 (12) = happyShift action_48
action_30 (13) = happyShift action_49
action_30 (14) = happyShift action_50
action_30 (16) = happyShift action_52
action_30 (17) = happyShift action_53
action_30 (18) = happyShift action_54
action_30 (19) = happyShift action_74
action_30 (41) = happyShift action_63
action_30 (43) = happyShift action_21
action_30 (44) = happyShift action_22
action_30 (49) = happyShift action_65
action_30 (51) = happyShift action_23
action_30 (52) = happyShift action_67
action_30 (56) = happyShift action_24
action_30 (57) = happyShift action_25
action_30 (58) = happyShift action_26
action_30 (59) = happyShift action_27
action_30 (60) = happyShift action_28
action_30 (61) = happyShift action_29
action_30 (62) = happyShift action_30
action_30 (6) = happyGoto action_72
action_30 (8) = happyGoto action_73
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_7

action_32 _ = happyReduce_6

action_33 (34) = happyShift action_71
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (30) = happyShift action_70
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (49) = happyShift action_37
action_35 (50) = happyShift action_38
action_35 (51) = happyShift action_39
action_35 (5) = happyGoto action_69
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (10) = happyShift action_46
action_36 (11) = happyShift action_47
action_36 (12) = happyShift action_48
action_36 (13) = happyShift action_49
action_36 (14) = happyShift action_50
action_36 (15) = happyShift action_51
action_36 (16) = happyShift action_52
action_36 (17) = happyShift action_53
action_36 (18) = happyShift action_54
action_36 (19) = happyShift action_55
action_36 (21) = happyShift action_56
action_36 (22) = happyShift action_57
action_36 (23) = happyShift action_58
action_36 (24) = happyShift action_59
action_36 (25) = happyShift action_60
action_36 (32) = happyShift action_61
action_36 (37) = happyShift action_62
action_36 (41) = happyShift action_63
action_36 (42) = happyShift action_64
action_36 (43) = happyShift action_21
action_36 (44) = happyShift action_22
action_36 (49) = happyShift action_65
action_36 (50) = happyShift action_66
action_36 (51) = happyShift action_23
action_36 (52) = happyShift action_67
action_36 (53) = happyShift action_68
action_36 (56) = happyShift action_24
action_36 (57) = happyShift action_25
action_36 (58) = happyShift action_26
action_36 (59) = happyShift action_27
action_36 (60) = happyShift action_28
action_36 (61) = happyShift action_29
action_36 (62) = happyShift action_30
action_36 (6) = happyGoto action_42
action_36 (7) = happyGoto action_43
action_36 (8) = happyGoto action_44
action_36 (9) = happyGoto action_45
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_13

action_38 _ = happyReduce_14

action_39 _ = happyReduce_15

action_40 (30) = happyShift action_41
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (26) = happyShift action_4
action_41 (27) = happyShift action_5
action_41 (29) = happyShift action_6
action_41 (33) = happyShift action_7
action_41 (35) = happyShift action_8
action_41 (36) = happyShift action_9
action_41 (38) = happyShift action_10
action_41 (46) = happyShift action_11
action_41 (49) = happyShift action_12
action_41 (50) = happyShift action_13
action_41 (51) = happyShift action_14
action_41 (4) = happyGoto action_122
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_53

action_43 _ = happyReduce_55

action_44 _ = happyReduce_54

action_45 _ = happyReduce_5

action_46 (10) = happyShift action_46
action_46 (11) = happyShift action_47
action_46 (12) = happyShift action_48
action_46 (13) = happyShift action_49
action_46 (14) = happyShift action_50
action_46 (16) = happyShift action_52
action_46 (17) = happyShift action_53
action_46 (18) = happyShift action_54
action_46 (19) = happyShift action_79
action_46 (41) = happyShift action_63
action_46 (49) = happyShift action_65
action_46 (52) = happyShift action_67
action_46 (6) = happyGoto action_121
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (10) = happyShift action_46
action_47 (11) = happyShift action_47
action_47 (12) = happyShift action_48
action_47 (13) = happyShift action_49
action_47 (14) = happyShift action_50
action_47 (16) = happyShift action_52
action_47 (17) = happyShift action_53
action_47 (18) = happyShift action_54
action_47 (19) = happyShift action_79
action_47 (41) = happyShift action_63
action_47 (49) = happyShift action_65
action_47 (52) = happyShift action_67
action_47 (6) = happyGoto action_120
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (10) = happyShift action_46
action_48 (11) = happyShift action_47
action_48 (12) = happyShift action_48
action_48 (13) = happyShift action_49
action_48 (14) = happyShift action_50
action_48 (16) = happyShift action_52
action_48 (17) = happyShift action_53
action_48 (18) = happyShift action_54
action_48 (19) = happyShift action_79
action_48 (41) = happyShift action_63
action_48 (49) = happyShift action_65
action_48 (52) = happyShift action_67
action_48 (6) = happyGoto action_119
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (10) = happyShift action_46
action_49 (11) = happyShift action_47
action_49 (12) = happyShift action_48
action_49 (13) = happyShift action_49
action_49 (14) = happyShift action_50
action_49 (16) = happyShift action_52
action_49 (17) = happyShift action_53
action_49 (18) = happyShift action_54
action_49 (19) = happyShift action_79
action_49 (41) = happyShift action_63
action_49 (49) = happyShift action_65
action_49 (52) = happyShift action_67
action_49 (6) = happyGoto action_118
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (10) = happyShift action_46
action_50 (11) = happyShift action_47
action_50 (12) = happyShift action_48
action_50 (13) = happyShift action_49
action_50 (14) = happyShift action_50
action_50 (16) = happyShift action_52
action_50 (17) = happyShift action_53
action_50 (18) = happyShift action_54
action_50 (19) = happyShift action_79
action_50 (41) = happyShift action_63
action_50 (49) = happyShift action_65
action_50 (52) = happyShift action_67
action_50 (6) = happyGoto action_117
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (15) = happyShift action_51
action_51 (19) = happyShift action_105
action_51 (21) = happyShift action_56
action_51 (22) = happyShift action_57
action_51 (23) = happyShift action_58
action_51 (24) = happyShift action_59
action_51 (25) = happyShift action_60
action_51 (32) = happyShift action_61
action_51 (37) = happyShift action_62
action_51 (42) = happyShift action_64
action_51 (50) = happyShift action_66
action_51 (53) = happyShift action_68
action_51 (7) = happyGoto action_116
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (10) = happyShift action_46
action_52 (11) = happyShift action_47
action_52 (12) = happyShift action_48
action_52 (13) = happyShift action_49
action_52 (14) = happyShift action_50
action_52 (16) = happyShift action_52
action_52 (17) = happyShift action_53
action_52 (18) = happyShift action_54
action_52 (19) = happyShift action_79
action_52 (41) = happyShift action_63
action_52 (49) = happyShift action_65
action_52 (52) = happyShift action_67
action_52 (6) = happyGoto action_115
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (15) = happyShift action_51
action_53 (19) = happyShift action_105
action_53 (21) = happyShift action_56
action_53 (22) = happyShift action_57
action_53 (23) = happyShift action_58
action_53 (24) = happyShift action_59
action_53 (25) = happyShift action_60
action_53 (32) = happyShift action_61
action_53 (37) = happyShift action_62
action_53 (42) = happyShift action_64
action_53 (50) = happyShift action_66
action_53 (53) = happyShift action_68
action_53 (7) = happyGoto action_114
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (15) = happyShift action_51
action_54 (19) = happyShift action_105
action_54 (21) = happyShift action_56
action_54 (22) = happyShift action_57
action_54 (23) = happyShift action_58
action_54 (24) = happyShift action_59
action_54 (25) = happyShift action_60
action_54 (32) = happyShift action_61
action_54 (37) = happyShift action_62
action_54 (42) = happyShift action_64
action_54 (50) = happyShift action_66
action_54 (53) = happyShift action_68
action_54 (7) = happyGoto action_113
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (10) = happyShift action_46
action_55 (11) = happyShift action_47
action_55 (12) = happyShift action_48
action_55 (13) = happyShift action_49
action_55 (14) = happyShift action_50
action_55 (15) = happyShift action_51
action_55 (16) = happyShift action_52
action_55 (17) = happyShift action_53
action_55 (18) = happyShift action_54
action_55 (19) = happyShift action_55
action_55 (21) = happyShift action_56
action_55 (22) = happyShift action_57
action_55 (23) = happyShift action_58
action_55 (24) = happyShift action_59
action_55 (25) = happyShift action_60
action_55 (32) = happyShift action_61
action_55 (37) = happyShift action_62
action_55 (41) = happyShift action_63
action_55 (42) = happyShift action_64
action_55 (43) = happyShift action_21
action_55 (44) = happyShift action_22
action_55 (49) = happyShift action_65
action_55 (50) = happyShift action_66
action_55 (51) = happyShift action_23
action_55 (52) = happyShift action_67
action_55 (53) = happyShift action_68
action_55 (56) = happyShift action_24
action_55 (57) = happyShift action_25
action_55 (58) = happyShift action_26
action_55 (59) = happyShift action_27
action_55 (60) = happyShift action_28
action_55 (61) = happyShift action_29
action_55 (62) = happyShift action_30
action_55 (6) = happyGoto action_94
action_55 (7) = happyGoto action_112
action_55 (8) = happyGoto action_83
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (10) = happyShift action_46
action_56 (11) = happyShift action_47
action_56 (12) = happyShift action_48
action_56 (13) = happyShift action_49
action_56 (14) = happyShift action_50
action_56 (16) = happyShift action_52
action_56 (17) = happyShift action_53
action_56 (18) = happyShift action_54
action_56 (19) = happyShift action_79
action_56 (41) = happyShift action_63
action_56 (49) = happyShift action_65
action_56 (52) = happyShift action_67
action_56 (6) = happyGoto action_111
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (10) = happyShift action_46
action_57 (11) = happyShift action_47
action_57 (12) = happyShift action_48
action_57 (13) = happyShift action_49
action_57 (14) = happyShift action_50
action_57 (16) = happyShift action_52
action_57 (17) = happyShift action_53
action_57 (18) = happyShift action_54
action_57 (19) = happyShift action_79
action_57 (41) = happyShift action_63
action_57 (49) = happyShift action_65
action_57 (52) = happyShift action_67
action_57 (6) = happyGoto action_110
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (10) = happyShift action_46
action_58 (11) = happyShift action_47
action_58 (12) = happyShift action_48
action_58 (13) = happyShift action_49
action_58 (14) = happyShift action_50
action_58 (16) = happyShift action_52
action_58 (17) = happyShift action_53
action_58 (18) = happyShift action_54
action_58 (19) = happyShift action_79
action_58 (41) = happyShift action_63
action_58 (49) = happyShift action_65
action_58 (52) = happyShift action_67
action_58 (6) = happyGoto action_109
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (15) = happyShift action_51
action_59 (19) = happyShift action_105
action_59 (21) = happyShift action_56
action_59 (22) = happyShift action_57
action_59 (23) = happyShift action_58
action_59 (24) = happyShift action_59
action_59 (25) = happyShift action_60
action_59 (32) = happyShift action_61
action_59 (37) = happyShift action_62
action_59 (42) = happyShift action_64
action_59 (50) = happyShift action_66
action_59 (53) = happyShift action_68
action_59 (7) = happyGoto action_108
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (15) = happyShift action_51
action_60 (19) = happyShift action_105
action_60 (21) = happyShift action_56
action_60 (22) = happyShift action_57
action_60 (23) = happyShift action_58
action_60 (24) = happyShift action_59
action_60 (25) = happyShift action_60
action_60 (32) = happyShift action_61
action_60 (37) = happyShift action_62
action_60 (42) = happyShift action_64
action_60 (50) = happyShift action_66
action_60 (53) = happyShift action_68
action_60 (7) = happyGoto action_107
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (15) = happyShift action_51
action_61 (19) = happyShift action_105
action_61 (21) = happyShift action_56
action_61 (22) = happyShift action_57
action_61 (23) = happyShift action_58
action_61 (24) = happyShift action_59
action_61 (25) = happyShift action_60
action_61 (32) = happyShift action_61
action_61 (37) = happyShift action_62
action_61 (42) = happyShift action_64
action_61 (50) = happyShift action_66
action_61 (53) = happyShift action_68
action_61 (7) = happyGoto action_106
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (15) = happyShift action_51
action_62 (19) = happyShift action_105
action_62 (21) = happyShift action_56
action_62 (22) = happyShift action_57
action_62 (23) = happyShift action_58
action_62 (24) = happyShift action_59
action_62 (25) = happyShift action_60
action_62 (32) = happyShift action_61
action_62 (37) = happyShift action_62
action_62 (42) = happyShift action_64
action_62 (50) = happyShift action_66
action_62 (53) = happyShift action_68
action_62 (7) = happyGoto action_104
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (10) = happyShift action_46
action_63 (11) = happyShift action_47
action_63 (12) = happyShift action_48
action_63 (13) = happyShift action_49
action_63 (14) = happyShift action_50
action_63 (16) = happyShift action_52
action_63 (17) = happyShift action_53
action_63 (18) = happyShift action_54
action_63 (19) = happyShift action_79
action_63 (41) = happyShift action_63
action_63 (49) = happyShift action_65
action_63 (52) = happyShift action_67
action_63 (6) = happyGoto action_103
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (10) = happyShift action_46
action_64 (11) = happyShift action_47
action_64 (12) = happyShift action_48
action_64 (13) = happyShift action_49
action_64 (14) = happyShift action_50
action_64 (16) = happyShift action_52
action_64 (17) = happyShift action_53
action_64 (18) = happyShift action_54
action_64 (19) = happyShift action_79
action_64 (41) = happyShift action_63
action_64 (49) = happyShift action_65
action_64 (52) = happyShift action_67
action_64 (6) = happyGoto action_102
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_27

action_66 _ = happyReduce_39

action_67 _ = happyReduce_26

action_68 _ = happyReduce_38

action_69 (10) = happyShift action_46
action_69 (11) = happyShift action_47
action_69 (12) = happyShift action_48
action_69 (13) = happyShift action_49
action_69 (14) = happyShift action_50
action_69 (15) = happyShift action_51
action_69 (16) = happyShift action_52
action_69 (17) = happyShift action_53
action_69 (18) = happyShift action_54
action_69 (19) = happyShift action_55
action_69 (21) = happyShift action_56
action_69 (22) = happyShift action_57
action_69 (23) = happyShift action_58
action_69 (24) = happyShift action_59
action_69 (25) = happyShift action_60
action_69 (32) = happyShift action_61
action_69 (37) = happyShift action_62
action_69 (41) = happyShift action_63
action_69 (42) = happyShift action_64
action_69 (43) = happyShift action_21
action_69 (44) = happyShift action_22
action_69 (49) = happyShift action_65
action_69 (50) = happyShift action_66
action_69 (51) = happyShift action_23
action_69 (52) = happyShift action_67
action_69 (53) = happyShift action_68
action_69 (56) = happyShift action_24
action_69 (57) = happyShift action_25
action_69 (58) = happyShift action_26
action_69 (59) = happyShift action_27
action_69 (60) = happyShift action_28
action_69 (61) = happyShift action_29
action_69 (62) = happyShift action_30
action_69 (6) = happyGoto action_42
action_69 (7) = happyGoto action_43
action_69 (8) = happyGoto action_44
action_69 (9) = happyGoto action_101
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (26) = happyShift action_4
action_70 (27) = happyShift action_5
action_70 (29) = happyShift action_6
action_70 (33) = happyShift action_7
action_70 (35) = happyShift action_8
action_70 (36) = happyShift action_9
action_70 (38) = happyShift action_10
action_70 (46) = happyShift action_11
action_70 (49) = happyShift action_12
action_70 (50) = happyShift action_13
action_70 (51) = happyShift action_14
action_70 (4) = happyGoto action_100
action_70 _ = happyFail (happyExpListPerState 70)

action_71 _ = happyReduce_4

action_72 (10) = happyShift action_46
action_72 (11) = happyShift action_47
action_72 (12) = happyShift action_48
action_72 (13) = happyShift action_49
action_72 (14) = happyShift action_50
action_72 (16) = happyShift action_52
action_72 (17) = happyShift action_53
action_72 (18) = happyShift action_54
action_72 (19) = happyShift action_79
action_72 (41) = happyShift action_63
action_72 (49) = happyShift action_65
action_72 (52) = happyShift action_67
action_72 (6) = happyGoto action_99
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (19) = happyShift action_20
action_73 (43) = happyShift action_21
action_73 (44) = happyShift action_22
action_73 (51) = happyShift action_23
action_73 (56) = happyShift action_24
action_73 (57) = happyShift action_25
action_73 (58) = happyShift action_26
action_73 (59) = happyShift action_27
action_73 (60) = happyShift action_28
action_73 (61) = happyShift action_29
action_73 (62) = happyShift action_30
action_73 (8) = happyGoto action_98
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (10) = happyShift action_46
action_74 (11) = happyShift action_47
action_74 (12) = happyShift action_48
action_74 (13) = happyShift action_49
action_74 (14) = happyShift action_50
action_74 (16) = happyShift action_52
action_74 (17) = happyShift action_53
action_74 (18) = happyShift action_54
action_74 (19) = happyShift action_74
action_74 (41) = happyShift action_63
action_74 (43) = happyShift action_21
action_74 (44) = happyShift action_22
action_74 (49) = happyShift action_65
action_74 (51) = happyShift action_23
action_74 (52) = happyShift action_67
action_74 (56) = happyShift action_24
action_74 (57) = happyShift action_25
action_74 (58) = happyShift action_26
action_74 (59) = happyShift action_27
action_74 (60) = happyShift action_28
action_74 (61) = happyShift action_29
action_74 (62) = happyShift action_30
action_74 (6) = happyGoto action_94
action_74 (8) = happyGoto action_83
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_46

action_76 (10) = happyShift action_46
action_76 (11) = happyShift action_47
action_76 (12) = happyShift action_48
action_76 (13) = happyShift action_49
action_76 (14) = happyShift action_50
action_76 (16) = happyShift action_52
action_76 (17) = happyShift action_53
action_76 (18) = happyShift action_54
action_76 (19) = happyShift action_79
action_76 (41) = happyShift action_63
action_76 (49) = happyShift action_65
action_76 (52) = happyShift action_67
action_76 (6) = happyGoto action_97
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (19) = happyShift action_20
action_77 (43) = happyShift action_21
action_77 (44) = happyShift action_22
action_77 (51) = happyShift action_23
action_77 (56) = happyShift action_24
action_77 (57) = happyShift action_25
action_77 (58) = happyShift action_26
action_77 (59) = happyShift action_27
action_77 (60) = happyShift action_28
action_77 (61) = happyShift action_29
action_77 (62) = happyShift action_30
action_77 (8) = happyGoto action_96
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (10) = happyShift action_46
action_78 (11) = happyShift action_47
action_78 (12) = happyShift action_48
action_78 (13) = happyShift action_49
action_78 (14) = happyShift action_50
action_78 (16) = happyShift action_52
action_78 (17) = happyShift action_53
action_78 (18) = happyShift action_54
action_78 (19) = happyShift action_79
action_78 (41) = happyShift action_63
action_78 (49) = happyShift action_65
action_78 (52) = happyShift action_67
action_78 (6) = happyGoto action_95
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (10) = happyShift action_46
action_79 (11) = happyShift action_47
action_79 (12) = happyShift action_48
action_79 (13) = happyShift action_49
action_79 (14) = happyShift action_50
action_79 (16) = happyShift action_52
action_79 (17) = happyShift action_53
action_79 (18) = happyShift action_54
action_79 (19) = happyShift action_79
action_79 (41) = happyShift action_63
action_79 (49) = happyShift action_65
action_79 (52) = happyShift action_67
action_79 (6) = happyGoto action_94
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (10) = happyShift action_46
action_80 (11) = happyShift action_47
action_80 (12) = happyShift action_48
action_80 (13) = happyShift action_49
action_80 (14) = happyShift action_50
action_80 (16) = happyShift action_52
action_80 (17) = happyShift action_53
action_80 (18) = happyShift action_54
action_80 (19) = happyShift action_79
action_80 (41) = happyShift action_63
action_80 (49) = happyShift action_65
action_80 (52) = happyShift action_67
action_80 (6) = happyGoto action_93
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (10) = happyShift action_46
action_81 (11) = happyShift action_47
action_81 (12) = happyShift action_48
action_81 (13) = happyShift action_49
action_81 (14) = happyShift action_50
action_81 (16) = happyShift action_52
action_81 (17) = happyShift action_53
action_81 (18) = happyShift action_54
action_81 (19) = happyShift action_79
action_81 (41) = happyShift action_63
action_81 (49) = happyShift action_65
action_81 (52) = happyShift action_67
action_81 (6) = happyGoto action_92
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (10) = happyShift action_46
action_82 (11) = happyShift action_47
action_82 (12) = happyShift action_48
action_82 (13) = happyShift action_49
action_82 (14) = happyShift action_50
action_82 (16) = happyShift action_52
action_82 (17) = happyShift action_53
action_82 (18) = happyShift action_54
action_82 (19) = happyShift action_79
action_82 (41) = happyShift action_63
action_82 (49) = happyShift action_65
action_82 (52) = happyShift action_67
action_82 (6) = happyGoto action_91
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (20) = happyShift action_90
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (26) = happyShift action_4
action_84 (27) = happyShift action_5
action_84 (29) = happyShift action_6
action_84 (33) = happyShift action_7
action_84 (35) = happyShift action_8
action_84 (36) = happyShift action_9
action_84 (38) = happyShift action_10
action_84 (46) = happyShift action_11
action_84 (49) = happyShift action_12
action_84 (50) = happyShift action_13
action_84 (51) = happyShift action_14
action_84 (4) = happyGoto action_89
action_84 _ = happyFail (happyExpListPerState 84)

action_85 _ = happyReduce_9

action_86 _ = happyReduce_10

action_87 _ = happyReduce_11

action_88 _ = happyReduce_12

action_89 (40) = happyShift action_138
action_89 _ = happyFail (happyExpListPerState 89)

action_90 _ = happyReduce_49

action_91 _ = happyReduce_40

action_92 _ = happyReduce_41

action_93 _ = happyReduce_42

action_94 (20) = happyShift action_137
action_94 _ = happyFail (happyExpListPerState 94)

action_95 _ = happyReduce_43

action_96 _ = happyReduce_47

action_97 _ = happyReduce_44

action_98 _ = happyReduce_48

action_99 _ = happyReduce_45

action_100 (31) = happyFail []
action_100 _ = happyReduce_2

action_101 (28) = happyShift action_136
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (10) = happyShift action_46
action_102 (11) = happyShift action_47
action_102 (12) = happyShift action_48
action_102 (13) = happyShift action_49
action_102 (14) = happyShift action_50
action_102 (16) = happyShift action_52
action_102 (17) = happyShift action_53
action_102 (18) = happyShift action_54
action_102 (19) = happyShift action_79
action_102 (41) = happyShift action_63
action_102 (49) = happyShift action_65
action_102 (52) = happyShift action_67
action_102 (6) = happyGoto action_135
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (10) = happyShift action_46
action_103 (11) = happyShift action_47
action_103 (12) = happyShift action_48
action_103 (13) = happyShift action_49
action_103 (14) = happyShift action_50
action_103 (16) = happyShift action_52
action_103 (17) = happyShift action_53
action_103 (18) = happyShift action_54
action_103 (19) = happyShift action_79
action_103 (41) = happyShift action_63
action_103 (49) = happyShift action_65
action_103 (52) = happyShift action_67
action_103 (6) = happyGoto action_134
action_103 _ = happyFail (happyExpListPerState 103)

action_104 _ = happyReduce_35

action_105 (15) = happyShift action_51
action_105 (19) = happyShift action_105
action_105 (21) = happyShift action_56
action_105 (22) = happyShift action_57
action_105 (23) = happyShift action_58
action_105 (24) = happyShift action_59
action_105 (25) = happyShift action_60
action_105 (32) = happyShift action_61
action_105 (37) = happyShift action_62
action_105 (42) = happyShift action_64
action_105 (50) = happyShift action_66
action_105 (53) = happyShift action_68
action_105 (7) = happyGoto action_112
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (15) = happyShift action_51
action_106 (19) = happyShift action_105
action_106 (21) = happyShift action_56
action_106 (22) = happyShift action_57
action_106 (23) = happyShift action_58
action_106 (24) = happyShift action_59
action_106 (25) = happyShift action_60
action_106 (32) = happyShift action_61
action_106 (37) = happyShift action_62
action_106 (42) = happyShift action_64
action_106 (50) = happyShift action_66
action_106 (53) = happyShift action_68
action_106 (7) = happyGoto action_133
action_106 _ = happyFail (happyExpListPerState 106)

action_107 _ = happyReduce_33

action_108 _ = happyReduce_32

action_109 (15) = happyShift action_51
action_109 (19) = happyShift action_105
action_109 (21) = happyShift action_56
action_109 (22) = happyShift action_57
action_109 (23) = happyShift action_58
action_109 (24) = happyShift action_59
action_109 (25) = happyShift action_60
action_109 (32) = happyShift action_61
action_109 (37) = happyShift action_62
action_109 (42) = happyShift action_64
action_109 (50) = happyShift action_66
action_109 (53) = happyShift action_68
action_109 (7) = happyGoto action_132
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (15) = happyShift action_51
action_110 (19) = happyShift action_105
action_110 (21) = happyShift action_56
action_110 (22) = happyShift action_57
action_110 (23) = happyShift action_58
action_110 (24) = happyShift action_59
action_110 (25) = happyShift action_60
action_110 (32) = happyShift action_61
action_110 (37) = happyShift action_62
action_110 (42) = happyShift action_64
action_110 (50) = happyShift action_66
action_110 (53) = happyShift action_68
action_110 (7) = happyGoto action_131
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (15) = happyShift action_51
action_111 (19) = happyShift action_105
action_111 (21) = happyShift action_56
action_111 (22) = happyShift action_57
action_111 (23) = happyShift action_58
action_111 (24) = happyShift action_59
action_111 (25) = happyShift action_60
action_111 (32) = happyShift action_61
action_111 (37) = happyShift action_62
action_111 (42) = happyShift action_64
action_111 (50) = happyShift action_66
action_111 (53) = happyShift action_68
action_111 (7) = happyGoto action_130
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (20) = happyShift action_129
action_112 _ = happyFail (happyExpListPerState 112)

action_113 _ = happyReduce_23

action_114 _ = happyReduce_22

action_115 (15) = happyShift action_51
action_115 (19) = happyShift action_105
action_115 (21) = happyShift action_56
action_115 (22) = happyShift action_57
action_115 (23) = happyShift action_58
action_115 (24) = happyShift action_59
action_115 (25) = happyShift action_60
action_115 (32) = happyShift action_61
action_115 (37) = happyShift action_62
action_115 (42) = happyShift action_64
action_115 (50) = happyShift action_66
action_115 (53) = happyShift action_68
action_115 (7) = happyGoto action_128
action_115 _ = happyFail (happyExpListPerState 115)

action_116 _ = happyReduce_28

action_117 _ = happyReduce_24

action_118 (10) = happyShift action_46
action_118 (11) = happyShift action_47
action_118 (12) = happyShift action_48
action_118 (13) = happyShift action_49
action_118 (14) = happyShift action_50
action_118 (16) = happyShift action_52
action_118 (17) = happyShift action_53
action_118 (18) = happyShift action_54
action_118 (19) = happyShift action_79
action_118 (41) = happyShift action_63
action_118 (49) = happyShift action_65
action_118 (52) = happyShift action_67
action_118 (6) = happyGoto action_127
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (10) = happyShift action_46
action_119 (11) = happyShift action_47
action_119 (12) = happyShift action_48
action_119 (13) = happyShift action_49
action_119 (14) = happyShift action_50
action_119 (16) = happyShift action_52
action_119 (17) = happyShift action_53
action_119 (18) = happyShift action_54
action_119 (19) = happyShift action_79
action_119 (41) = happyShift action_63
action_119 (49) = happyShift action_65
action_119 (52) = happyShift action_67
action_119 (6) = happyGoto action_126
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (10) = happyShift action_46
action_120 (11) = happyShift action_47
action_120 (12) = happyShift action_48
action_120 (13) = happyShift action_49
action_120 (14) = happyShift action_50
action_120 (16) = happyShift action_52
action_120 (17) = happyShift action_53
action_120 (18) = happyShift action_54
action_120 (19) = happyShift action_79
action_120 (41) = happyShift action_63
action_120 (49) = happyShift action_65
action_120 (52) = happyShift action_67
action_120 (6) = happyGoto action_125
action_120 _ = happyFail (happyExpListPerState 120)

action_121 (10) = happyShift action_46
action_121 (11) = happyShift action_47
action_121 (12) = happyShift action_48
action_121 (13) = happyShift action_49
action_121 (14) = happyShift action_50
action_121 (16) = happyShift action_52
action_121 (17) = happyShift action_53
action_121 (18) = happyShift action_54
action_121 (19) = happyShift action_79
action_121 (41) = happyShift action_63
action_121 (49) = happyShift action_65
action_121 (52) = happyShift action_67
action_121 (6) = happyGoto action_124
action_121 _ = happyFail (happyExpListPerState 121)

action_122 (31) = happyShift action_123
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (26) = happyShift action_4
action_123 (27) = happyShift action_5
action_123 (29) = happyShift action_6
action_123 (33) = happyShift action_7
action_123 (35) = happyShift action_8
action_123 (36) = happyShift action_9
action_123 (38) = happyShift action_10
action_123 (46) = happyShift action_11
action_123 (49) = happyShift action_12
action_123 (50) = happyShift action_13
action_123 (51) = happyShift action_14
action_123 (4) = happyGoto action_141
action_123 _ = happyFail (happyExpListPerState 123)

action_124 _ = happyReduce_16

action_125 _ = happyReduce_17

action_126 _ = happyReduce_18

action_127 _ = happyReduce_19

action_128 _ = happyReduce_21

action_129 _ = happyReduce_37

action_130 _ = happyReduce_29

action_131 _ = happyReduce_30

action_132 _ = happyReduce_31

action_133 _ = happyReduce_34

action_134 _ = happyReduce_20

action_135 (15) = happyShift action_51
action_135 (19) = happyShift action_105
action_135 (21) = happyShift action_56
action_135 (22) = happyShift action_57
action_135 (23) = happyShift action_58
action_135 (24) = happyShift action_59
action_135 (25) = happyShift action_60
action_135 (32) = happyShift action_61
action_135 (37) = happyShift action_62
action_135 (42) = happyShift action_64
action_135 (50) = happyShift action_66
action_135 (53) = happyShift action_68
action_135 (7) = happyGoto action_140
action_135 _ = happyFail (happyExpListPerState 135)

action_136 (26) = happyShift action_4
action_136 (27) = happyShift action_5
action_136 (29) = happyShift action_6
action_136 (33) = happyShift action_7
action_136 (35) = happyShift action_8
action_136 (36) = happyShift action_9
action_136 (38) = happyShift action_10
action_136 (46) = happyShift action_11
action_136 (49) = happyShift action_12
action_136 (50) = happyShift action_13
action_136 (51) = happyShift action_14
action_136 (4) = happyGoto action_139
action_136 _ = happyFail (happyExpListPerState 136)

action_137 _ = happyReduce_25

action_138 _ = happyReduce_3

action_139 _ = happyReduce_8

action_140 _ = happyReduce_36

action_141 _ = happyReduce_1

happyReduce_1 = happyReduce 6 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 Then happy_var_4 Else happy_var_6
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 4 4 happyReduction_2
happyReduction_2 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 Then happy_var_4
	) `HappyStk` happyRest

happyReduce_3 = happyReduce 5 4 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (While happy_var_2 Do happy_var_4
	) `HappyStk` happyRest

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn9  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Assign happy_var_2 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_2  4 happyReduction_6
happyReduction_6 (HappyTerminal (TokenFile _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (ReadFile happy_var_2
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_2  4 happyReduction_7
happyReduction_7 (HappyTerminal (TokenString _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (Write happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happyReduce 6 4 happyReduction_8
happyReduction_8 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let Assign happy_var_3 happy_var_4 In happy_var_6
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyTerminal (TokenString _ happy_var_3))
	(HappyTerminal (TokenFile _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (WriteFile happy_var_2 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyTerminal happy_var_3)
	_
	(HappyTerminal (TokenVar _  happy_var_1))
	 =  HappyAbsSyn4
		 (SetType happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyTerminal happy_var_3)
	_
	(HappyTerminal (TokenVar _  happy_var_1))
	 =  HappyAbsSyn4
		 (SetType happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyTerminal happy_var_3)
	_
	(HappyTerminal (TokenVar _  happy_var_1))
	 =  HappyAbsSyn4
		 (SetType happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  5 happyReduction_13
happyReduction_13 (HappyTerminal (TokenVar _  happy_var_1))
	 =  HappyAbsSyn5
		 (VarInt happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  5 happyReduction_14
happyReduction_14 (HappyTerminal (TokenVar _  happy_var_1))
	 =  HappyAbsSyn5
		 (VarArr happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  5 happyReduction_15
happyReduction_15 (HappyTerminal (TokenVar _  happy_var_1))
	 =  HappyAbsSyn5
		 (VarBool happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  6 happyReduction_16
happyReduction_16 (HappyAbsSyn6  happy_var_3)
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Plus happy_var_2 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  6 happyReduction_17
happyReduction_17 (HappyAbsSyn6  happy_var_3)
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Minus happy_var_2 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  6 happyReduction_18
happyReduction_18 (HappyAbsSyn6  happy_var_3)
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Times happy_var_2 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  6 happyReduction_19
happyReduction_19 (HappyAbsSyn6  happy_var_3)
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Div happy_var_2 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  6 happyReduction_20
happyReduction_20 (HappyAbsSyn6  happy_var_3)
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Power happy_var_2 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  6 happyReduction_21
happyReduction_21 (HappyAbsSyn7  happy_var_3)
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (GetI happy_var_2 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  6 happyReduction_22
happyReduction_22 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Head happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_2  6 happyReduction_23
happyReduction_23 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Last happy_var_2
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  6 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Double happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  6 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  6 happyReduction_26
happyReduction_26 (HappyTerminal (TokenInt _  happy_var_1))
	 =  HappyAbsSyn6
		 (Nr happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  6 happyReduction_27
happyReduction_27 (HappyTerminal (TokenVar _  happy_var_1))
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  7 happyReduction_28
happyReduction_28 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (Sum happy_var_2
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  7 happyReduction_29
happyReduction_29 (HappyAbsSyn7  happy_var_3)
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (AddLst happy_var_2 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  7 happyReduction_30
happyReduction_30 (HappyAbsSyn7  happy_var_3)
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (AddFst happy_var_2 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  7 happyReduction_31
happyReduction_31 (HappyAbsSyn7  happy_var_3)
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (Remove happy_var_2 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  7 happyReduction_32
happyReduction_32 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (Init happy_var_2
	)
happyReduction_32 _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_2  7 happyReduction_33
happyReduction_33 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (Tail happy_var_2
	)
happyReduction_33 _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  7 happyReduction_34
happyReduction_34 (HappyAbsSyn7  happy_var_3)
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (Concat happy_var_2 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_2  7 happyReduction_35
happyReduction_35 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (Revert happy_var_2
	)
happyReduction_35 _ _  = notHappyAtAll 

happyReduce_36 = happyReduce 4 7 happyReduction_36
happyReduction_36 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (GetXY happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_37 = happySpecReduce_3  7 happyReduction_37
happyReduction_37 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  7 happyReduction_38
happyReduction_38 (HappyTerminal (TokenArr _ happy_var_1))
	 =  HappyAbsSyn7
		 (Arr happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  7 happyReduction_39
happyReduction_39 (HappyTerminal (TokenVar _  happy_var_1))
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  8 happyReduction_40
happyReduction_40 (HappyAbsSyn6  happy_var_3)
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (Less happy_var_2 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  8 happyReduction_41
happyReduction_41 (HappyAbsSyn6  happy_var_3)
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (LessEq happy_var_2 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  8 happyReduction_42
happyReduction_42 (HappyAbsSyn6  happy_var_3)
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (Greater happy_var_2 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  8 happyReduction_43
happyReduction_43 (HappyAbsSyn6  happy_var_3)
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (GreaterEq happy_var_2 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  8 happyReduction_44
happyReduction_44 (HappyAbsSyn6  happy_var_3)
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (Eq happy_var_2 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  8 happyReduction_45
happyReduction_45 (HappyAbsSyn6  happy_var_3)
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (NotEq happy_var_2 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_2  8 happyReduction_46
happyReduction_46 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (Not happy_var_2
	)
happyReduction_46 _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  8 happyReduction_47
happyReduction_47 (HappyAbsSyn8  happy_var_3)
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (Eq happy_var_2 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  8 happyReduction_48
happyReduction_48 (HappyAbsSyn8  happy_var_3)
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (NotEq happy_var_2 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  8 happyReduction_49
happyReduction_49 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  8 happyReduction_50
happyReduction_50 _
	 =  HappyAbsSyn8
		 (true
	)

happyReduce_51 = happySpecReduce_1  8 happyReduction_51
happyReduction_51 _
	 =  HappyAbsSyn8
		 (false
	)

happyReduce_52 = happySpecReduce_1  8 happyReduction_52
happyReduction_52 (HappyTerminal (TokenVar _  happy_var_1))
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  9 happyReduction_53
happyReduction_53 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  9 happyReduction_54
happyReduction_54 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  9 happyReduction_55
happyReduction_55 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 64 64 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenPlus _ -> cont 10;
	TokenMinus _ -> cont 11;
	TokenTimes _ -> cont 12;
	TokenDiv _ -> cont 13;
	TokenDouble _ -> cont 14;
	TokenSum _ -> cont 15;
	TokenGet _ -> cont 16;
	TokenHead _ -> cont 17;
	TokenLast _ -> cont 18;
	TokenLParen _ -> cont 19;
	TokenRParen _ -> cont 20;
	TokenAddEnd _ -> cont 21;
	TokenAddFront _ -> cont 22;
	TokenRemove _ -> cont 23;
	TokenInit _ -> cont 24;
	TokenTail _ -> cont 25;
	TokenEq _ -> cont 26;
	TokenLet _ -> cont 27;
	TokenIn _ -> cont 28;
	TokenIf _ -> cont 29;
	TokenThen _ -> cont 30;
	TokenElse _ -> cont 31;
	TokenConcat _ -> cont 32;
	TokenBegin _ -> cont 33;
	TokenEnd _ -> cont 34;
	TokenRead _ -> cont 35;
	TokenWrite _ -> cont 36;
	TokenRevert _ -> cont 37;
	TokenWhile _ -> cont 38;
	TokenDo _ -> cont 39;
	TokenEndWhile _ -> cont 40;
	TokenPower  _ -> cont 41;
	TokenGetXY _ -> cont 42;
	TokenTrue _ -> cont 43;
	TokenFalse _ -> cont 44;
	TokenBool _ -> cont 45;
	TokenWriteFile _ -> cont 46;
	TokenArrType _ -> cont 47;
	TokenIntType _ -> cont 48;
	TokenVar _  happy_dollar_dollar -> cont 49;
	TokenVar _  happy_dollar_dollar -> cont 50;
	TokenVar _  happy_dollar_dollar -> cont 51;
	TokenInt _  happy_dollar_dollar -> cont 52;
	TokenArr _ happy_dollar_dollar -> cont 53;
	TokenOfType _ -> cont 54;
	TokenFile _ happy_dollar_dollar -> cont 55;
	TokenLess _ -> cont 56;
	TokenLessEq _ -> cont 57;
	TokenGreater _ -> cont 58;
	TokenGreaterEq _ -> cont 59;
	TokenEqEq _ -> cont 60;
	TokenNot _ -> cont 61;
	TokenNotEq _ -> cont 62;
	TokenString _ happy_dollar_dollar -> cont 63;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 64 tk tks = happyError' (tks, explist)
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
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError x = error "Morsmordre! There is a parsing error on "++((tokenPosn x):"")++" !"

data IntExpr = Plus IntExpr IntExpr
             | Minus IntExpr IntExpr
             | Times IntExpr IntExpr
             | Div IntExpr IntExpr
             | Power IntExpr IntExpr
             | GetI IntExpr ArrExpr
             | Head ArrExpr
             | Last ArrExpr
             | Double IntExpr
             | VarInt horcruxInt
             | int
             deriving Show

data ArrExpr = Sum ArrExpr
             | AddLst IntExpr ArrExpr
             | AddFst IntExpr ArrExpr
             | Remove IntExpr ArrExpr
             | Init ArrExpr
             | Tail ArrExpr
             | Concat ArrExpr ArrExpr
             | Revert ArrExpr
             | GetXY IntExpr IntExpr ArrExpr
             | VarArr horcruxArr
             | arr
             deriving Show

data BoolExpr = Less IntExpr IntExpr
              | LessEq IntExpr IntExpr
              | Greater IntExpr IntExpr
              | GreaterEq IntExpr IntExpr
              | Eq IntExpr IntExpr
              | NotEq IntExpr IntExpr
              | Not BoolExpr
              | Eq BoolExpr BoolExpr
              | NotEq BoolExpr BoolExpr
              | VarBool horcruxBool
              | lumos
              | nox
              deriving Show

data Action = If BoolExpr Then Action Else Action
            | While BoolExpr Do Action
            | If BoolExpr Then Action
            | Assign Var Data
            | ReadFile String
            | Write String
            | Let Assign Var Data In Action
            | SetType Var Type
            deriving Show

data Data = IntExpr | ArrExpr | BoolExpr deriving Show

data Type = Nr | Arr | Boo deriving Show
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
