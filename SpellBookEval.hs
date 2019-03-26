module SpellBookEval where
import SpellBookGrammar
import Data.List

data Value = Integer Int | Boolean Bool | Array [Int] deriving (Show,Eq)

-- this function parses the data from the input file

parseFile :: String -> [[Int]]
parseFile s = getStreams x (length (head x))
               where x = map getInts (map words (lines s))

getInts :: [String] -> [Int]
getInts [] = []
getInts (s:ss) = case reads s :: [(Integer, String)] of
                         [(_, "")] -> (read s):getInts ss
                         _         -> error "Morsmordre! Invalid input file! Integer expected!"

getStreams :: [[Int]] -> Int -> [[Int]]
getStreams s n | n < 1 = []
               | otherwise = getStreams s (n-1) ++ ((getN s (n-1)):[])

getN :: [[Int]] -> Int -> [Int]
getN [] x = []
getN (s:ss) x  | x < length s = (get x (index s)) : getN ss x
               | otherwise = error "Morsmordre! Invalid input file! There cannot be streams of different lengths!"

-- this function prints the output in the required format
write :: [[Int]] -> Int -> String
write x n | n <= 0 = ""
          | otherwise = (write x (n-1)) ++ (printN (n-1) x) ++ "\n"

-- this function returns the string of all elements on the nth position of each list within the list of Ints
printN :: Int -> [[Int]] -> String
printN n [] = ""
printN n (x:xs)     | n < length x = (show (get n (index x)))++" "++ printN n xs
                    | otherwise = printN n xs

-- this function returns the length of the longest list
getMaxLength :: [[Int]] -> Int -> Int
getMaxLength [] max = max
getMaxLength (x:xs) max  | length x > max = getMaxLength xs (length x)
                         | otherwise = getMaxLength xs max

-- this function initialises the environment with the data from the input file
initEnv :: Int -> [[Int]] -> Environment
initEnv _ [] = []
initEnv n (x:xs) = ("horcrux_" ++ (show n),Arr x):initEnv (n+1) xs

-- this function returns the actual integer of a terminal Nr expression and gives an error if another type is found
getNr :: Expr -> Int
getNr (Nr x) = x
getNr _ = error "Expecto Patronum! Type mismatched! Integer Expected!"

-- this function returns the actual Bool of a terminal Logic expression and gives an error if another type is found
getBool :: Expr -> Bool
getBool (Logic x) = x
getBool _ = error "Expecto Patronum! Type mismatched! Boolean Expected!"

-- this function returns the actual array [Int] of a terminal Arr expression and gives an error if another type is found
getArr :: Expr -> [Int]
getArr (Arr x) = x
getArr _ = error "Expecto Patronum! Type mismatched! Array of integers expected!"

-- this function returns the actual integer from a Value Integer and gives an error if another type is found
getNrVal :: Value -> Int
getNrVal (Integer x) = x
getNrVal _ = error "Expecto Patronum! Type mismatched! Integer Expected!"

-- this function returns the actual bool from a Value Boolean and gives an error if another type is found
getBoolVal :: Value -> Bool
getBoolVal (Boolean x) = x
getBoolVal _ = error "Expecto Patronum! Type mismatched! Boolean Expected!"

-- this function returns the actual array of integers from a Value Array and gives an error if another type is found
getArrVal :: Value -> [Int]
getArrVal (Array x) = x
getArrVal _ = error "Expecto Patronum! Type mismatched! Array of integers expected!"

-- this function updates a variable's value in the Environment
update :: String -> Expr -> Environment -> Environment
update var expr [] = [(var,expr)]
update var expr (e:es)   | var == fst(e) = update var expr es
                         | otherwise = e: update var expr es

-- this function returns the expression associated to a value within the Environment
getVar :: String -> Environment -> Environment -> (Expr,Environment)
getVar x [] env = error ("Riddikulus! Variable "++x++" not in scope!")
getVar x (e:es) env  | (fst e) == x = (snd e,env)
                     | ((take 8 x) == "horcrux_") && (lookup x env == Nothing) = (Arr [], update x (Arr []) env)
                     | otherwise = getVar x es env

-- this function returns an indexed array
index :: [Int] -> [(Int,Int)]
index x = zip [0,1..] x

-- this function returns the Int on the position i in the array
get :: Int -> [(Int,Int)] -> Int
get i [] = error "Baubillious! Index out of bounds!"
get i (x:xs)  | (fst x) == i = snd x
              | otherwise = get i xs

-- this function removes the i th element in the array
remove :: Int -> [(Int,Int)] -> [Int]
remove i [] = error "Baubillious! Index out of bounds!"
remove i (x:xs)     | (fst x) == i = remove i xs
                    | otherwise = (snd x) : (remove i xs)

-- this function checks if an expression returns type Int
isNr :: Expr -> Environment -> Bool
isNr (Err) e = True
isNr (Nr x) e = True
isNr (Plus x y) e = True
isNr (Minus x y) e = True
isNr (Times x y) e = True
isNr (Div x y) e = True
isNr (Mod x y) e = True
isNr (Power x y) e = True
isNr (Get x y) e = True
isNr (Head x) e = True
isNr (Last x) e = True
isNr (Sum x) e = True
isNr (Length x) e = True
isNr (InputSize) e = True
isNr (Var x) e = isNr (fst(getVar x e e)) e
isNr (Br x) e = isNr x e
isNr _ e = False

-- this function checks if an expression returns type Bool
isBool :: Expr -> Environment -> Bool
isBool (Err) e = True
isBool (Logic x) e = True
isBool (Less x y) e = True
isBool (LessEq x y) e = True
isBool (Greater x y) e = True
isBool (GreaterEq x y) e = True
isBool (Eq x y) e = True
isBool (NotEq x y) e = True
isBool (Not x) e = True
isBool (And x y) e = True
isBool (Or x y) e = True
isBool (Var x) e = isBool (fst(getVar x e e)) e
isBool (Br x) e = isBool x e
isBool _ e= False

-- this function checks if and expression returns type [Int]
isArr :: Expr -> Environment -> Bool
isArr (Err) e = True
isArr (Arr x) e = True
isArr (AddLst x y) e = True
isArr (AddFst x y) e = True
isArr (Remove x y) e = True
isArr (Init x) e = True
isArr (Tail x) e = True
isArr (Concat x y) e = True
isArr (Revert x) e = True
isArr (GetXY x y z) e = True
isArr (GetInArr x) e = True
isArr (Var x) e = isArr (fst(getVar x e e)) e
isArr (Br x) e = isArr x e
isArr _ e = False

-- this function evaluates Expr data type
evalExpr :: Expr -> Environment -> [[Int]] -> ((Value,Environment),[[Int]])
evalExpr (Err) e out = error "Morsmordre! There is a parsing error!"
-- evaluates variable assignment
evalExpr (Assign var expr) e out | isNr expr e = ((fst(fst(evalExpr expr e out)),update var (Nr (getNrVal(fst(fst(evalExpr expr e out))))) e),out)
                                 | isBool expr e = ((fst(fst(evalExpr expr e out)),update var (Logic (getBoolVal(fst(fst(evalExpr expr e out))))) e),out)
                                 | isArr expr e = ((fst(fst(evalExpr expr e out)),update var (Arr (getArrVal(fst(fst(evalExpr expr e out))))) e),out)

-- evaluates variables
evalExpr (Var x) e out = ((fst(fst(evalExpr (fst(getVar x e e)) e out)),snd(getVar x e e)),out)

-- evaluates integers
evalExpr (Nr x) e out = ((Integer x,e),out)

-- evaluates arrays
evalExpr (Arr x) e out = ((Array x,e),out)

-- evaluates booleans
evalExpr (Logic x) e out = ((Boolean x,e),out)

-- evaluates head expression
evalExpr (Head x) e out = ((Integer(head (getArrVal(fst(fst(evalExpr x e out))))),e),out)

-- evaluates ast expression
evalExpr (Last x) e out = ((Integer(last (getArrVal(fst(fst(evalExpr x e out))))),e),out)

-- evaluates init expression
evalExpr (Init x) e out = ((Array (init (getArrVal(fst(fst(evalExpr x e out))))),e),out)

-- evaluates tail expression
evalExpr (Tail x) e out = ((Array (tail (getArrVal(fst(fst(evalExpr x e out))))),e),out)

-- evaluates expression returning the length of an array
evalExpr (Length x) e out = ((Integer (length (getArrVal(fst(fst(evalExpr x e out))))),e),out)

-- evaluates expression returning the sum of all integers in the array
evalExpr (Sum x) e out = ((Integer (sum (getArrVal(fst(fst(evalExpr x e out))))),e),out)

-- evaluates expression that reverts the elements of an array
evalExpr (Revert x) e out = ((Array (reverse (getArrVal(fst(fst(evalExpr x e out))))),e),out)

-- evaluates not expression
evalExpr (Not x) e out = ((Boolean (not (getBoolVal(fst(fst(evalExpr x e out))))),e),out)

-- evaluates plus expression
evalExpr (Plus x y) e out = ((Integer ((getNrVal(fst(fst(evalExpr x e out)))) + (getNrVal (fst(fst(evalExpr y e out))))),e),out)

-- evaluates minus expression
evalExpr (Minus x y) e out = ((Integer ((getNrVal(fst(fst(evalExpr x e out)))) - (getNrVal (fst(fst(evalExpr y e out))))),e),out)

-- evaluates times expression
evalExpr (Times x y) e out = ((Integer ((getNrVal(fst(fst(evalExpr x e out)))) * (getNrVal (fst(fst(evalExpr y e out))))),e),out)

-- evaluates div expression
evalExpr (Div x y) e out = ((Integer ((getNrVal(fst(fst(evalExpr x e out)))) `div` (getNrVal (fst(fst(evalExpr y e out))))),e),out)

-- evaluates mod expression
evalExpr (Mod x y) e out = ((Integer ((getNrVal(fst(fst(evalExpr x e out)))) `mod` (getNrVal (fst(fst(evalExpr y e out))))),e),out)

-- evaluates power expression
evalExpr (Power x y) e out = ((Integer ((getNrVal(fst(fst(evalExpr x e out)))) ^ (getNrVal (fst(fst(evalExpr y e out))))),e),out)

-- evaluates less than expression
evalExpr (Less x y) e out = ((Boolean ((getNrVal(fst(fst(evalExpr x e out)))) < (getNrVal (fst(fst(evalExpr y e out))))),e),out)

-- evaluates less than or equal expression
evalExpr (LessEq x y) e out = ((Boolean ((getNrVal(fst(fst(evalExpr x e out)))) <= (getNrVal (fst(fst(evalExpr y e out))))),e),out)

-- evaluates greater than expression
evalExpr (Greater x y) e out = ((Boolean ((getNrVal(fst(fst(evalExpr x e out)))) > (getNrVal (fst(fst(evalExpr y e out))))),e),out)

-- evaluates greater than or equal expression
evalExpr (GreaterEq x y) e out = ((Boolean ((getNrVal(fst(fst(evalExpr x e out)))) >= (getNrVal (fst(fst(evalExpr y e out))))),e),out)

-- evaluates equality expression
evalExpr (Eq x y) e out  | (isNr x e) && (isNr y e) = ((Boolean (nrX == nrY),e),out)
                         | (isBool x e) && (isBool y e) = ((Boolean (boolX == boolY),e),out)
                         | (isArr x e) && (isArr y e) = ((Boolean (arrX == arrY),e),out)
                         | otherwise = error "Avada Kedavra! Type mismatched in equality expression 'Episkey'!"
                                   where
                                        nrX = getNrVal(fst(fst(evalExpr x e out)))
                                        nrY = getNrVal(fst(fst(evalExpr y e out)))
                                        boolX = getBoolVal(fst(fst(evalExpr x e out)))
                                        boolY = getBoolVal(fst(fst(evalExpr y e out)))
                                        arrX = getArrVal(fst(fst(evalExpr x e out)))
                                        arrY = getArrVal(fst(fst(evalExpr y e out)))

-- evaluates not equal expression
evalExpr (NotEq x y) e out | (isNr x e) && (isNr y e) = ((Boolean (nrX /= nrY),e),out)
                           | (isBool x e) && (isBool y e) = ((Boolean (boolX /= boolY),e),out)
                           | (isArr x e) && (isArr y e) = ((Boolean (arrX /= arrY),e),out)
                           | otherwise = error "Avada Kedavra! Type mismatched in equality expression 'Impedimenta'!"

                                   where
                                        nrX = getNrVal(fst(fst(evalExpr x e out)))
                                        nrY = getNrVal(fst(fst(evalExpr y e out)))
                                        boolX = getBoolVal(fst(fst(evalExpr x e out)))
                                        boolY = getBoolVal(fst(fst(evalExpr y e out)))
                                        arrX = getArrVal(fst(fst(evalExpr x e out)))
                                        arrY = getArrVal(fst(fst(evalExpr y e out)))

-- evaluates and expression
evalExpr (And x y) e out = ((Boolean ((getBoolVal(fst(fst(evalExpr x e out)))) && (getBoolVal (fst(fst(evalExpr y e out))))),e),out)

-- evaluates or expression
evalExpr (Or x y) e out = ((Boolean ((getBoolVal(fst(fst(evalExpr x e out)))) || (getBoolVal (fst(fst(evalExpr y e out))))),e),out)

--evaluates expression that adds an element to the beginnig of the list
evalExpr (AddFst x (Var y)) e out = ((Array array, update y (Arr array) e),out)
                                        where array = ((getNrVal(fst(fst(evalExpr x e out)))) : (getArrVal (fst(fst(evalExpr (Var y) e out)))))
evalExpr (AddFst x y) e out = ((Array ((getNrVal(fst(fst(evalExpr x e out)))) : (getArrVal (fst(fst(evalExpr y e out))))),e),out)

-- evaluates expression that adds an element to the end of the list
evalExpr (AddLst x (Var y)) e out = ((Array array, update y (Arr array) e),out)
                                        where array = (getArrVal (fst(fst(evalExpr (Var y) e out)))) ++ ((getNrVal(fst(fst(evalExpr x e out)))):[])
evalExpr (AddLst x y) e out = ((Array ((getArrVal (fst(fst(evalExpr y e out)))) ++ ((getNrVal(fst(fst(evalExpr x e out)))):[])),e),out)

-- evaluates concatenation expression
evalExpr (Concat x y) e out = ((Array ((getArrVal(fst(fst(evalExpr x e out)))) ++ (getArrVal (fst(fst(evalExpr y e out))))),e),out)

-- evaluates expression that gets the x th element from a list
evalExpr (Get x y) e out = ((Integer (get (getNrVal(fst(fst(evalExpr x e out)))) (index(getArrVal (fst(fst(evalExpr y e out)))))),e),out)

-- evaluates expression that removes the x th element from a list
evalExpr (Remove x (Var y)) e out = ((Array array,update y (Arr array) e),out)
                                        where array = remove (getNrVal(fst(fst(evalExpr x e out)))) (index(getArrVal (fst(fst(evalExpr (Var y) e out)))))
evalExpr (Remove x y) e out = ((Array (remove (getNrVal(fst(fst(evalExpr x e out)))) (index(getArrVal (fst(fst(evalExpr y e out)))))),e),out)

-- evaluates expression that returns the array from index x to y
evalExpr (GetXY x y arr) e out = ((Array (get (getNrVal(fst(fst(evalExpr x e out)))) (getNrVal(fst(fst(evalExpr y e out)))) (index(getArrVal (fst(fst(evalExpr arr e out)))))),e),out)
                              where
                                   get :: Int -> Int -> [(Int,Int)] -> [Int]
                                   get x y [] = []
                                   get x y (a:arr)    | ((fst a)>=x) && ((fst a)<=y) = (snd a) : (get x y arr)
                                                      | otherwise = get x y arr

-- evaluates write expression
evalExpr (Write x) e out | isArr x e = (fst (evalExpr x e out),out ++ ((getArrVal(fst(fst(evalExpr x e out)))):[]))
                         | otherwise = error "Expecto Patronum! Stream of integers expected on writing!"

-- evaluates if then else expression
evalExpr (IfThenElse b x y) e out  | getBoolVal (fst(fst(evalExpr b e out))) = evalBody x e out
                                   | not(getBoolVal (fst(fst(evalExpr b e out)))) = evalBody y e out

-- evaluates if then expression
evalExpr (IfThen b x) e out   | getBoolVal (fst(fst(evalExpr b e out))) = evalBody x e out
                              | not(getBoolVal (fst(fst(evalExpr b e out)))) = ((Boolean False, e),out)

-- evaluates let expression
evalExpr (Let var expr body) e out = ((fst(fst(evalBody body (update var expr e) out)), e), snd(evalBody body (update var expr e) out))

-- evaluates while loop expression
evalExpr (While x body) e out | getBoolVal (fst(fst(evalExpr x e out))) = evalExpr (While x body) env output
                              | otherwise = ((Boolean False,e),out)
                                        where
                                             bodyEval = evalBody body e out
                                             env = snd(fst bodyEval)
                                             output = snd bodyEval
                                             evalCond = fst(fst(evalExpr x env output))
                                             cond = Logic (getBoolVal evalCond)

-- evaluates expression that returns the x th input array, starting with 0
evalExpr (GetInArr x) e out = ((Array(getArr (fst var)),snd var),out)
                                   where var = getVar ("horcrux_"++(show (getNrVal (fst(fst(evalExpr x e out)))))) e e

-- evaluates function that returns the environment size
evalExpr (InputSize) e out = ((Integer (length e),e),out)

-- evaluates expression within brackets
evalExpr (Br x) e out = evalExpr x e out

-- evaluates Body data type
evalBody :: Body -> Environment -> [[Int]] -> ((Value,Environment),[[Int]])
evalBody (Begin body) e out = evalBody body e out
evalBody (Multi expr body) e out = evalBody body (snd(fst exp)) (snd exp)
                                        where exp = evalExpr expr e out
evalBody (Single expr) e out = evalExpr expr e out