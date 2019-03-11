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
  Geminio                            {TokenDuplicate _ }
  Episkey                            {TokenSum _ }
  Accio                              {TokenGet _ }
  Ascendio                           {TokenHead _ }
  PrioriIncantatem                   {TokenLast _ }
  Lumos                              {TokenLParen _ }
  Nox                                {TokenRParen _ }
  Depulso                            {TokenAddEnd _ }
  Mobilibarbus                       {TokenAddFront _ }
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
  Horcrux                            {TokenVar _  $$ }
  int                                {TokenInt _  $$ }
  arr                                {TokenArr _ $$ }
  ':'                                {TokenHasType _ }


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
parseError _ = error "Morsmordre! There is a parsing error!"
data Spell = Engorgio Spell Spell
           | Reducio Spell Spell
           | Inflatus Spell Spell
           | Diminuando Spell Spell
           | AlarteAscendere Spell Spell
           | Accio Spell Charm
           | Ascendio Charm
           | PrioriIncantatem Charm
           | Geminio Spell
           | Alohomora Spell Colloportus
           | Lumos Charm Nox
           | Horcrux String
           | Wizard Int
           deriving Show

data Charm = Episkey Charm
           | Depulso Spell Charm
           | Mobilibarbus Spell Charm
           | Expelliarmus Spell Charm
           | Ventus Charm
           | Obliviate Charm
           | Epoximise Charm Charm
           | EverteStatum Charm
           | Alohomora Charm Colloportus
           | Lumos Charm Nox
           | Horcrux String
           | Hogwarts [Int]
           deriving Show

data Jinx = 
          | Lumos Jinx Nox
          deriving Show

data Cast = Confundo Jinx Incendio Cast Aguamenti Cast
           | WingardiumLeviosa Jinx Imperio Cast FiniteIncantatem
           | Confundo Jinx Incendio Cast
           | Alohomora Cast Colloportus
           | Fidelius Horcrux Magic
           | Legilimens String
           | Flagrate String
           | Horcrux : Wizard
           | Horcrux : Hogwarts
           deriving Show

data Magic = Spell | Charm | Jinx deriving Show
}
