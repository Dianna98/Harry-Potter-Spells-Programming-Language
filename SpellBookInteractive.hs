import SpellBookTokens
import SpellBookGrammar
import SpellBookEval

import System.Environment
import Control.Exception
import System.IO

main :: IO ()
main = catch main' noParse

env::Environment
env = []

main' = do
          let loop = do
                    putStr ("SpellBook - 'I solemnly swear that I am up to no good'>\t")
                    sourceText <- getLine
                    let parsedProg = parseCalc (alexScanTokens sourceText)
                    let result = fst(evalBody (parsedProg) env [])
                    putStrLn ("Result:\t" ++ (getActual(fst result)) ++ "\n")
                    let updated = snd(result)
                    let env = updated
                    loop
          loop

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               putStrLn("\n----------------")
               hPutStrLn stderr err
               putStrLn("\n----------------")
               main


