module SpellBookEval where
import SpellBookGrammar

data Expr = Data | Action deriving (Show,Eq)
type Environment = [ (String,Expr) ]


isTerminated :: Expr -> Bool
isTerminated (Nr _) = True
isTerminated (Arr _) = True
isTerminated (Lumos) = True
isTerminated (Nox) = True
isTerminated _ = False

unpack :: Expr -> (Expr,Environment)
unpack e = (e,[])

getValueBinding :: String Environment -> (Expr,Environment)
getValueBinding x [] = error "Expecto Patronum! Variable binding not found!"
getValueBinding x ((y,e):env) | x == y = unpack e
                              | otherwise = getValueBinding x env

update :: Environment -> String -> Expr -> Environment
update env x e = (x,e):env
