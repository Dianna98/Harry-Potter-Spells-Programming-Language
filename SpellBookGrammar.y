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
  Caterwauling                       {TokenMod _ }
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
  Legilimens                         {TokenRead _ }
  Flagrate                           {TokenWrite _ }
  EverteStatum                       {TokenRevert _ }
  WingardiumLeviosa                  {TokenWhile _ }
  Imperio                            {TokenDo _ }
  FiniteIncantatem                   {TokenEnd _ }
  AlarteAscendere                    {TokenPower  _ }
  Confringo                          {TokenGetXY _ }
  Entomorphis                        {TokenLess _ }
  CarpeRetractum                     {TokenLessEq _ }
  Defodio                            {TokenGreater _ }
  Deprimo                            {TokenGreaterEq _ }
  Episkey                            {TokenEqEq _ }
  Crucio                             {TokenNot _ }
  Impedimenta                        {TokenNotEq _ }
  Evanesce                           {TokenOr _ }
  Serpensortia                       {TokenAnd _ }
  lumos                              {TokenTrue _ }
  nox                                {TokenFalse _ }
  horcrux                            {TokenVar _ $$ }
  int                                {TokenInt _  $$ }
  ','                                {TokenComma _ }
  '['                                {TokenArrBeginning _ }
  ']'                                {TokenArrEnd _ }
  Informous                          {TokenLength _ }
  Pack                               {TokenInputSize _ }

%right Appare
%right Vestigium
%right Fidelius
%nonassoc int horcrux arr '(' ')' lumos nox Alohomora Colloportus
%nonassoc Entomorphis CarpeRetractum Defodio Deprimo Episkey Impedimenta Evanesce Serpensortia
%nonassoc Legilimens Confringo Incendio Aguamenti
%left Depulso Flipendo Ventus Obliviate Expelliarmus EverteStatum Confringo
%left Epoximise
%left Engorgio Reducio
%left Diminuando Geminio Caterwauling
%left AlarteAscendere
%left Accio Ascendio PrioriIncantatem Ferula
%left Crucio
%left Flagrate
%left WingardiumLeviosa Imperio
%%
Body : Alohomora Body                                          { Begin $2 }
     | Expr Body                                               { Multi $1 $2 }
     | Expr FiniteIncantatem                                   { Single $1 }

Expr : Engorgio Expr Expr                                              { Plus $2 $3 }
     | Reducio Expr Expr                                               { Minus $2 $3 }
     | Geminio Expr Expr                                               { Times $2 $3 }
     | Diminuando Expr Expr                                            { Div $2 $3 }
     | Caterwauling Expr Expr                                          { Mod $2 $3 }
     | AlarteAscendere Expr Expr                                       { Power $2 $3 }
     | Accio Expr Expr                                                 { Get $2 $3 }
     | Ascendio Expr                                                   { Head $2 }
     | PrioriIncantatem Expr                                           { Last $2 }
     | Informous Expr                                                  { Length $2 }
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
     | Episkey Expr Expr                                               { Eq $2 $3 }
     | Impedimenta Expr Expr                                           { NotEq $2 $3 }
     | Crucio Expr                                                     { Not $2 }
     | Serpensortia Expr Expr                                          { And $2 $3 }
     | Evanesce Expr Expr                                              { Or $2 $3 }
     | '(' Expr ')'                                                    { Br $2 }
     | int                                                             { Nr $1 }
     | lumos                                                           { Logic True }
     | nox                                                             { Logic False }
     | horcrux                                                         { Var $1 }
     | Confundo Expr Incendio Body Aguamenti Body                      { IfThenElse $2 $4 $6 }
     | Confundo Expr Incendio Body                                     { IfThen $2 $4 }
     | WingardiumLeviosa Expr Imperio Body                             { While $2 $4 }
     --| VeraVerto '{' horcrux Arr '}' Body                              { ForEach $3 $4 $6 }
     | Appare Fidelius horcrux Expr Vestigium Body                     { Let $3 $4 $6 }
     | Fidelius horcrux Expr                                           { Assign $2 $3 }
     | Flagrate Expr                                                   { Write $2 }
     | Legilimens Expr                                                 { GetInArr $2}
     | '[' Arr ']'                                                     { Arr $2 }
     | Pack                                                            { InputSize}

Arr :  {- empty -}       { [] }
     | int               { [$1]}
     | Arr ',' int       { $1 ++ ($3:[])}

{
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


}
