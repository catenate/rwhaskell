{-# OPTIONS_GHC -XUnicodeSyntax #-}

module Main where
import Add
import Test.HUnit
import Test.QuickCheck
import Test.QuickCheck.Batch
import Unicoper

prop_relational_lt ∷ Int → Int → Bool; prop_relational_lt x y = x + y < add x y

prop_relational_le x y = x + y ≤ add x y where types = x :: Int

prop_relational_eq x y = x + y =? add x y where types = x :: Int

prop_relational_ge x y = x + y ≥ add x y where types = x :: Int

prop_relational_gt x y = x + y > add x y where types = x :: Int

prop_commutative ∷ Int → Int → Bool; prop_commutative x y = add x y =? add y x

allChecks = [
	run prop_relational_lt,
	run prop_relational_le,
	run prop_relational_eq,
	run prop_relational_ge,
	run prop_relational_gt,
	run prop_commutative
	]

options = TestOptions {
	no_of_tests = 200,
	length_of_tests = 1,
	debug_tests = False
}

main = do
	runTests "relational" options allChecks
	runTestTT test3
	runTestTT test4

test3 = TestCase $ assertEqual "Simple as 1 2 3" 3 (add 1 2) 

test4 = TestCase $ assertEqual "Simple as 1 2 4" 4 (add 1 2) 
