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
  Illegibilus        ;
  Engorgio                           { tok (\p s -> TokenPlus p)}
  Reducio                            { tok (\p s -> TokenMinus p) }
  Inflatus                           { tok (\p s -> TokenTimes p) }
  Diminuando                         { tok (\p s -> TokenDiv p) }
  Geminio                            { tok (\p s -> TokenDuplicate p) }
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
  Colloportus                        { tok (\p s -> TokenEnd p) }
  Legilimens                         { tok (\p s -> TokenRead p) }
  Flagrate                           { tok (\p s -> TokenWrite p) }
  Apparate                           { tok (\p s -> TokenWriteFile p)}
  EverteStatum                       { tok (\p s -> TokenRevert p) }
  WingardiumLeviosa                  { tok (\p s -> TokenWhile p) }
  Imperio                            { tok (\p s -> TokenDo p)}
  FiniteIncantatem                   { tok (\p s -> TokenEndWhile p) }
  AlarteAscendere                    { tok (\p s -> TokenPower p) }
  Hogwarts                           { tok (\p s -> TokenArrType p) }
  Wizard                             { tok (\p s -> TokenIntType p) }
  Light                              { tok (\p s -> TokenBool p)}
  Confringo                          { tok (\p s -> TokenGetXY p)}
  $alpha [$alpha $digit \_ \`]*      { tok (\p s -> TokenVar p s) }
  $digit+                            { tok (\p s -> TokenInt p (read s)) }
  \[ [$digit+,$digit+]* \]           { tok (\p s -> TokenArr p s) }
  \:                                 { tok (\p s -> TokenOfType p) }
  \;                                 { tok (\p s -> TokenEndStatement p)}
  $alpha [$alpha $digit \_] * \.txt  { tok (\p s -> TokenFile p s)}

{
-- Each action has type :: AlexPosn -> String -> SpellBookToken

-- Helper function
tok f p s = f p s

-- The token type:
data SpellBookToken =
  TokenPlus AlexPosn        	|
  TokenMinus  AlexPosn       	|
  TokenTimes AlexPosn       	|
  TokenDiv AlexPosn         	|
  TokenDuplicate AlexPosn     |
  TokenSum AlexPosn           |
  TokenGet AlexPosn         	|
  TokenHead AlexPosn         	|
  TokenLast AlexPosn         	|
  TokenLParen AlexPosn        |
  TokenRParen AlexPosn        |
  TokenAddEnd AlexPosn       	|
  TokenAddFront AlexPosn      |
  TokenRemove AlexPosn       	|
  TokenInit AlexPosn        	|
  TokenTail AlexPosn        	|
  TokenEq AlexPosn           	|
  TokenLet AlexPosn         	|
  TokenIn AlexPosn          	|
  TokenIf AlexPosn           	|
  TokenThen AlexPosn        	|
  TokenElse AlexPosn        	|
  TokenConcat AlexPosn       	|
  TokenWhile AlexPosn        	|
  TokenDo AlexPosn          	|
  TokenEndWhile AlexPosn     	|
  TokenRead AlexPosn        	|
  TokenWrite AlexPosn        	|
  TokenRevert AlexPosn       	|
  TokenBegin AlexPosn        	|
  TokenEnd AlexPosn        	  |
  TokenPower AlexPosn       	|
  TokenArrType AlexPosn      	|
  TokenIntType AlexPosn      	|
  TokenInt AlexPosn Int      	|
  TokenArr AlexPosn String    |
  TokenVar AlexPosn String    |
  TokenOfType AlexPosn        |
  TokenWriteFile AlexPosn     |
  TokenTrue AlexPosn          |
  TokenFalse AlexPosn         |
  TokenBool AlexPosn          |
  TokenGetXY AlexPosn         |
  TokenEndStatement AlexPosn  |
  TokenFile AlexPosn String
  deriving (Eq,Show)

tokenPosn :: SpellBookToken -> String
tokenPosn (TokenPlus (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMinus (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTimes (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDiv (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDuplicate (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
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
tokenPosn (TokenEndWhile (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRead (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenWrite (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRevert (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenBegin (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPower (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenArrType (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIntType (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInt (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOfType (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEndStatement (AlexPn a l c)) = show(l) ++ ":" ++ show(C)
tokenPosn (TokenFile (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenArr (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTrue (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFalse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenWriteFile (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenBool (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenGetXY (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

}
