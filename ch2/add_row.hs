{-# OPTIONS_GHC -XUnicodeSyntax #-}

module Main where
import Unicoper

--interact :: (String -> String) -> IO ()
main = interact add_rows

--lines :: String -> [String]
--unlines :: [String] -> String

add_rows ∷ String → String
add_rows s = unlines ... map add_row ... lines s

add_row ∷ String → String
add_row s = show ... sum_ints ... get_ints ... words s

get_ints ∷ [String] → [Int]
get_ints ss = map read ss

sum_ints ∷ [Int] → Int
sum_ints is = foldr add 0 is

add x y = x + y
