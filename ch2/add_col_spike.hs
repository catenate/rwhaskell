{-# OPTIONS_GHC -XUnicodeSyntax #-}

module Main where
import Add
import Unicoper

main = interact add_cols

add_cols ∷ String → String
add_cols input = unlines ... map add_col ... lines input

add_col ∷ String → String
add_col s = show ... sum_ints ... get_ints ... column 1 ... words s

column ∷ [String] → [String]
column n ss = take n (drop n

get_ints ∷ [String] → [Int]
get_ints ss = map read ss

sum_ints ∷ [Int] → Int
sum_ints is = foldr (+) 0 is
