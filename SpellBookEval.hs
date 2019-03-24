module SpellBookEval where
import SpellBookGrammar
import Data.List.Split
import Data.List

data Value = Integer Int | Boolean Bool | Array [Int] deriving (Show,Eq)

-- this function parses the data from the input file
-- parseFile :: String -> [[Maybe Int]]
-- parseFile :: String -> [[Maybe Int]]
-- parseFile s = let x = (getNumbers (getLines s))
--                          in transpose (getStreams x (getMaxLen x 0))
parseFile :: String -> [[Int]]
parseFile s = transpose(map getInts (getNumbers(getLines s)))

getLines :: String -> [String]
getLines s = splitOn "\n" s

getNumbers :: [String] -> [[String]]
getNumbers [] = []
getNumbers (s:ss) = (splitOn " " s) : getNumbers ss

-- getInts :: [String] -> [Maybe Int]
-- getInts [] = []
-- getInts (s:ss) | s == "" = Nothing : getInts ss
--                | otherwise = (Just (read s)) : getInts ss
getInts :: [String] -> [Int]
getInts [] = []
getInts (s:ss) = (read s):getInts ss

-- getMaxLen :: [[String]] -> Int -> Int
-- getMaxLen [] max = max
-- getMaxLen (x:xs) max     | max < length x = getMaxLen xs (length x)
--                          | otherwise = getMaxLen xs max
--
-- addNothing :: [Maybe Int] -> Int -> [Maybe Int]
-- addNothing x 0 = x
-- addNothing x n = addNothing x (n-1) ++ (Nothing:[])
--
-- getStreams :: [[String]] -> Int -> [[Maybe Int]]
-- getStreams [] max = []
-- getStreams (x:xs) max = (addNothing (getInts x) (max-(length x))) : getStreams xs max

-- this function prints the output in the required format


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
getVar :: String -> Environment -> Expr
getVar x [] = error "Riddikulus! Variable not in scope!"
getVar x (e:es)  | (fst e) == x = snd e
                 | otherwise = getVar x es

-- this function returns an indexed array
index :: [Int] -> [(Int,Int)]
index x = zip [0,1..] x

-- this function checks if an expression returns type Int
isNr :: Expr -> Environment -> Bool
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
isNr (Var x) e = isNr (getVar x e) e
isNr _ e = False

-- this function checks if an expression returns type Bool
isBool :: Expr -> Environment -> Bool
isBool (Logic x) e = True
isBool (Less x y) e = True
isBool (LessEq x y) e = True
isBool (Greater x y) e = True
isBool (GreaterEq x y) e = True
isBool (Eq x y) e = True
isBool (NotEq x y) e = True
isBool (Not x) e = True
isBool (Var x) e = isBool (getVar x e) e
isBool _ e= False

-- this function checks if and expression returns type [Int]
isArr :: Expr -> Environment -> Bool
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
isArr (Var x) e = isArr (getVar x e) e
isArr _ e = False

-- this function evaluates Expr data type
evalExpr :: Expr -> Environment -> [[Int]] -> ((Value,Environment),[[Int]])
-- evaluates variable assignment
evalExpr (Assign var expr) e out | isNr expr e = ((fst(fst(evalExpr expr e out)),update var (Nr (getNrVal(fst(fst(evalExpr expr e out))))) e),out)
                                 | isBool expr e = ((fst(fst(evalExpr expr e out)),update var (Logic (getBoolVal(fst(fst(evalExpr expr e out))))) e),out)
                                 | isArr expr e = ((fst(fst(evalExpr expr e out)),update var (Arr (getArrVal(fst(fst(evalExpr expr e out))))) e),out)

-- evaluates variables
evalExpr (Var x) e out = ((fst(fst(evalExpr (getVar x e) e out)),e),out)

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
evalExpr (Eq x y) e out = ((Boolean ((getNrVal(fst(fst(evalExpr x e out)))) == (getNrVal (fst(fst(evalExpr y e out))))),e),out)

-- evaluates not equal expression
evalExpr (NotEq x y) e out = ((Boolean ((getNrVal(fst(fst(evalExpr x e out)))) /= (getNrVal (fst(fst(evalExpr y e out))))),e),out)

--evaluates expression that adds an element to the beginnig of the list
evalExpr (AddFst x y) e out = ((Array ((getNrVal(fst(fst(evalExpr x e out)))) : (getArrVal (fst(fst(evalExpr y e out))))),e),out)

-- evaluates expression that adds an element to the end of the list
evalExpr (AddLst x y) e out = ((Array ((getArrVal (fst(fst(evalExpr y e out)))) ++ ((getNrVal(fst(fst(evalExpr x e out)))):[])),e),out)

-- evaluates concatenation expression
evalExpr (Concat x y) e out = ((Array ((getArrVal(fst(fst(evalExpr x e out)))) ++ (getArrVal (fst(fst(evalExpr y e out))))),e),out)

-- evaluates expression that gets the x th element from a list
evalExpr (Get x y) e out = ((Integer (get (getNrVal(fst(fst(evalExpr x e out)))) (index(getArrVal (fst(fst(evalExpr y e out)))))),e),out)
                              where
                                   get :: Int -> [(Int,Int)] -> Int
                                   get i [] = error "Baubillious! Index out of bounds!"
                                   get i (x:xs)  | (fst x) == i = snd x
                                                 | otherwise = get i xs

-- evaluates expression that removes the x th element from a list
evalExpr (Remove x y) e out = ((Array (remove (getNrVal(fst(fst(evalExpr x e out)))) (index(getArrVal (fst(fst(evalExpr y e out)))))),e),out)
                              where
                                   remove :: Int -> [(Int,Int)] -> [Int]
                                   remove i [] = error "Baubillious! Index out of bounds!"
                                   remove i (x:xs)     | (fst x) == i = remove i xs
                                                       | otherwise = (snd x) : (remove i xs)

-- evaluates expression that returns the array from index x to y
evalExpr (GetXY x y arr) e out = ((Array (get (getNrVal(fst(fst(evalExpr x e out)))) (getNrVal(fst(fst(evalExpr y e out)))) (index(getArrVal (fst(fst(evalExpr arr e out)))))),e),out)
                              where
                                   get :: Int -> Int -> [(Int,Int)] -> [Int]
                                   get x y [] = error "Baubillious! Indeo out of bounds!"
                                   get x y (a:arr)    | ((fst a)>=x) && ((fst a)<=y) = (snd a) : (get x y arr)
                                                      | otherwise = get x y arr

-- evaluates print expression
evalExpr (Write x) e out | isArr x e = (fst (evalExpr x e out),out ++ ((getArrVal(fst(fst(evalExpr x e out)))):[]))
                         | isNr x e = (fst (evalExpr x e out),out ++ (((getNrVal(fst(fst(evalExpr x e out)))):[]):[]))

-- evaluates if then else expression
evalExpr (IfThenElse b x y) e out  | getBoolVal (fst(fst(evalExpr b e out))) = evalBody x e out
                                   | not(getBoolVal (fst(fst(evalExpr b e out)))) = evalBody y e out

-- evaluates if then expression
evalExpr (IfThen b x) e out   | getBoolVal (fst(fst(evalExpr b e out))) = evalBody x e out
                              | not(getBoolVal (fst(fst(evalExpr b e out)))) = ((Boolean False, e),out)

-- evaluates let expression
evalExpr (Let var expr body) e out = ((fst(fst(evalBody body (update var expr e) out)), e), snd(evalBody body (update var expr e) out))

-- evaluates while loop expression
evalExpr (While x body) e out | getBoolVal (fst(fst(evalExpr x e out))) = evalExpr (While cond body) env output
                              | otherwise = ((Boolean True,e),out)
                                        where
                                             bodyEval = evalBody body e out
                                             env = snd(fst bodyEval)
                                             output = snd bodyEval
                                             evalCond = fst(fst(evalExpr x env output))
                                             cond = Logic (getBoolVal evalCond)

-- evaluates expression that returns the x th input array, starting with 0
evalExpr (GetInArr x) e out = (((Array(getArr (getVar ("horcrux_"++(show (getNrVal (fst(fst(evalExpr x e out)))))) e))),e),out)

-- evaluates function that returns the environment size
--evalExpr (InputSize) e out = ((Integer (length e),e),out)

-- evaluates Body data type
evalBody :: Body -> Environment -> [[Int]] -> ((Value,Environment),[[Int]])
evalBody (Begin body) e out = evalBody body e out
evalBody (Multi expr body) e out = evalBody body (snd(fst exp)) (snd exp)
                                        where exp = evalExpr expr e out
evalBody (Single expr) e out = evalExpr expr e out
