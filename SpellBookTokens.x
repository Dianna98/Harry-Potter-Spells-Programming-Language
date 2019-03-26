{
module SpellBookTokens where
}

%wrapper "posn"
$digit = 0-9
-- digits
$letter = [a-zA-Z]
-- alphabetic characters
$symbol = [~$letter]

tokens :-
  Illegibilus [$letter $symbol \n]* MischiefManaged    ;
  Illegibilus [$letter $symbol]*\n         ;
  I $white [$letter \- $white]* $white solemnly $white swear $white that $white I $white am $white up $white to $white no $white good    ;
  We $white [$letter \- $white]* $white solemnly $white swear $white that $white we $white are $white up $white to $white no $white good ;
  $white+       ;
  Engorgio                           { tok (\p s -> TokenPlus p)}
  Reducio                            { tok (\p s -> TokenMinus p) }
  Geminio                            { tok (\p s -> TokenTimes p) }
  Diminuando                         { tok (\p s -> TokenDiv p) }
  Caterwauling                       { tok (\p s -> TokenMod p)}
  Ferula                             { tok (\p s -> TokenSum p) }
  Accio                              { tok (\p s -> TokenGet p) }
  Ascendio                           { tok (\p s -> TokenHead p) }
  PrioriIncantatem                   { tok (\p s -> TokenLast p )}
  \(                                 { tok (\p s -> TokenLParen p) }
  \)                                 { tok (\p s -> TokenRParen p) }
  lumos                              { tok (\p s -> TokenTrue p)}
  nox                                { tok (\p s -> TokenFalse p)}
  Depulso                            { tok (\p s -> TokenAddEnd p) }
  Flipendo                           { tok (\p s -> TokenAddFront p) }
  Expelliarmus                       { tok (\p s -> TokenRemove p) }
  Ventus                             { tok (\p s -> TokenInit p) }
  Obliviate                          { tok (\p s -> TokenTail p) }
  Fidelius                           { tok (\p s -> TokenEq p) }
  Appare                             { tok (\p s -> TokenLet p) }
  Vestigium                          { tok (\p s -> TokenIn p) }
  Confundo                           { tok (\p s -> TokenIf p) }
  Incendio                           { tok (\p s -> TokenThen p) }
  Aguamenti                          { tok (\p s -> TokenElse p) }
  Epoximise                          { tok (\p s -> TokenConcat p) }
  Alohomora                          { tok (\p s -> TokenBegin p) }
  Informous                          { tok (\p s -> TokenLength p)}
  Legilimens                         { tok (\p s -> TokenRead p ) }
  Flagrate                           { tok (\p s -> TokenWrite p) }
  EverteStatum                       { tok (\p s -> TokenRevert p) }
  WingardiumLeviosa                  { tok (\p s -> TokenWhile p) }
  Imperio                            { tok (\p s -> TokenDo p)}
  FiniteIncantatem                   { tok (\p s -> TokenEnd p) }
  AlarteAscendere                    { tok (\p s -> TokenPower p) }
  Entomorphis                        { tok (\p s -> TokenLess p)}
  CarpeRetractum                     { tok (\p s -> TokenLessEq p)}
  Defodio                            { tok (\p s -> TokenGreater p)}
  Deprimo                            { tok (\p s -> TokenGreaterEq p)}
  Episkey                            { tok (\p s -> TokenEqEq p)}
  Crucio                             { tok (\p s -> TokenNot p)}
  Impedimenta                        { tok (\p s -> TokenNotEq p)}
  Confringo                          { tok (\p s -> TokenGetXY p)}
  Evanesce                           { tok (\p s -> TokenOr p)}
  Serpensortia                       { tok (\p s -> TokenAnd p)}
  Pack                               { tok (\p s -> TokenInputSize p)}
  \- $digit+                         { tok (\p s -> TokenInt p (read s))}
  \,                                 { tok (\p s -> TokenComma p)}
  \[                                 { tok (\p s -> TokenArrBeginning p)}
  \]                                 { tok (\p s -> TokenArrEnd p)}
  $digit+                            { tok (\p s -> TokenInt p (read s)) }
  $letter [$letter $digit \_ \`]*    { tok (\p s -> TokenVar p s) }
  [$letter $symbol]                  { tok (\p s -> TokenErr p s)}

{
-- Each action has type :: AlexPosn -> String -> SpellBookToken

-- Helper function
tok f p s = f p s

-- The token type:
data SpellBookToken =
  TokenPlus AlexPosn          |
  TokenMinus AlexPosn         |
  TokenTimes AlexPosn         |
  TokenDiv AlexPosn           |
  TokenMod AlexPosn           |
  TokenDouble AlexPosn        |
  TokenSum AlexPosn           |
  TokenGet AlexPosn           |
  TokenHead AlexPosn          |
  TokenLast AlexPosn          |
  TokenLParen AlexPosn        |
  TokenRParen AlexPosn        |
  TokenAddEnd AlexPosn        |
  TokenAddFront AlexPosn      |
  TokenRemove AlexPosn        |
  TokenInit AlexPosn          |
  TokenTail AlexPosn          |
  TokenEq AlexPosn            |
  TokenLet AlexPosn           |
  TokenIn AlexPosn            |
  TokenIf AlexPosn            |
  TokenThen AlexPosn          |
  TokenElse AlexPosn          |
  TokenConcat AlexPosn        |
  TokenWhile AlexPosn         |
  TokenDo AlexPosn            |
  TokenRead AlexPosn          |
  TokenWrite AlexPosn         |
  TokenRevert AlexPosn        |
  TokenBegin AlexPosn         |
  TokenEnd AlexPosn           |
  TokenPower AlexPosn         |
  TokenInt AlexPosn Int       |
  TokenVar AlexPosn String    |
  TokenTrue AlexPosn          |
  TokenFalse AlexPosn         |
  TokenGetXY AlexPosn         |
  TokenNot AlexPosn           |
  TokenLess AlexPosn          |
  TokenLessEq AlexPosn        |
  TokenGreater AlexPosn       |
  TokenGreaterEq AlexPosn     |
  TokenEqEq AlexPosn          |
  TokenNotEq AlexPosn         |
  TokenComma AlexPosn         |
  TokenLength AlexPosn        |
  TokenInputSize AlexPosn     |
  TokenArrBeginning AlexPosn  |
  TokenAnd AlexPosn           |
  TokenOr AlexPosn            |
  TokenErr AlexPosn String    |
  TokenArrEnd AlexPosn
  deriving (Eq,Show)

tokenPosn :: SpellBookToken -> String
tokenPosn (TokenPlus (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMinus (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTimes (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDiv (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMod (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDouble (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSum (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenGet (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenHead (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLast (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAddEnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAddFront (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRemove (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInit (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTail (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLet (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIn (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenThen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenConcat (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenWhile (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDo (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRead (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenWrite (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRevert (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenBegin (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPower (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInt (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTrue (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFalse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenGetXY (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenNot (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEqEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLess (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLessEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenGreater (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenGreaterEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenNotEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenComma (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenArrBeginning (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenArrEnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLength (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInputSize (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOr (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenErr (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)


}
