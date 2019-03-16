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
  Geminio                            {TokenDouble _ }
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
  Light                              {TokenBool _ }
  Apparate                           {TokenWriteFile _ }
  Hogwarts                           {TokenArrType _ }
  Wizard                             {TokenIntType _ }
--  horcrux                            {TokenVar _  $$ }
  horcruxInt                         {TokenVar _  $$ }
  horcruxArr                         {TokenVar _  $$ }
  horcruxBool                        {TokenVar _  $$ }
  int                                {TokenInt _  $$ }
  arr                                {TokenArr _ $$ }
  ':'                                {TokenOfType _ }
  file                               {TokenFile _ $$ }
  Entomorphis                        {TokenLess _ }
  CarpeRetractum                     {TokenLessEq _ }
  Defodio                            {TokenGreater _ }
  Deprimo                            {TokenGreaterEq _ }
  Caterwauling                       {TokenEqEq _ }
  Crucio                             {TokenNot _ }
  Impedimenta                        {TokenNotEq _ }
--  str                                {TokenString _ $$ }

%right Appare
%right Vestigium
%right Fidelius
%nonassoc int horcrux arr '(' ')' lumos nox
%nonassoc Entomorphis CarpeRetractum Defodio Deprimo Caterwauling Impedimenta
%nonassoc Legilimens Confringo Incendio Aguamenti
%left Depulso Flipendo Ventus Obliviate Expelliarmus EverteStatum Confringo
%left Epoximise
%left Engorgio Reducio
%left Inflatus Diminuando Geminio
%left AlarteAscendere
%left Accio Ascendio PrioriIncantatem Ferula
%left Crucio
%left Flagrate Apparate
%left WingardiumLeviosa Imperio
%%
Cast : Confundo Jinx Incendio Cast Aguamenti Cast                   { IfThenElse $2 $4 $6 }
     | Confundo Jinx Incendio Cast                                  { IfThen $2 $4 }
     | WingardiumLeviosa Jinx Imperio Cast FiniteIncantatem         { While $2 $4 }
     | Alohomora Cast Colloportus                                   { $2 }
     | Fidelius Horcrux Magic                                       { Assign $2 $3 }
     | Legilimens file                                              { ReadFile $2 }
     | Flagrate int                                                 { Write $2 }
     | Appare Fidelius Horcrux Magic Vestigium Cast                 { Let $3 $4 $6 }
     | Apparate file int                                            { WriteFile $2 $3 }
    -- | horcrux ':' Type                                             { SetType $1 $3 }
     | horcruxInt ':' Wizard                                        { SetTypeInt $1 $3 }
     | horcruxArr ':' Hogwarts                                      { SetTypeArr $1 $3 }
     | horcruxBool ':' Light                                        { SetTypeBool $1 $3 }

Horcrux : horcruxInt          { VarInt $1 }
        | horcruxArr          { VarArr $1 }
        | horcruxBool         { VarBool $1}

Spell : Engorgio Spell Spell                { Plus $2 $3 }
      | Reducio Spell Spell                 { Minus $2 $3 }
      | Inflatus Spell Spell                { Times $2 $3 }
      | Diminuando Spell Spell              { Div $2 $3 }
      | AlarteAscendere Spell Spell         { Power $2 $3 }
      | Accio Spell Charm                   { GetI $2 $3 }
      | Ascendio Charm                      { Head $2 }
      | PrioriIncantatem Charm              { Last $2 }
      | Geminio Spell                       { Double $2}
      | '(' Spell ')'                       { $2 }
      | int                                 { Nr $1 }
      | horcruxInt                          { $1 }

Charm : Ferula Charm                        { Sum $2 }
      | Depulso Spell Charm                 { AddLst $2 $3 }
      | Flipendo Spell Charm                { AddFst $2 $3 }
      | Expelliarmus Spell Charm            { Remove $2 $3 }
      | Ventus Charm                        { Init $2 }
      | Obliviate Charm                     { Tail $2 }
      | Epoximise Charm Charm               { Concat $2 $3 }
      | EverteStatum Charm                  { Revert $2 }
      | Confringo Spell Spell Charm         { GetXY $2 $3 $4 }
      | '(' Charm ')'                       { $2 }
      | arr                                 { Arr $1 }
      | horcruxArr                          { $1 }

Jinx : Entomorphis Spell Spell              { Less $2 $3 }
     | CarpeRetractum Spell Spell           { LessEq $2 $3 }
     | Defodio Spell Spell                  { Greater $2 $3 }
     | Deprimo Spell Spell                  { GreaterEq $2 $3 }
     | Caterwauling Spell Spell             { EqInt $2 $3 }
     | Impedimenta Spell Spell              { NotEqInt $2 $3 }
     | Crucio Jinx                          { Not $2 }
     | Caterwauling Jinx Jinx               { EqBool $2 $3 }
     | Impedimenta Jinx Jinx                { NotEqBool $2 $3 }
     | '(' Jinx ')'                         { $2 }
     | lumos                                { Lumos }
     | nox                                  { Nox }
     | horcruxBool                          { $1 }

Magic : Spell                        { $1 }
      | Jinx                         { $1 }
      | Charm                        { $1 }

-- Type : Hogwarts       {Arr}
--      | Wizard         {Nr}
--      | Light          {Boo}

{
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
             | Nr Int
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
             | VarArr horcruxArr
             | Arr [Int]
             deriving (Show,Eq)

data BoolExpr = Less IntExpr IntExpr
              | LessEq IntExpr IntExpr
              | Greater IntExpr IntExpr
              | GreaterEq IntExpr IntExpr
              | EqInt IntExpr IntExpr
              | NotEqInt IntExpr IntExpr
              | Not BoolExpr
              | EqBool BoolExpr BoolExpr
              | NotEqBool BoolExpr BoolExpr
              | VarBool horcruxBool
              | Lumos
              | Nox
              deriving (Show,Eq)

data Action = IfThenElse BoolExpr Action Action
            | While BoolExpr Action
            | IfThen BoolExpr Action
            | Assign String Data
            | ReadFile String
            | Write String
            | Let String Data Action
            | SetType Var Type
            deriving (Show,Eq)

data Data = IntExpr | ArrExpr | BoolExpr deriving (Show,Eq)

data Type = NrType | ArrType | BooType deriving (Show,Eq)


}
