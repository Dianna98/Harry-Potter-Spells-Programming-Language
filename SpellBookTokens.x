{
module SpellBookTokens where
}

%wrapper "posn"
$digit = 0-9
-- digits
$alpha = [a-zA-Z]
-- alphabetic characters

tokens :-
$white+       ;
  "Illegibilus".*        ;
  Engorgio        { tok (\p s -> TokenPlus p)}
  Reducio         { tok (\p s -> TokenMinus p) }
  Inflatus          { tok (\p s -> TokenTimes p) }
  Diminuando             { tok (\p s -> TokenDiv p) }
  Gemininio           { tok (\p s -> TokenDouble p) }
  Episkey           { tok (\p s -> TokenSum p) }
  Accio              { tok (\p s -> TokenGet p) }
  Ascendio              { tok (\p s -> TokenHead p) }
  PrioriIncantatem             { tok (\p s -> TokenLast p )}
  Lumos             { tok (\p s -> TokenLParen p) }
  Nox             { tok (\p s -> TokenRParen p) }
  Depulso             { tok (\p s -> TokenAddEnd p) }
  Mibilibarbus             { tok (\p s -> TokenAddFront p) }
  Expelliarmus             { tok (\p s -> TokenRemove p) }
  Ventus             { tok (\p s -> TokenInit p) }
  Obliviate             { tok (\p s -> TokenTail p) }
  Fidelius             { tok (\p s -> TokenEq p) }
  Appare             { tok (\p s -> TokenLet p) }
  Vestigium             { tok (\p s -> TokenIn p) }
  Imperio             { tok (\p s -> TokenIf p) }
  Incendio             { tok (\p s -> TokenThen p) }
  Aguamenti             { tok (\p s -> TokenElse p) }
  Epoximise             { tok (\p s -> TokenConcat p) }
  Alohomora             { tok (\p s -> TokenOpen p) }
  Colloportus             { tok (\p s -> TokenClose p) }
  Legilimens             { tok (\p s -> TokenRead p) }
  Flagrate             { tok (\p s -> TokenWrite p) }
  EverteStatum             { tok (\p s -> TokenRevert p) }
  WingardiumLeviosa             { tok (\p s -> TokenBegin p) }
  FiniteIncantatem             { tok (\p s -> TokenEnd p) }
  AlarteAscendere             { tok (\p s -> TokenPower p) }
  Hogwarts             { tok (\p s -> TokenArrType p) }
  Wizard             { tok (\p s -> TokenIntType p) }
  $alpha+          { tok (\p s -> TokenVar p) }
  $digit+          { tok (\p s -> TokenInt p (read s)) }
  

{
-- Each action has type :: AlexPosn -> String -> SpellBookToken

-- Helper function
tok f p s = f p s

-- The token type:
data SpellBookToken =
  TokenForward AlexPosn        |
  TokenRotate  AlexPosn        |
  TokenDigit AlexPosn Int      |
  TokenInt AlexPosn Int        |
  TokenCheck AlexPosn          |
  TokenIf AlexPosn             |
  TokenThen AlexPosn           |
  TokenElse AlexPosn           |
  TokenLeft AlexPosn           |
  TokenRight AlexPosn          |
  TokenSeq AlexPosn            |
  TokenLParen AlexPosn         |
  TokenRParen AlexPosn
  deriving (Eq,Show)

tokenPosn :: SpellBookToken -> String
tokenPosn (TokenForward (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRotate  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDigit  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInt  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenCheck  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenThen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLeft (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRight (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSeq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)


}
