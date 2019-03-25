import SpellBookTokens
import SpellBookGrammar
import SpellBookEval

import System.Environment
import Control.Exception
import System.IO

main :: IO ()
main = catch main' noParse

env :: Environment
env = []

main' = do putStrLn ("SpellBook - 'I solemnly swear that I am up to no good'>")
           sourceText <- getLine
           let parsedProg = parseCalc (alexScanTokens sourceText)
           putStrLn ("Evaluates to " ++ show(fst(fst(evalBody (parsedProg) env []))) ++ "\n")
           let env = snd(fst(evalBody (parsedProg) env []))
           --putStrLn (show env)
           main'

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               putStrLn("\n----------------")
               hPutStrLn stderr err
               putStrLn("\n----------------")
               main


