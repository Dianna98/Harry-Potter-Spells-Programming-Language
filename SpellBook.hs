import SpellBookTokens
import SpellBookGrammar
import SpellBookEval

import System.Environment
import Control.Exception
import System.IO


main :: IO ()
main = catch main' noParse

main' = do
           sourceText <- readFile "in.txt"
           putStrLn ("Input : " ++ sourceText)
           -- let parsedProg = parseCalc (alexScanTokens sourceText)
           -- putStrLn ("Parsed as " ++ (show parsedProg))

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               return ()
