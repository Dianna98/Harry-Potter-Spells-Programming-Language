import SpellBookTokens
import SpellBookGrammar
import SpellBookEval

import System.Environment
import Control.Exception
import System.IO


main :: IO ()
main = catch main' noParse

main' = do
           sourceText <- readFile "pr2.spl"
          -- putStrLn ("Input : \n" ++ sourceText)
           let parsedProg = parseCalc (alexScanTokens sourceText)
          -- putStrLn ("Parsed as : \n" ++ (show parsedProg))
           input <- readFile "in2.txt"
           let solution = snd(evalBody parsedProg (initEnv 0 (parseFile input)) [] )
           if (length solution>0) then
               putStrLn (write solution (length (head solution)))
               else putStrLn ""

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               return ()
