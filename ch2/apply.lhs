> {-# OPTIONS_GHC -XUnicodeSyntax #-}

> {-# LANGUAGE CPP #-}
> {-# OPTIONS_GHC -pgmP /usr/bin/cpp #-}
> #define showExpr(e) (#e ++ " → " ++ show (e))
> #define showExprLn(e) (__FILE__ ++ ":" ++ show __LINE__ ++ ": " ++ #e ++ " → " ++ show (e))

> import Unicoper

> main = do
> 	fun

> test = do
> 	apply
> 	binary
> 	fun
> 	unary

curry: a b c d → (((a b) c) d)

> apply = do
> 	--putStrLn (showExprLn (head drop 4 "azerty")) -- Couldn’t match expected type ‘[a]’ (hold’s argument type) against inferred type ‘Int -> [a1] -> [a1]’ (drop’s type signature)
> 	putStrLn (showExprLn (head (drop 4 "azerty")))
> 	putStrLn (showExprLn (head $ drop 4 "azerty"))
> 	putStrLn (showExprLn (head ... drop 4 "azerty"))
> 	putStrLn (showExprLn ((head . drop 4) "azerty"))
> 	putStrLn (showExprLn (head . drop 4 $ "azerty"))
> 	putStrLn (showExprLn (head . drop 4 ... "azerty"))
> 	putStrLn (showExprLn (head . drop 4 $ ['a'..'z']))
> 	putStrLn (showExprLn (head . drop 4 ... ['a'..'z']))
> 	putStrLn (showExprLn ((head . drop 4 $ ['a','c'..'z'])))
> 	putStrLn (showExprLn ((head . drop 4 ... ['a','c'..'z'])))

> binary = do
> 	putStrLn (showExprLn (compare 2 3))
> 	putStrLn (showExprLn (compare 2 3 =? LT))
> 	putStrLn (showExprLn ((compare 2 3) =? LT))
> 	putStrLn (showExprLn (compare 3 3))
> 	putStrLn (showExprLn (compare 3 2))
> 	putStrLn (showExprLn (compare (sqrt 3) (sqrt 6)))
> 	--putStrLn (showExprLn (compare sqrt 3 sqrt 6)) -- Couldn’t match expected type ‘(a1 -> a1) -> t -> a’ against inferred type ‘Ordering’

> fun = do
> 	putStrLn (showExprLn (lines "the quick\nbrown fox\njumps"))

> unary = do
> 	putStrLn (showExprLn (odd 3))
> 	putStrLn (showExprLn (odd 6))
> 	putStrLn (showExprLn (odd 3))
