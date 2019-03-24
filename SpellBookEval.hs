module SpellBookEval where
import SpellBookGrammar
import Data.List.Split
import Data.List

data Value = Integer Int | Boolean Bool | Array [Int] deriving (Show,Eq)

-- this function parses the data from the input file
parseFile :: String -> [[Maybe Int]]
parseFile s = let x = (getNumbers (getLines s))
                         in transpose (getStreams x (getMaxLen x 0))

getLines :: String -> [String]
getLines s = splitOn "\n" s

getNumbers :: [String] -> [[String]]
getNumbers [] = []
getNumbers (s:ss) = (splitOn " " s) : getNumbers ss

getInts :: [String] -> [Maybe Int]
getInts [] = []
getInts (s:ss) | s == "" = Nothing : getInts ss
               | otherwise = (Just (read s)) : getInts ss

getMaxLen :: [[String]] -> Int -> Int
getMaxLen [] max = max
getMaxLen (x:xs) max     | max < length x = getMaxLen xs (length x)
                         | otherwise = getMaxLen xs max

addNothing :: [Maybe Int] -> Int -> [Maybe Int]
addNothing x 0 = x
addNothing x n = addNothing x (n-1) ++ (Nothing:[])

getStreams :: [[String]] -> Int -> [[Maybe Int]]
getStreams [] max = []
getStreams (x:xs) max = (addNothing (getInts x) (max-(length x))) : getStreams xs max

intialiseEnvironment :: Int -> [[Int]] -> Environment
intialiseEnvironment _ [] = []
intialiseEnvironment n (x:xs) = ("horcrux_" ++ (show n),Arr x):intialiseEnvironment (n+1) xs

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

-- this function checks if an expression is terminal or not
isTerminal :: Expr -> Bool
isTerminal (Nr x) = True
isTerminal (Logic x) = True
isTerminal (Arr x) = True
isTerminal _ = False

-- this function updates a variable's value in the Environment
update :: String -> Expr -> Environment -> Environment
update var expr [] = [(var,expr)]
update var expr (e:es)   | var == fst(e) = update var expr es
                         | otherwise = e: update var expr es

-- this function returns the expression associated to a value within the Environment
getVar :: String -> Environment -> Expr
getVar x [] = error "Riddikulus! Non existent variable!"
getVar x (e:es)  | (fst e) == x = snd e
                 | otherwise = getVar x es

-- this function returns an indexed array
index :: [Int] -> [(Int,Int)]
index x = zip [0,1..] x

-- this function checks if an expression returns type Int
isInt :: Expr -> Bool
isInt (Nr x) = True
isInt (Plus x y) = True
isInt (Minus x y) = True
isInt (Times x y) = True
isInt (Div x y) = True
isInt (Mod x y) = True
isInt (Power x y) = True
isInt (Get x y) = True
isInt (Head x) = True
isInt (Last x) = True
isInt (Sum x) = True
isInt (Length x) = True
isInt _ = False

-- this function checks if an expression returns type Bool
isBool :: Expr -> Bool
isBool (Logic x) = True
isBool (Less x y) = True
isBool (LessEq x y) = True
isBool (Greater x y) = True
isBool (GreaterEq x y) = True
isBool (Eq x y) = True
isBool (NotEq x y) = True
isBool (Not x) = True
isBool _ = False

-- this function checks if and expression returns type [Int]
isArr :: Expr -> Bool
isArr (Arr x) = True
isArr (AddLst x y) = True
isArr (AddFst x y) = True
isArr (Remove x y) = True
isArr (Init x) = True
isArr (Tail x) = True
isArr (Concat x y) = True
isArr (Revert x) = True
isArr (GetXY x y z) = True
isArr _ = False

-- this function evaluates Expr data type
evalExpr :: Expr -> Environment -> (Value,Environment)
-- evaluates variable assignment
evalExpr (Assign var expr) e  | isInt expr = (fst(evalExpr expr e),update var (Nr (getNrVal(fst(evalExpr expr e)))) e)
                              | isBool expr = (fst(evalExpr expr e),update var (Logic (getBoolVal(fst(evalExpr expr e)))) e)
                              | isArr expr = (fst(evalExpr expr e),update var (Arr (getArrVal(fst(evalExpr expr e)))) e)

-- evaluates variables
evalExpr (Var x) e = (fst(evalExpr (getVar x e) e),e)

-- evaluates integers
evalExpr (Nr x) e = (Integer x,e)

-- evaluates arrays
evalExpr (Arr x) e = (Array x,e)

-- evaluates booleans
evalExpr (Logic x) e = (Boolean x,e)

-- evaluates head expression
evalExpr (Head x) e  | isTerminal x = (Integer(head (getArr x)),e)
                 | otherwise = (Integer(head (getArrVal(fst(evalExpr x e)))),e)

-- evaluates ast expression
evalExpr (Last x) e  | isTerminal x = (Integer(last (getArr x)),e)
                 | otherwise = (Integer(last (getArrVal(fst(evalExpr x e)))),e)

-- evaluates init expression
evalExpr (Init x) e  | isTerminal x = (Array (init (getArr x)),e)
                 | otherwise = (Array (init (getArrVal(fst(evalExpr x e)))),e)

-- evaluates tail expression
evalExpr (Tail x) e  | isTerminal x = (Array (tail (getArr x)),e)
                 | otherwise = (Array (tail (getArrVal(fst(evalExpr x e)))),e)

-- evaluates expression returning the length of an array
evalExpr (Length x) e  | isTerminal x = (Integer (length (getArr x)),e)
                   | otherwise = (Integer (length (getArrVal(fst(evalExpr x e)))),e)

-- evaluates expression returning the sum of all integers in the array
evalExpr (Sum x) e  | isTerminal x = (Integer (sum (getArr x)),e)
                | otherwise = (Integer (sum (getArrVal(fst(evalExpr x e)))),e)

-- evaluates expression that reverts the elements of an array
evalExpr (Revert x) e  | isTerminal x = (Array (reverse (getArr x)),e)
                   | otherwise = (Array (reverse (getArrVal(fst(evalExpr x e)))),e)

-- evaluates not expression
evalExpr (Not x) e  | isTerminal x = (Boolean (not (getBool x)),e)
                | otherwise = (Boolean (not (getBoolVal(fst(evalExpr x e)))),e)

-- evaluates plus expression
evalExpr (Plus x y) e   | (isTerminal x) && (isTerminal y) = (Integer((getNr x) + (getNr y)),e)
                    | (not(isTerminal x)) && (not(isTerminal y)) = (Integer ((getNrVal(fst(evalExpr x e))) + (getNrVal (fst(evalExpr y e)))),e)
                    | (isTerminal x) = (Integer ((getNr x) + (getNrVal (fst(evalExpr y e)))),e)
                    | (isTerminal y) = (Integer ((getNrVal (fst(evalExpr x e))) + (getNr y)),e)

-- evaluates minus expression
evalExpr (Minus x y) e   | (isTerminal x) && (isTerminal y) = (Integer((getNr x) - (getNr y)),e)
                     | (not(isTerminal x)) && (not(isTerminal y)) = (Integer ((getNrVal(fst(evalExpr x e))) - (getNrVal (fst(evalExpr y e)))),e)
                     | (isTerminal x) = (Integer ((getNr x) - (getNrVal (fst(evalExpr y e)))),e)
                     | (isTerminal y) = (Integer ((getNrVal (fst(evalExpr x e))) - (getNr y)),e)

-- evaluates times expression
evalExpr (Times x y) e   | (isTerminal x) && (isTerminal y) = (Integer((getNr x) * (getNr y)),e)
                     | (not(isTerminal x)) && (not(isTerminal y)) = (Integer ((getNrVal(fst(evalExpr x e))) * (getNrVal (fst(evalExpr y e)))),e)
                     | (isTerminal x) = (Integer ((getNr x) * (getNrVal (fst(evalExpr y e)))),e)
                     | (isTerminal y) = (Integer ((getNrVal (fst(evalExpr x e))) * (getNr y)),e)

-- evaluates div expression
evalExpr (Div x y) e    | (isTerminal x) && (isTerminal y) = (Integer((getNr x) `div` (getNr y)),e)
                    | (not(isTerminal x)) && (not(isTerminal y)) = (Integer ((getNrVal(fst(evalExpr x e))) `div` (getNrVal (fst(evalExpr y e)))),e)
                    | (isTerminal x) = (Integer ((getNr x) `div` (getNrVal (fst(evalExpr y e)))),e)
                    | (isTerminal y) = (Integer ((getNrVal (fst(evalExpr x e))) `div` (getNr y)),e)

-- evaluates mod expression
evalExpr (Mod x y) e    | (isTerminal x) && (isTerminal y) = (Integer((getNr x) `mod` (getNr y)),e)
                    | (not(isTerminal x)) && (not(isTerminal y)) = (Integer ((getNrVal(fst(evalExpr x e))) `mod` (getNrVal (fst(evalExpr y e)))),e)
                    | (isTerminal x) = (Integer ((getNr x) `mod` (getNrVal (fst(evalExpr y e)))),e)
                    | (isTerminal y) = (Integer ((getNrVal (fst(evalExpr x e))) `mod` (getNr y)),e)

-- evaluates power expression
evalExpr (Power x y) e  | (isTerminal x) && (isTerminal y) = (Integer((getNr x) ^ (getNr y)),e)
                    | (not(isTerminal x)) && (not(isTerminal y)) = (Integer ((getNrVal(fst(evalExpr x e))) ^ (getNrVal (fst(evalExpr y e)))),e)
                    | (isTerminal x) = (Integer ((getNr x) ^ (getNrVal (fst(evalExpr y e)))),e)
                    | (isTerminal y) = (Integer ((getNrVal (fst(evalExpr x e))) ^ (getNr y)),e)

-- evaluates less than expression
evalExpr (Less x y) e   | (isTerminal x) && (isTerminal y) = (Boolean((getNr x) < (getNr y)),e)
                    | (not(isTerminal x)) && (not(isTerminal y)) = (Boolean ((getNrVal(fst(evalExpr x e))) < (getNrVal (fst(evalExpr y e)))),e)
                    | (isTerminal x) = (Boolean ((getNr x) < (getNrVal (fst(evalExpr y e)))),e)
                    | (isTerminal y) = (Boolean ((getNrVal (fst(evalExpr x e))) < (getNr y)),e)

-- evaluates less than or equal expression
evalExpr (LessEq x y) e | (isTerminal x) && (isTerminal y) = (Boolean((getNr x) <= (getNr y)),e)
                    | (not(isTerminal x)) && (not(isTerminal y)) = (Boolean ((getNrVal(fst(evalExpr x e))) <= (getNrVal (fst(evalExpr y e)))),e)
                    | (isTerminal x) = (Boolean ((getNr x) <= (getNrVal (fst(evalExpr y e)))),e)
                    | (isTerminal y) = (Boolean ((getNrVal (fst(evalExpr x e))) <= (getNr y)),e)

-- evaluates greater than expression
evalExpr (Greater x y) e   | (isTerminal x) && (isTerminal y) = (Boolean((getNr x) > (getNr y)),e)
                       | (not(isTerminal x)) && (not(isTerminal y)) = (Boolean ((getNrVal(fst(evalExpr x e))) > (getNrVal (fst(evalExpr y e)))),e)
                       | (isTerminal x) = (Boolean ((getNr x) > (getNrVal (fst(evalExpr y e)))),e)
                       | (isTerminal y) = (Boolean ((getNrVal (fst(evalExpr x e))) > (getNr y)),e)

-- evaluates greater than or equal expression
evalExpr (GreaterEq x y) e | (isTerminal x) && (isTerminal y) = (Boolean((getNr x) >= (getNr y)),e)
                       | (not(isTerminal x)) && (not(isTerminal y)) = (Boolean ((getNrVal(fst(evalExpr x e))) >= (getNrVal (fst(evalExpr y e)))),e)
                       | (isTerminal x) = (Boolean ((getNr x) >= (getNrVal (fst(evalExpr y e)))),e)
                       | (isTerminal y) = (Boolean ((getNrVal (fst(evalExpr x e))) >= (getNr y)),e)

-- evaluates equality expression
evalExpr (Eq x y) e     | (isTerminal x) && (isTerminal y) = (Boolean((getNr x) == (getNr y)),e)
                    | (not(isTerminal x)) && (not(isTerminal y)) = (Boolean ((getNrVal(fst(evalExpr x e))) == (getNrVal (fst(evalExpr y e)))),e)
                    | (isTerminal x) = (Boolean ((getNr x) == (getNrVal (fst(evalExpr y e)))),e)
                    | (isTerminal y) = (Boolean ((getNrVal (fst(evalExpr x e))) == (getNr y)),e)

-- evaluates not equal expression
evalExpr (NotEq x y) e   | (isTerminal x) && (isTerminal y) = (Boolean((getNr x) /= (getNr y)),e)
                     | (not(isTerminal x)) && (not(isTerminal y)) = (Boolean ((getNrVal(fst(evalExpr x e))) /= (getNrVal (fst(evalExpr y e)))),e)
                     | (isTerminal x) = (Boolean ((getNr x) /= (getNrVal (fst(evalExpr y e)))),e)
                     | (isTerminal y) = (Boolean ((getNrVal (fst(evalExpr x e))) /= (getNr y)),e)

--evaluates expression that adds an element to the beginnig of the list
evalExpr (AddFst x y) e   | (isTerminal x) && (isTerminal y) = (Array((getNr x) : (getArr y)),e)
                      | (not(isTerminal x)) && (not(isTerminal y)) = (Array ((getNrVal(fst(evalExpr x e))) : (getArrVal (fst(evalExpr y e)))),e)
                      | (isTerminal x) = (Array ((getNr x) : (getArrVal (fst(evalExpr y e)))),e)
                      | (isTerminal y) = (Array ((getNrVal (fst(evalExpr x e))) : (getArr y)),e)

-- evaluates expression that adds an element to the end of the list
evalExpr (AddLst x y) e   | (isTerminal x) && (isTerminal y) = (Array((getArr y) ++ ((getNr x):[])),e)
                      | (not(isTerminal x)) && (not(isTerminal y)) = (Array ((getArrVal (fst(evalExpr y e))) ++ ((getNrVal(fst(evalExpr x e))):[])),e)
                      | (isTerminal x) = (Array ((getArrVal (fst(evalExpr y e))) ++ ((getNr x):[])),e)
                      | (isTerminal y) = (Array ((getArr y) ++ ((getNrVal (fst(evalExpr x e))):[])),e)

-- evaluates concatenation expression
evalExpr (Concat x y) e   | (isTerminal x) && (isTerminal y) = (Array((getArr x) ++ (getArr y)),e)
                      | (not(isTerminal x)) && (not(isTerminal y)) = (Array ((getArrVal(fst(evalExpr x e))) ++ (getArrVal (fst(evalExpr y e)))),e)
                      | (isTerminal x) = (Array ((getArr x) ++ (getArrVal (fst(evalExpr y e)))),e)
                      | (isTerminal y) = (Array ((getArrVal (fst(evalExpr x e))) ++ (getArr y)),e)

-- evaluates expression that gets the x th element from a list
evalExpr (Get x y) e      | (isTerminal x) && (isTerminal y) = (Integer(get (getNr x) (index(getArr y))),e)
                      | (not(isTerminal x)) && (not(isTerminal y)) = (Integer (get (getNrVal(fst(evalExpr x e))) (index(getArrVal (fst(evalExpr y e))))),e)
                      | (isTerminal x) = (Integer (get (getNr x) (index(getArrVal (fst(evalExpr y e))))),e)
                      | (isTerminal y) = (Integer (get (getNrVal (fst(evalExpr x e))) (index(getArr y))),e)
                              where
                                   get :: Int -> [(Int,Int)] -> Int
                                   get i [] = error "Baubillious! Index out of bounds!"
                                   get i (x:xs)  | (fst x) == i = snd x
                                                 | otherwise = get i xs

-- evaluates expression that removes the x th element from a list
evalExpr (Remove x y) e   | (isTerminal x) && (isTerminal y) = (Array(remove (getNr x) (index(getArr y))),e)
                      | (not(isTerminal x)) && (not(isTerminal y)) = (Array (remove (getNrVal(fst(evalExpr x e))) (index(getArrVal (fst(evalExpr y e))))),e)
                      | (isTerminal x) = (Array (remove (getNr x) (index(getArrVal (fst(evalExpr y e))))),e)
                      | (isTerminal y) = (Array (remove (getNrVal (fst(evalExpr x e))) (index(getArr y))),e)
                              where
                                   remove :: Int -> [(Int,Int)] -> [Int]
                                   remove i [] = error "Baubillious! Index out of bounds!"
                                   remove i (x:xs)     | (fst x) == i = remove i xs
                                                       | otherwise = (snd x) : (remove i xs)

-- evaluates expression that returns the array from index x to y
evalExpr (GetXY x y arr) e    | (isTerminal x) && (isTerminal y) && (isTerminal arr) = (Array(get (getNr x) (getNr y) (index(getArr arr))),e)
                          | (not(isTerminal x)) && (not(isTerminal y)) && (not(isTerminal arr)) = (Array (get (getNrVal(fst(evalExpr x e))) (getNrVal(fst(evalExpr y e))) (index(getArrVal (fst(evalExpr arr e))))),e)
                          | (isTerminal x) && (isTerminal y) = (Array (get (getNr x) (getNr y)(index(getArrVal (fst(evalExpr y e))))),e)
                          | (isTerminal x) && (isTerminal arr) = (Array (get (getNr x) (getNrVal (fst(evalExpr y e))) (index(getArr arr))),e)
                          | (isTerminal x) = (Array (get (getNr x) (getNrVal (fst(evalExpr y e ))) (index(getArrVal (fst (evalExpr arr e))))),e)
                          | (isTerminal y) && (isTerminal arr) = (Array (get (getNrVal (fst(evalExpr x e ))) (getNr y) (index (getArr arr))),e)
                          | (isTerminal y) = (Array (get (getNrVal (fst(evalExpr x e ))) (getNr y) (index (getArrVal (fst(evalExpr arr e ))))),e)
                          | (isTerminal arr) = (Array (get (getNrVal (fst(evalExpr x e ))) (getNrVal (fst(evalExpr y e ))) (index(getArr arr))),e)
                              where
                                   get :: Int -> Int -> [(Int,Int)] -> [Int]
                                   get x y [] = error "Baubillious! Indeo out of bounds!"
                                   get x y (a:arr)    | ((fst a)>=x) && ((fst a)<=y) = (snd a) : (get x y arr)
                                                      | otherwise = get x y arr

-- evaluates if then else expression
evalExpr (IfThenElse b x y) e | (isTerminal b) && (getBool b) = evalBody x e
                              | (isTerminal b) && (not(getBool b)) = evalBody y e
                              | (not(isTerminal b)) && (getBoolVal (fst(evalExpr b e))) = evalBody x e
                              | (not(isTerminal b)) && (not(getBoolVal (fst(evalExpr b e)))) = evalBody y e

-- evaluates if then expression
evalExpr (IfThen b x) e       | (isTerminal b) && (getBool b) = evalBody x e
                              | (isTerminal b) && (not(getBool b)) = (Integer 0,e)
                              | (not(isTerminal b)) && (getBoolVal (fst(evalExpr b e))) = evalBody x e
                              | (not(isTerminal b)) && (not(getBoolVal (fst(evalExpr b e)))) = (Integer 0, e)

-- evaluates let expression
evalExpr (Let var expr body) e = ((fst(evalBody body (update var expr e))), e)

-- evaluates while expression
-- evalExpr (While x body) e = if getBoolVal (fst(evalExpr x e))
--                                                   then do   evalBody body e
--                                                             return (evalExpr (While x body) (snd(evalBody body e)))
--                                                   else (Integer 1,e)

-- evaluates Body data type
evalBody :: Body -> Environment -> (Value,Environment)
evalBody (Begin body) e = evalBody body e
evalBody (Multi expr body) e = evalBody body e
evalBody (Single expr) e = evalExpr expr e
