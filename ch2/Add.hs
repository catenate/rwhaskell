{-# OPTIONS_GHC -XUnicodeSyntax #-}

module Add where
import Unicoper

add x y = x + y

add_cols ∷ String → String
add_cols input = (unwords ... map show ... combos (count_columns input) input) ++ "\n"

count_columns ∷ String → Int
count_columns s = length . words . head . lines ... s

combo ∷ Int → String → Int
combo n s = sum_ints . strs_to_ints . column n . map words . lines ... s

combos ∷ Int → String → [Int]
combos n s | n > 0	= (combos (n − 1) s) ++ [combo n s]
combos n s | n =? 0	= []

column ∷ Int → [[String]] → [String]
column n sss = map (flatten . drop (n − 1) . take n) sss

strs_to_ints ∷ [String] → [Int]
strs_to_ints ss = map read ss

sum_ints ∷ [Int] → Int
sum_ints is = foldr (+) 0 is

flatten ∷ [[a]] → [a]
flatten = foldl (++) []
