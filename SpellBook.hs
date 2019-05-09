import SpellBookTokens
import SpellBookGrammar
import SpellBookEval

import System.Environment
import Control.Exception
import System.IO

main :: IO ()
main = catch main' noParse

main' = do
           --(fileName : _ ) <- getArgs
           --sourceText <- readFile fileName
           sourceText <- readFile "pr6.spl"
           --putStrLn (show sourceText)
           let parsedProg = parseCalc (alexScanTokens sourceText)
           --input <- getContents
           --putStrLn (show parsedProg)
           input <- readFile "in2.txt"
           let result = snd(evalBody parsedProg (initEnv 0 (parseFile input)) [] )
           if (length result>0) then
               putStrLn (write result (getMaxLength result 0))
               else putStr ""

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               putStrLn("\n----------------------------")
               hPutStr stderr err
               putStrLn("\n----------------------------")
               return ()
