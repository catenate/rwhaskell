Real World Haskell, p. 15

> main = interact line_count
> 	where line_count input = show (length (lines input)) ++ "\n"
