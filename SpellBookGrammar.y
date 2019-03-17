{
module SpellBookGrammar where
import SpellBookTokens
}

%name parseCalc
%tokentype { SpellBookToken }
%error { parseError }
%token
  Engorgio                           {TokenPlus _ }
  Reducio                            {TokenMinus _ }
  Geminio                            {TokenTimes _ }
  Diminuando                         {TokenDiv _ }
  Ferula                             {TokenSum _ }
  Accio                              {TokenGet _ }
  Ascendio                           {TokenHead _ }
  PrioriIncantatem                   {TokenLast _ }
  '('                                {TokenLParen _ }
  ')'                                {TokenRParen _ }
  Depulso                            {TokenAddEnd _ }
  Flipendo                           {TokenAddFront _ }
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
  Confringo                          {TokenGetXY _ }
  lumos                              {TokenTrue _ }
  nox                                {TokenFalse _ }
 -- Light                              {TokenBool _ }
  Apparate                           {TokenWriteFile _ }
--  Hogwarts                           {TokenArrType _ }
--  Wizard                             {TokenIntType _ }
  horcruxInt                         {TokenVar _  $$ }
  horcruxArr                         {TokenVar _  $$ }
  horcruxBool                        {TokenVar _  $$ }
  int                                {TokenInt _  $$ }
 -- arr                                {TokenArr _ $$ }
 -- ':'                                {TokenOfType _ }
 -- file                               {TokenFile _ $$ }
  Entomorphis                        {TokenLess _ }
  CarpeRetractum                     {TokenLessEq _ }
  Defodio                            {TokenGreater _ }
  Deprimo                            {TokenGreaterEq _ }
  Caterwauling                       {TokenEqEq _ }
  Crucio                             {TokenNot _ }
  Impedimenta                        {TokenNotEq _ }
  newLine                            {TokenNewLine _ }
  '-'                                {TokenDash _ }
  ','                                {TokenComma _ }
--  space                              {TokenSpace _ }
--  newLn                              {TokenNewLn _ }

%right Appare
%right Vestigium
%right Fidelius
%nonassoc int horcruxInt horcruxArr horcruxBool arr '(' ')' lumos nox Alohomora Colloportus
%nonassoc Entomorphis CarpeRetractum Defodio Deprimo Caterwauling Impedimenta
%nonassoc Legilimens Confringo Incendio Aguamenti
%left Depulso Flipendo Ventus Obliviate Expelliarmus EverteStatum Confringo
%left Epoximise
%left Engorgio Reducio
%left Diminuando Geminio
%left AlarteAscendere
%left Accio Ascendio PrioriIncantatem Ferula
%left Crucio
%left Flagrate
%left WingardiumLeviosa Imperio
%left newLine
%%
Expr : Engorgio Expr Expr                                              { Plus $2 $3 }
     | Reducio Expr Expr                                               { Minus $2 $3 }
     | Geminio Expr Expr                                               { Times $2 $3 }
     | Diminuando Expr Expr                                            { Div $2 $3 }
     | AlarteAscendere Expr Expr                                       { Power $2 $3 }
     | Accio Expr Expr                                                 { Get $2 $3 }
     | Ascendio Expr                                                   { Head $2 }
     | PrioriIncantatem Expr                                           { Last $2 }
     | Ferula Expr                                                     { Sum $2 }
     | Depulso Expr Expr                                               { AddLst $2 $3 }
     | Flipendo Expr Expr                                              { AddFst $2 $3 }
     | Expelliarmus Expr Expr                                          { Remove $2 $3 }
     | Ventus Expr                                                     { Init $2 }
     | Obliviate Expr                                                  { Tail $2 }
     | Epoximise Expr Expr                                             { Concat $2 $3 }
     | EverteStatum Expr                                               { Revert $2 }
     | Confringo Expr Expr Expr                                        { GetXY $2 $3 $4 }
     | Entomorphis Expr Expr                                           { Less $2 $3 }
     | CarpeRetractum Expr Expr                                        { LessEq $2 $3 }
     | Defodio Expr Expr                                               { Greater $2 $3 }
     | Deprimo Expr Expr                                               { GreaterEq $2 $3 }
     | Caterwauling Expr Expr                                          { Eq $2 $3 }
     | Impedimenta Expr Expr                                           { NotEq $2 $3 }
     | Crucio Expr                                                     { Not $2 }
     | '(' Expr ')'                                                    { Br $2 }
     | int                                                             { Nr $1 }
     | lumos                                                           { True }
     | nox                                                             { False }
     --| Arr                                                             { Arr $1 }
     | Var                                                             { $1 }
     | Confundo Expr Incendio Body Aguamenti Body                      { IfThenElse $2 $4 $6 }
     | Confundo Expr Incendio Body                                     { IfThen $2 $4 }
     | WingardiumLeviosa Expr Imperio Body FiniteIncantatem            { While $2 $4 }
     | Appare Fidelius Var Expr Vestigium Body                         { Let $3 $4 $6 }
     | Fidelius Var Expr                                               { Assign $2 $3 }
     | Flagrate Expr                                                   { Write $2 }

Var :  horcruxInt                                                      { VarInt $1 }
     | horcruxArr                                                      { VarArr $1 }
     | horcruxBool                                                     { VarBool $1 }

Body : Alohomora Body                                                  { Begin $2 }
     | Expr newLine Body                                               { Multi $1 $3 }
     | Expr Colloportus                                                { Single $1 }

-- Arr :  {- empty -}                            { [] }
--      | '-' int                                { [-$2] }
--      | int                                    { [$1] }
--      | Arr ',' int                            { $3 : $1 }
--      | Arr ',' '-' int                        { (-$4) : $1 }

{
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
          | Var
          | Bool
          | IfThenElse Expr Body Body
          | IfThen Expr Body
          | While Expr Body
          | Let Var Expr Body
          | Assign Var Expr
          | Write Expr
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

data Var = VarInt String
         | VarArr String
         | VarBool String
         deriving (Show,Eq)

data Body = Begin Body
          | Multi Expr Body
          | Single Expr
          deriving (Show,Eq)



}
