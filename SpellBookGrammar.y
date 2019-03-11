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
  Lumos                              {TokenTrue _ }
  Nox                                {TokenFalse _ }
  Light                              {TokenBool _ }
  Apparate                           {TokenWriteFile _ }
  Hogwarts                           {TokenArrType _ }
  Wizard                             {TokenIntType _ }
  horcrux                            {TokenVar _  $$ }
  int                                {TokenInt _  $$ }
  arr                                {TokenArr _ $$ }
  ':'                                {TokenOfType _ }
--  endStatement                       {TokenEndStatement _ }
  file                               {TokenFile _ $$ }
  Entomorphis                        {TokenLess _ }
  CarpeRetractum                     {TokenLessEq _ }
  Defodio                            {TokenGreater _ }
  Deprimo                            {TokenGreaterEq _ }
  Caterwauling                       {TokenEqEq _ }
  Crucio                             {TokenNot _ }
  Impedimenta                        {TokenNotEq _ }


%right in
%left '+' '-'
%left '*' '/'
%left NEG
%%
Spell : Engorgio Spell Spell                { Engorgio $2 $3 }
      | Reducio Spell Spell                 { Reducio $2 $3 }
      | Inflatus Spell Spell                { Inflatus $2 $3 }
      | Diminuando Spell Spell              { Diminuando $2 $3 }
      | AlarteAscendere Spell Spell         { AlarteAscendere $2 $3 }
      | Accio Spell Charm                   { Accio $2 $3 }
      | Ascendio Charm                      { Ascendio $2 }
      | PrioriIncantatem Charm              { PrioriIncantatem $2 }
      | Geminio Spell                       { Geminio $2}
      | '(' Spell ')'                       { $2 }
      | int                                 { Wizard $1 }
      | horcrux                             { $1 }

Charm : Ferula Charm                        { Ferula $2 }
      | Depulso Spell Charm                 { Depulso $2 $3 }
      | Flipendo Spell Charm                { Flipendo $2 $3 }
      | Expelliarmus Spell Charm            { Expelliarmus $2 $3 }
      | Ventus Charm                        { Ventus $2 }
      | Obliviate Charm                     { Obliviate $2 }
      | Epoximise Charm Charm               { Epoximise $2 $3 }
      | EverteStatum Charm                  { EverteStatum $2 }
      | Confringo Spell Spell Charm         { Confringo $2 $3 $4 }
      | '(' Charm ')'                       { $2 }
      | arr                                 { Hogwarts $1 }
      | horcrux                             { $1 }

Jinx : Entomorphis Spell Spell            { Entomorphis $2 $3 }
     | CarpeRetractum Spell Spell         { CarpeRetractum $2 $3 }
     | Defodio Spell Spell                { Defodio $2 $3 }
     | Deprimo Spell Spell                { Deprimo $2 $3 }
     | Caterwauling Spell Spell           { Caterwauling $2 $3 }
     | Impedimenta Spell Spell            { Imprediments $2 $3 }
     | Crucio Jinx                        { Crucio $2 }
     | '(' Jinx ')'                       {  $2 }
     | lumos                              { lumos }
     | nox                                { lox }
     | horcrux                            { $1 }

Cast : Confundo Jinx Incendio Cast Aguamenti Cast                   { Confundo $2 Incendio $4 Aguamenti $6 }
     | Confundo Jinx Incendio Cast                                  { Confundo $2 Incendio $4 }
     | WingardiumLeviosa Jinx Imperio Cast FiniteIncantatem         { WingardiumLeviosa $2 Imperio $4 FiniteIncantatem}
     | Alohomora Cast Colloportus                                   { Alohomora $2 Colloportus }
     | Fidelius Horcrux Magic                                       { Fidelius $2 $3 }
     | Legilimens file                                              { Legilimens $2 }
     | Flagrate String                                              { Flagrate $2 }
     | Appare Fideius Horcrux Magic Vestigium Cast                  { Appare Fideius $3 $4 Vestigium $6 }
     | Apparate file String                                         { Apparate $2 $3 }
     | horcrux ':' Type                                          { Duro $1 $3 }

Type : Hogwarts       {Hogwarts}
     | Wizard         {Wizard}
     | Light          {Light}

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
           | int
           deriving Show

data Charm = Ferula Charm
           | Depulso Spell Charm
           | Flipendo Spell Charm
           | Expelliarmus Spell Charm
           | Ventus Charm
           | Obliviate Charm
           | Epoximise Charm Charm
           | EverteStatum Charm
           | Confringo Spell Spell Charm
           | arr
           deriving Show

data Jinx = Entomorphis Spell Spell
          | CarpeRetractum Spell Spell
          | Defodio Spell Spell
          | Deprimo Spell Spell
          | Caterwauling Spell Spell
          | Impedimenta Spell Spell
          | Crucio Jinx
          | lumos
          | nox
          deriving Show

data Cast = Confundo Jinx Incendio Cast Aguamenti Cast
          | WingardiumLeviosa Jinx Imperio Cast FiniteIncantatem
          | Confundo Jinx Incendio Cast
          | Alohomora Cast Colloportus
          | Fidelius Horcrux Magic
          | Legilimens String
          | Flagrate String
          | Appare Fidelius Horcrux Magic Vestigium Cast
          | Duro Horcrux Type
          deriving Show

data Magic = Spell | Charm | Jinx deriving Show
}
