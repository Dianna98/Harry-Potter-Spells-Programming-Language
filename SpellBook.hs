import SpellBookTokens
import SpellBookGrammar
import SpellBookEval

import System.Environment
import Control.Exception
import System.IO

main :: IO ()
main = catch main' noParse

main' = do
           (fileName : _ ) <- getArgs
           sourceText <- readFile fileName
           let parsedProg = parseCalc (alexScanTokens sourceText)
           input <- getContents
           let result = snd(evalBody parsedProg (initEnv 0 (parseFile input)) [] )
           if (length result>0) then
               putStrLn (write result (length (head result)))
               else putStrLn ""

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               return ()
