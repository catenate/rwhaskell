> {-# OPTIONS_GHC -XUnicodeSyntax #-}

> {-# LANGUAGE CPP #-}
> {-# OPTIONS_GHC -pgmP /usr/bin/cpp #-}
> #define showExpr(e) (#e ++ " → " ++ show (e))
> #define showExprLn(e) (__FILE__ ++ ":" ++ show __LINE__ ++ ": " ++ #e ++ " → " ++ show (e))

> import Unicoper

> main = do
> 	test

> test = do
> 	flist
> 	ftuple
> 	list
> 	tuple

> flist = do
> 	putStrLn (showExprLn ((take 0 [1,2,3,4,5])))
> 	putStrLn (showExprLn ((take 1 [1,2,3,4,5])))
> 	putStrLn (showExprLn ((take 2 [1,2,3,4,5])))
> 	putStrLn (showExprLn ((take 3 [1,2,3,4,5])))
> 	putStrLn (showExprLn ((take 4 [1,2,3,4,5])))
> 	putStrLn (showExprLn ((take 5 [1,2,3,4,5])))
> 	putStrLn (showExprLn ((take 6 [1,2,3,4,5])))
> 	putStrLn (showExprLn ((take 0 [] :: String)))
> 	putStrLn (showExprLn ((take 1 [] :: String)))
> 	putStrLn (showExprLn ((take 2 [] :: String)))
> 	putStrLn (showExprLn ((drop 0 [1,2,3,4,5])))
> 	putStrLn (showExprLn ((drop 1 [1,2,3,4,5])))
> 	putStrLn (showExprLn ((drop 2 [1,2,3,4,5])))
> 	putStrLn (showExprLn ((drop 3 [1,2,3,4,5])))
> 	putStrLn (showExprLn ((drop 4 [1,2,3,4,5])))
> 	putStrLn (showExprLn ((drop 5 [1,2,3,4,5])))
> 	putStrLn (showExprLn ((drop 6 [1,2,3,4,5])))
> 	putStrLn (showExprLn ((drop 0 [] :: String)))
> 	putStrLn (showExprLn ((drop 1 [] :: String)))
> 	putStrLn (showExprLn ((drop 2 [] :: String)))

> ftuple = do
> 	putStrLn (showExprLn ((fst (1,'a'))))
> 	putStrLn (showExprLn ((snd (1,'a'))))
> 	--putStrLn (showExprLn ((snd (1,'a',True)))) -- Couldn’t match expected type ‘(a, b)’ against inferred type ‘(t, Char, Bool)’

> list = do
> 	putStrLn (showExprLn ((head [1,2,3,4])))
> 	putStrLn (showExprLn ((head ['a','b','c'])))
> 	--putStrLn (showExprLn (head [] :: String)) -- Prelude.head: empty list
> 	putStrLn (showExprLn ((tail [1,2,3,4])))
> 	putStrLn (showExprLn ((tail [2,3,4])))
> 	putStrLn (showExprLn ((tail [True,False])))
> 	putStrLn (showExprLn (tail "list"))
> 	--putStrLn (showExprLn (tail [] :: String)) -- Prelude.tail: empty list

Tuples can return multiple values from a function, and hold ad hoc collections.

> tuple = do
> 	putStrLn ((showExprLn (())) ++ " unit")
> 	putStrLn (showExprLn ((1964, "Labyrinths")) ++ " pair")
> 	putStrLn (showExprLn ((4, ['a', 'm'], (16, True))) ++ " triple")
