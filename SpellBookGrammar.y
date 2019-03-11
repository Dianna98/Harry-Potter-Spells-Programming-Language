{
module SpellBookGrammar where
import SpellBookTokens
}

%name parseCalc
%tokentype { Token }
%error { parseError }
%token
  Engorgio                           {TokenPlus _ }
  Reducio                            {TokenMinus _ }
  Inflatus                           {TokenTimes _ }
  Diminuando                         {TokenDiv _ }
  Gemininio                          {TokenDuplicate _ }
  Episkey                            {TokenSum _ }
  Accio                              {TokenGet _ }
  Ascendio                           {TokenHead _ }
  PrioriIncantatem                   {TokenLast _ }
  Lumos                              {TokenLParen _ }
  Nox                                {TokenRParen _ }
  Depulso                            {TokenAddEnd _ }
  Mibilibarbus                       {TokenAddFront _ }
  Expelliarmus                       {TokenRemove _ }
  Ventus                             {TokenInit _ }
  Obliviate                          {TokenTail _ }
  Fidelius                           {TokenEq _ }
  Appare                             {TokenLet _ }
  Vestigium                          {TokenIn _ }
  Confundo                           {TokenIf _ }
  Incendio                           {TokenThen _ }
  Aguamenti                          {TokenElse _ }
  Epoximise                          {TokenConcat _ }
  Alohomora                          {TokenBegin _ }
  Colloportus                        {TokenEnd _ }
  Legilimens                         {TokenRead _ }
  Flagrate                           {TokenWrite _ }
  EverteStatum                       {TokenRevert _ }
  WingardiumLeviosa                  {TokenWhile _ }
  Imperio                            {TokenDo _ }
  FiniteIncantatem                   {TokenEndWhile _ }
  AlarteAscendere                    {TokenPower  _ }
  Hogwarts                           {TokenArrType _ }
  Wizard                             {TokenIntType _ }
  $alpha [$alpha $digit \_ \’]*      {TokenVar _  $$}
  $digit+                            {TokenInt _  $$}
  \:                                 {TokenHasType _ }


%right in
%left '+' '-'
%left '*' '/'
%left NEG
%%
Exp : let var '=' Exp in Exp { Let $2 $4 $6 }
    | Exp '+' Exp            { Plus $1 $3 }
    | Exp '-' Exp            { Minus $1 $3 }
    | Exp '*' Exp            { Times $1 $3 }
    | Exp '/' Exp            { Div $1 $3 }
    | '(' Exp ')'            { $2 }
    | '-' Exp %prec NEG      { Negate $2 }
    | int                    { Int $1 }
    | var                    { Var $1 }

{
parseError :: [Token] -> a
parseError _ = error "Morsmordre! There is a parsing error"
data Exp = Let String Exp Exp
         | Plus Exp Exp
         | Minus Exp Exp
         | Times Exp Exp
         | Div Exp Exp
         | Negate Exp
         | Int Int
         | Var String
         deriving Show
}
