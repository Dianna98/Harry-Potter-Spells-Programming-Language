module SpellBookEval where
import SpellBookGrammar

data Value = Integer Int | Boolean Bool | Array [Int] | Variable String deriving (Show,Eq)

getNr :: Expr -> Int
getNr (Nr x) = x
getNr _ = error "Expecto Patronum! Type mismatched! Integer Expected!"

getBool :: Expr -> Bool
getBool (Logic x) = x
getBool _ = error "Expecto Patronum! Type mismatched! Boolean Expected!"

getArr :: Expr -> [Int]
getArr (Arr x) = x
getArr _ = error "Expecto Patronum! Type mismatched! Array of integers expected!"

getNrVal :: Value -> Int
getNrVal (Integer x) = x
getNrVal _ = error "Expecto Patronum! Type mismatched! Integer Expected!"

getBoolVal :: Value -> Bool
getBoolVal (Boolean x) = x
getBoolVal _ = error "Expecto Patronum! Type mismatched! Boolean Expected!"

getArrVal :: Value -> [Int]
getArrVal (Array x) = x
getArrVal _ = error "Expecto Patronum! Type mismatched! Array of integers expected!"

isTerminal :: Expr -> Bool
isTerminal (Nr x) = True
isTerminal (Logic x) = True
isTerminal (Arr x) = True
isTerminal _ = False

addVar :: String -> Expr -> Environment -> Environment
addVar var expr e = (var,expr):e

getVar :: String -> Environment -> Expr
getVar x [] = error "Riddikulus! Non existent variable!"
getVar x (e:es)  | (fst e) == x = snd e
                 | otherwise = getVar x es

eval :: Expr -> Environment -> (Value,Environment)
-- evaluates variable assignment
eval (Assign var expr) e = (Variable var,addVar var expr e)

-- evaluates variables
eval (Var x) e = (Variable x,e)

-- evaluates integers
eval (Nr x) e = (Integer x,e)

-- evaluates arrays
eval (Arr x) e = (Array x,e)

-- evaluates booleans
eval (Logic x) e = (Boolean x,e)

-- evaluates head expression
eval (Head x) e  | isTerminal x = (Integer(head (getArr x)),e)
                 | otherwise = (Integer(head (getArrVal(fst(eval x e)))),e)

-- evaluates ast expression
eval (Last x) e  | isTerminal x = (Integer(last (getArr x)),e)
                 | otherwise = (Integer(last (getArrVal(fst(eval x e)))),e)

-- evaluates init expression
eval (Init x) e  | isTerminal x = (Array (init (getArr x)),e)
                 | otherwise = (Array (init (getArrVal(fst(eval x e)))),e)

-- evaluates tail expression
eval (Tail x) e  | isTerminal x = (Array (tail (getArr x)),e)
                 | otherwise = (Array (tail (getArrVal(fst(eval x e)))),e)

-- evaluates expression returning the length of an array
eval (Length x) e  | isTerminal x = (Integer (length (getArr x)),e)
                   | otherwise = (Integer (length (getArrVal(fst(eval x e)))),e)

-- evaluates expression returning the sum of all integers in the array
eval (Sum x) e  | isTerminal x = (Integer (sum (getArr x)),e)
                | otherwise = (Integer (sum (getArrVal(fst(eval x e)))),e)

-- evaluates expression that reverts the elements of an array
eval (Revert x) e  | isTerminal x = (Array (reverse (getArr x)),e)
                   | otherwise = (Array (reverse (getArrVal(fst(eval x e)))),e)

-- evaluates not expression
eval (Not x) e  | isTerminal x = (Boolean (not (getBool x)),e)
                | otherwise = (Boolean (not (getBoolVal(fst(eval x e)))),e)

-- evaluates plus expression
eval (Plus x y) e   | (isTerminal x) && (isTerminal y) = (Integer((getNr x) + (getNr y)),e)
                    | (not(isTerminal x)) && (not(isTerminal y)) = (Integer ((getNrVal(fst(eval x e))) + (getNrVal (fst(eval y e)))),e)
                    | (isTerminal x) = (Integer ((getNr x) + (getNrVal (fst(eval y e)))),e)
                    | (isTerminal y) = (Integer ((getNrVal (fst(eval x e))) + (getNr y)),e)

-- evaluates minus expression
eval (Minus x y) e   | (isTerminal x) && (isTerminal y) = (Integer((getNr x) - (getNr y)),e)
                     | (not(isTerminal x)) && (not(isTerminal y)) = (Integer ((getNrVal(fst(eval x e))) - (getNrVal (fst(eval y e)))),e)
                     | (isTerminal x) = (Integer ((getNr x) - (getNrVal (fst(eval y e)))),e)
                     | (isTerminal y) = (Integer ((getNrVal (fst(eval x e))) - (getNr y)),e)

-- evaluates times expression
eval (Times x y) e   | (isTerminal x) && (isTerminal y) = (Integer((getNr x) * (getNr y)),e)
                     | (not(isTerminal x)) && (not(isTerminal y)) = (Integer ((getNrVal(fst(eval x e))) * (getNrVal (fst(eval y e)))),e)
                     | (isTerminal x) = (Integer ((getNr x) * (getNrVal (fst(eval y e)))),e)
                     | (isTerminal y) = (Integer ((getNrVal (fst(eval x e))) * (getNr y)),e)

-- evaluates div expression
eval (Div x y) e    | (isTerminal x) && (isTerminal y) = (Integer((getNr x) `div` (getNr y)),e)
                    | (not(isTerminal x)) && (not(isTerminal y)) = (Integer ((getNrVal(fst(eval x e))) `div` (getNrVal (fst(eval y e)))),e)
                    | (isTerminal x) = (Integer ((getNr x) `div` (getNrVal (fst(eval y e)))),e)
                    | (isTerminal y) = (Integer ((getNrVal (fst(eval x e))) `div` (getNr y)),e)

-- evaluates mod expression
eval (Mod x y) e    | (isTerminal x) && (isTerminal y) = (Integer((getNr x) `mod` (getNr y)),e)
                    | (not(isTerminal x)) && (not(isTerminal y)) = (Integer ((getNrVal(fst(eval x e))) `mod` (getNrVal (fst(eval y e)))),e)
                    | (isTerminal x) = (Integer ((getNr x) `mod` (getNrVal (fst(eval y e)))),e)
                    | (isTerminal y) = (Integer ((getNrVal (fst(eval x e))) `mod` (getNr y)),e)

-- evaluates power expression
eval (Power x y) e  | (isTerminal x) && (isTerminal y) = (Integer((getNr x) ^ (getNr y)),e)
                    | (not(isTerminal x)) && (not(isTerminal y)) = (Integer ((getNrVal(fst(eval x e))) ^ (getNrVal (fst(eval y e)))),e)
                    | (isTerminal x) = (Integer ((getNr x) ^ (getNrVal (fst(eval y e)))),e)
                    | (isTerminal y) = (Integer ((getNrVal (fst(eval x e))) ^ (getNr y)),e)

-- evaluates less than expression
eval (Less x y) e   | (isTerminal x) && (isTerminal y) = (Boolean((getNr x) < (getNr y)),e)
                    | (not(isTerminal x)) && (not(isTerminal y)) = (Boolean ((getNrVal(fst(eval x e))) < (getNrVal (fst(eval y e)))),e)
                    | (isTerminal x) = (Boolean ((getNr x) < (getNrVal (fst(eval y e)))),e)
                    | (isTerminal y) = (Boolean ((getNrVal (fst(eval x e))) < (getNr y)),e)

-- evaluates less than or equal expression
eval (LessEq x y) e | (isTerminal x) && (isTerminal y) = (Boolean((getNr x) <= (getNr y)),e)
                    | (not(isTerminal x)) && (not(isTerminal y)) = (Boolean ((getNrVal(fst(eval x e))) <= (getNrVal (fst(eval y e)))),e)
                    | (isTerminal x) = (Boolean ((getNr x) <= (getNrVal (fst(eval y e)))),e)
                    | (isTerminal y) = (Boolean ((getNrVal (fst(eval x e))) <= (getNr y)),e)

-- evaluates greater than expression
eval (Greater x y) e   | (isTerminal x) && (isTerminal y) = (Boolean((getNr x) > (getNr y)),e)
                       | (not(isTerminal x)) && (not(isTerminal y)) = (Boolean ((getNrVal(fst(eval x e))) > (getNrVal (fst(eval y e)))),e)
                       | (isTerminal x) = (Boolean ((getNr x) > (getNrVal (fst(eval y e)))),e)
                       | (isTerminal y) = (Boolean ((getNrVal (fst(eval x e))) > (getNr y)),e)

-- evaluates greater than or equal expression
eval (GreaterEq x y) e | (isTerminal x) && (isTerminal y) = (Boolean((getNr x) >= (getNr y)),e)
                       | (not(isTerminal x)) && (not(isTerminal y)) = (Boolean ((getNrVal(fst(eval x e))) >= (getNrVal (fst(eval y e)))),e)
                       | (isTerminal x) = (Boolean ((getNr x) >= (getNrVal (fst(eval y e)))),e)
                       | (isTerminal y) = (Boolean ((getNrVal (fst(eval x e))) >= (getNr y)),e)

-- evaluates equality expression
eval (Eq x y) e     | (isTerminal x) && (isTerminal y) = (Boolean((getNr x) == (getNr y)),e)
                    | (not(isTerminal x)) && (not(isTerminal y)) = (Boolean ((getNrVal(fst(eval x e))) == (getNrVal (fst(eval y e)))),e)
                    | (isTerminal x) = (Boolean ((getNr x) == (getNrVal (fst(eval y e)))),e)
                    | (isTerminal y) = (Boolean ((getNrVal (fst(eval x e))) == (getNr y)),e)

-- evaluates not equal expression
eval (NotEq x y) e   | (isTerminal x) && (isTerminal y) = (Boolean((getNr x) /= (getNr y)),e)
                     | (not(isTerminal x)) && (not(isTerminal y)) = (Boolean ((getNrVal(fst(eval x e))) /= (getNrVal (fst(eval y e)))),e)
                     | (isTerminal x) = (Boolean ((getNr x) /= (getNrVal (fst(eval y e)))),e)
                     | (isTerminal y) = (Boolean ((getNrVal (fst(eval x e))) /= (getNr y)),e)

--evaluates expression that adds an element to the beginnig of the list
eval (AddFst x y) e   | (isTerminal x) && (isTerminal y) = (Array((getNr x) : (getArr y)),e)
                      | (not(isTerminal x)) && (not(isTerminal y)) = (Array ((getNrVal(fst(eval x e))) : (getArrVal (fst(eval y e)))),e)
                      | (isTerminal x) = (Array ((getNr x) : (getArrVal (fst(eval y e)))),e)
                      | (isTerminal y) = (Array ((getNrVal (fst(eval x e))) : (getArr y)),e)

-- evaluates expression that adds an element to the end of the list
eval (AddLst x y) e   | (isTerminal x) && (isTerminal y) = (Array((getArr y) ++ ((getNr x):[])),e)
                      | (not(isTerminal x)) && (not(isTerminal y)) = (Array ((getArrVal (fst(eval y e))) ++ ((getNrVal(fst(eval x e))):[])),e)
                      | (isTerminal x) = (Array ((getArrVal (fst(eval y e))) ++ ((getNr x):[])),e)
                      | (isTerminal y) = (Array ((getArr y) ++ ((getNrVal (fst(eval x e))):[])),e)

-- evaluates concatenation expression
eval (Concat x y) e   | (isTerminal x) && (isTerminal y) = (Array((getArr x) ++ (getArr y)),e)
                      | (not(isTerminal x)) && (not(isTerminal y)) = (Array ((getArrVal(fst(eval x e))) ++ (getArrVal (fst(eval y e)))),e)
                      | (isTerminal x) = (Array ((getArr x) ++ (getArrVal (fst(eval y e)))),e)
                      | (isTerminal y) = (Array ((getArrVal (fst(eval x e))) ++ (getArr y)),e)

-- evaluates expression that gets the n th element from a list
eval (Get x y) e      | (isTerminal x) && (isTerminal y) = (Integer(get (getNr x) (index(getArr y))),e)
                      | (not(isTerminal x)) && (not(isTerminal y)) = (Integer (get (getNrVal(fst(eval x e))) (index(getArrVal (fst(eval y e))))),e)
                      | (isTerminal x) = (Integer (get (getNr x) (index(getArrVal (fst(eval y e))))),e)
                      | (isTerminal y) = (Integer (get (getNrVal (fst(eval x e))) (index(getArr y))),e)
                              where
                                   get :: Int -> [(Int,Int)] -> Int
                                   get i [] = error "Baubillious! Index out of bounds!"
                                   get i (x:xs)  | (fst x) == i = snd x
                                                 | otherwise = get i xs

-- evaluates expression that removes
eval (Remove x y) e   | (isTerminal x) && (isTerminal y) = (Array(remove (getNr x) (index(getArr y))),e)
                      | (not(isTerminal x)) && (not(isTerminal y)) = (Array (remove (getNrVal(fst(eval x e))) (index(getArrVal (fst(eval y e))))),e)
                      | (isTerminal x) = (Array (remove (getNr x) (index(getArrVal (fst(eval y e))))),e)
                      | (isTerminal y) = (Array (remove (getNrVal (fst(eval x e))) (index(getArr y))),e)
                              where
                                   remove :: Int -> [(Int,Int)] -> [Int]
                                   remove i [] = error "Baubillious! Index out of bounds!"
                                   remove i (x:xs)     | (fst x) == i = remove i xs
                                                       | otherwise = (snd x) : (remove i xs)

-- evaluates expression that returns the array from index x to y
eval (GetXY x y arr) e    | (isTerminal x) && (isTerminal y) && (isTerminal arr) = (Array(get (getNr x) (getNr y) (index(getArr arr))),e)
                          | (not(isTerminal x)) && (not(isTerminal y)) && (not(isTerminal arr)) = (Array (get (getNrVal(fst(eval x e))) (getNrVal(fst(eval y e))) (index(getArrVal (fst(eval arr e))))),e)
                          | (isTerminal x) && (isTerminal y) = (Array (get (getNr x) (getNr y)(index(getArrVal (fst(eval y e))))),e)
                          | (isTerminal x) && (isTerminal arr) = (Array (get (getNr x) (getNrVal (fst(eval y e))) (index(getArr arr))),e)
                          | (isTerminal x) = (Array (get (getNr x) (getNrVal (fst(eval y e ))) (index(getArrVal (fst (eval arr e))))),e)
                          | (isTerminal y) && (isTerminal arr) = (Array (get (getNrVal (fst(eval x e ))) (getNr y) (index (getArr arr))),e)
                          | (isTerminal y) = (Array (get (getNrVal (fst(eval x e ))) (getNr y) (index (getArrVal (fst(eval arr e ))))),e)
                          | (isTerminal arr) = (Array (get (getNrVal (fst(eval x e ))) (getNrVal (fst(eval y e ))) (index(getArr arr))),e)
                              where
                                   get :: Int -> Int -> [(Int,Int)] -> [Int]
                                   get x y [] = error "Baubillious! Indeo out of bounds!"
                                   get x y (a:arr)    | ((fst a)>=x) && ((fst a)<=y) = (snd a) : (get x y arr)
                                                      | otherwise = get x y arr












index :: [Int] -> [(Int,Int)]
index x = zip [0,1..] x

-- evaluates expression within brackets
--eval (Br x) e = eval x e
