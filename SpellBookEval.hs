module SpellBookEval where
import SpellBookGrammar

data Value = Integer Int | Boolean Bool | Array [Int] deriving (Show,Eq)

-- valueNr :: Value -> Int
-- valueNr (Integer x) = x
-- valueNr _  = error "Expecto Patronum! Type mismatched! Integer Expected!"
--
-- valueBool :: Value -> Bool
-- valueBool (Boolean x) = x
-- valueBool _ = error "Expecto Patronum! Type mismatched! Boolean Expected!"
--
-- valueArr :: Value -> [Int]
-- valueArr (Array x) = x
-- valueArr _ = error "Expecto Patronum! Type mismatched! Array of integers expected!"
--
-- getValue :: Expr -> Value
-- getValue (Nr x) = Integer x
-- getValue (Logic x) = Boolean x
-- getValue (Arr x) = Array x
-- getValue _ = error "Baubillious! Unknown value!"

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
-- getValueBinding :: String -> Environment -> (Expr,Environment)
-- getValueBinding x [] = error "Expecto Patronum! Variable not found!"
-- getValueBinding x ((y,e):env) | x == y  = unpack e
--                               | otherwise = getValueBinding x env
--
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

eval :: Expr -> Environment -> Value
-- evaluates variable assignment
eval (Assign var expr) e = addVar var expr e

-- evaluates variables
eval (Var x) e = getVar x e

-- evaluates integers
eval (Nr x) e = Integer x

-- evaluates arrays
eval (Arr x) e = Array x

-- evaluates booleans
eval (Logic x) e = Boolean x

-- evaluates head expression
eval (Head x) e  | isTerminal x = Integer(head (getArr x))
                 | otherwise = Integer(head (getArrVal(eval x e)))

-- evaluates ast expression
eval (Last x) e  | isTerminal x = Integer(last (getArr x))
                 | otherwise = Integer(last (getArrVal(eval x e)))

-- evaluates init expression
eval (Init x) e  | isTerminal x = Array (init (getArr x))
                 | otherwise = Array (init (getArrVal(eval x e)))

-- evaluates tail expression
eval (Tail x) e  | isTerminal x = Array (tail (getArr x))
                 | otherwise = Array (tail (getArrVal(eval x e)))

-- evaluates expression returning the length of an array
eval (Length x) e  | isTerminal x = Integer (length (getArr x))
                   | otherwise = Integer (length (getArrVal(eval x e)))

-- evaluates expression returning the sum of all integers in the array
eval (Sum x) e  | isTerminal x = Array (sum (getArr x))
                | otherwise = Array (sum (getArrVal(eval x e)))

-- evaluates expression that reverts the elements of an array
eval (Revert x) e  | isTerminal x = Array (reverse (getArr x))
                   | otherwise = Array (reverse (getArrVal(eval x e)))

-- evaluates not expression
eval (Not x) e  | isTerminal x = Boolean (not (getBool x))
                | otherwise = Boolean (not (getBoolVal(eval x e)))

-- evaluates plus expression
eval (Plus x y) e   | (isTerminal x) && (isTerminal y) = Integer((getNr x) + (getNr y))
                    | (not(isTerminal x)) && (not(isTerminal y)) = Integer ((getNrVal(eval x e)) + (getNrVal (eval y e)))
                    | (isTerminal x) = Integer ((getNr x) + (getNrVal (eval y e)))
                    | (isTerminal y) = Integer ((getNrVal (eval x e)) + (getNr y))

-- evaluates minus expression
eval (Minus x y) e   | (isTerminal x) && (isTerminal y) = Integer((getNr x) - (getNr y))
                     | (not(isTerminal x)) && (not(isTerminal y)) = Integer ((getNrVal(eval x e)) - (getNrVal (eval y e)))
                     | (isTerminal x) = Integer ((getNr x) - (getNrVal (eval y e)))
                     | (isTerminal y) = Integer ((getNrVal (eval x e)) - (getNr y))

-- evaluates times expression
eval (Times x y) e   | (isTerminal x) && (isTerminal y) = Integer((getNr x) * (getNr y))
                     | (not(isTerminal x)) && (not(isTerminal y)) = Integer ((getNrVal(eval x e)) * (getNrVal (eval y e)))
                     | (isTerminal x) = Integer ((getNr x) * (getNrVal (eval y e)))
                     | (isTerminal y) = Integer ((getNrVal (eval x e)) * (getNr y))

-- evaluates div expression
eval (Div x y) e    | (isTerminal x) && (isTerminal y) = Integer((getNr x) `div` (getNr y))
                    | (not(isTerminal x)) && (not(isTerminal y)) = Integer ((getNrVal(eval x e)) `div` (getNrVal (eval y e)))
                    | (isTerminal x) = Integer ((getNr x) `div` (getNrVal (eval y e)))
                    | (isTerminal y) = Integer ((getNrVal (eval x e)) `div` (getNr y))

-- evaluates mod expression
eval (Mod x y) e    | (isTerminal x) && (isTerminal y) = Integer((getNr x) `mod` (getNr y))
                    | (not(isTerminal x)) && (not(isTerminal y)) = Integer ((getNrVal(eval x e)) `mod` (getNrVal (eval y e)))
                    | (isTerminal x) = Integer ((getNr x) `mod` (getNrVal (eval y e)))
                    | (isTerminal y) = Integer ((getNrVal (eval x e)) `mod` (getNr y))

-- evaluates power expression
eval (Power x y) e  | (isTerminal x) && (isTerminal y) = Integer((getNr x) ^ (getNr y))
                    | (not(isTerminal x)) && (not(isTerminal y)) = Integer ((getNrVal(eval x e)) ^ (getNrVal (eval y e)))
                    | (isTerminal x) = Integer ((getNr x) ^ (getNrVal (eval y e)))
                    | (isTerminal y) = Integer ((getNrVal (eval x e)) ^ (getNr y))

-- evaluates less than expression
eval (Less x y) e   | (isTerminal x) && (isTerminal y) = Boolean((getNr x) < (getNr y))
                    | (not(isTerminal x)) && (not(isTerminal y)) = Boolean ((getNrVal(eval x e)) < (getNrVal (eval y e)))
                    | (isTerminal x) = Boolean ((getNr x) < (getNrVal (eval y e)))
                    | (isTerminal y) = Boolean ((getNrVal (eval x e)) < (getNr y))

-- evaluates less than or equal expression
eval (LessEq x y) e | (isTerminal x) && (isTerminal y) = Boolean((getNr x) <= (getNr y))
                    | (not(isTerminal x)) && (not(isTerminal y)) = Boolean ((getNrVal(eval x e)) <= (getNrVal (eval y e)))
                    | (isTerminal x) = Boolean ((getNr x) <= (getNrVal (eval y e)))
                    | (isTerminal y) = Boolean ((getNrVal (eval x e)) <= (getNr y))

-- evaluates greater than expression
eval (Greater x y) e   | (isTerminal x) && (isTerminal y) = Boolean((getNr x) > (getNr y))
                       | (not(isTerminal x)) && (not(isTerminal y)) = Boolean ((getNrVal(eval x e)) > (getNrVal (eval y e)))
                       | (isTerminal x) = Boolean ((getNr x) > (getNrVal (eval y e)))
                       | (isTerminal y) = Boolean ((getNrVal (eval x e)) > (getNr y))

-- evaluates greater than or equal expression
eval (GreaterEq x y) e | (isTerminal x) && (isTerminal y) = Boolean((getNr x) >= (getNr y))
                       | (not(isTerminal x)) && (not(isTerminal y)) = Boolean ((getNrVal(eval x e)) >= (getNrVal (eval y e)))
                       | (isTerminal x) = Boolean ((getNr x) >= (getNrVal (eval y e)))
                       | (isTerminal y) = Boolean ((getNrVal (eval x e)) >= (getNr y))

-- evaluates equality expression
eval (Eq x y) e     | (isTerminal x) && (isTerminal y) = Boolean((getNr x) == (getNr y))
                    | (not(isTerminal x)) && (not(isTerminal y)) = Boolean ((getNrVal(eval x e)) == (getNrVal (eval y e)))
                    | (isTerminal x) = Boolean ((getNr x) == (getNrVal (eval y e)))
                    | (isTerminal y) = Boolean ((getNrVal (eval x e)) == (getNr y))

-- evaluates not equal expression
eval (NotEq x y) e   | (isTerminal x) && (isTerminal y) = Boolean((getNr x) != (getNr y))
                     | (not(isTerminal x)) && (not(isTerminal y)) = Boolean ((getNrVal(eval x e)) != (getNrVal (eval y e)))
                     | (isTerminal x) = Boolean ((getNr x) != (getNrVal (eval y e)))
                     | (isTerminal y) = Boolean ((getNrVal (eval x e)) != (getNr y))

--evaluates expression that adds an element to the beginnig of the list
eval (AddFst x y) e   | (isTerminal x) && (isTerminal y) = Array((getNr x) : (getArr y))
                      | (not(isTerminal x)) && (not(isTerminal y)) = Array ((getNrVal(eval x e)) : (getArrVal (eval y e)))
                      | (isTerminal x) = Array ((getNr x) : (getArrVal (eval y e)))
                      | (isTerminal y) = Array ((getNrVal (eval x e)) : (getArr y))

-- evaluates expression that adds an element to the end of the list
eval (AddLst x y) e   | (isTerminal x) && (isTerminal y) = Array((getArr y) ++ ((getNr x):[]))
                      | (not(isTerminal x)) && (not(isTerminal y)) = Array ((getArrVal (eval y e)) ++ ((getNrVal(eval x e)):[]))
                      | (isTerminal x) = Array ((getArrVal (eval y e)) ++ ((getNr x):[]))
                      | (isTerminal y) = Array ((getArr y) ++ ((getNrVal (eval x e)):[]))

-- evaluates concatenation expression
eval (Concat x y) e   | (isTerminal x) && (isTerminal y) = Array((getArr x) ++ (getArr y))
                      | (not(isTerminal x)) && (not(isTerminal y)) = Array ((getArrVal(eval x e)) ++ (getArrVal (eval y e)))
                      | (isTerminal x) = Array ((getArr x) ++ (getArrVal (eval y e)))
                      | (isTerminal y) = Array ((getArrVal (eval x e)) ++ (getArr y))

-- evaluates expression that gets the n th element from a list
eval (Get x y) e      | (isTerminal x) && (isTerminal y) = Integer(get (getNr x) (index(getArr y)))
                      | (not(isTerminal x)) && (not(isTerminal y)) = Integer (get (getNrVal(eval x e)) (index(getArrVal (eval y e))))
                      | (isTerminal x) = Integer (get (getNr x) (index(getArrVal (eval y e))))
                      | (isTerminal y) = Integer (get (getNrVal (eval x e)) (index(getArr y)))
                              where
                                   get :: Int -> [(Int,Int)] -> Int
                                   get i [] = error "Baubillious! Index out of bounds!"
                                   get i (x:xs)  | (fst x) == i = snd x
                                                 | otherwise = get i xs

-- evaluates expression that removes
eval (Remove x y) e   | (isTerminal x) && (isTerminal y) = Array(remove (getNr x) (index(getArr y)))
                      | (not(isTerminal x)) && (not(isTerminal y)) = Array (remove (getNrVal(eval x e)) (index(getArrVal (eval y e))))
                      | (isTerminal x) = Array (remove (getNr x) (index(getArrVal (eval y e))))
                      | (isTerminal y) = Array (remove (getNrVal (eval x e)) (index(getArr y)))
                              where
                                   remove :: Int -> [(Int,Int)] -> [Int]
                                   remove i [] = error "Baubillious! Index out of bounds!"
                                   remove i (x:xs)     | (fst x) == i = remove xs
                                                       | otherwise = (snd x) : (remove i xs)

-- evaluates expression that returns the array from index x to y
eval (GetXY x y arr) e    | (isTerminal x) && (isTerminal y) && (isTerminal arr) = Array(get (getNr x) (getNr y) (index(getArr arr)))
                          | (not(isTerminal x)) && (not(isTerminal y)) && (not(isTerminal arr)) = Array (get (getNrVal(eval x e)) (getNrVal(eval y e)) (index(getNrVal (eval arr e))))
                          | (isTerminal x) && (isTerminal y) = Array (get (getNr x) (getNr y)(index(getNrVal (eval y e))))
                          | (isTerminal x) && (isTerminal arr) = Array (get (getNr x) (getNrVal (eval y e)) (index(getArr arr)))
                          | (isTerminal x) = Array (get (getNr x) (getNrVal (eval y e )) (index(getArrVal arr)))
                          | (isTerminal y) && (isTerminal arr) = Array (get (getNrVal x e) (getNr y) (index (getArr arr)))
                          | (isTerminal y) = Array (get (getNrVal x e) (getNr y) (index (getArrVal arr e)))
                          | (isTerminal arr) = Array (get (getNrVal x e) (getNrVal y e) (getNr arr))
                              where
                                   get :: Int -> Int -> [(Int,Int)] -> [Int]
                                   get x y [] = error "Baubillious! Indeo out of bounds!"
                                   get x y (a:arr)    | ((fst a)>=x) && ((fst a)<=y) = (snd a) : (get x y arr)
                                                      | otherwise = get x y arr












index :: [Int] -> [(Int,Int)]
index x = zip [0,1..] x

-- evaluates expression within brackets
eval (Br x) e = eval x e
