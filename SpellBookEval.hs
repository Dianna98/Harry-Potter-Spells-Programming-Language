module SpellBookEval where
import SpellBookGrammar

data Value = Integer Int | Boolean Bool | Array [Int] deriving (Show,Eq)

valueNr :: Value -> Int
valueNr (Integer x) = x
valueNr _  = error "Expecto Patronum! Type mismatched! Integer Expected!"

valueBool :: Value -> Bool
valueBool (Boolean x) = x
valueBool _ = error "Expecto Patronum! Type mismatched! Boolean Expected!"

valueArr :: Value -> [Int]
valueArr (Array x) = x
valueArr _ = error "Expecto Patronum! Type mismatched! Array of integers expected!"

getValue :: Expr -> Value
getValue (Nr x) = Integer x
getValue (Logic x) = Boolean x
getValue (Arr x) = Array x
getValue _ = error "Baubillious! Unknown value!"

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

eval :: Expr -> Environment -> Value
eval (Plus x y) e   | (isTerminal x) && (isTerminal y) = Integer ((valueNr (getValue x)) + (valueNr (getValue y)))
                    | !(isTerminal x) = eval x e
                    | !(isTerminal y) = eval y e
