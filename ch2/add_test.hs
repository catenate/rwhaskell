{-# OPTIONS_GHC -XUnicodeSyntax #-}

module Main where
import Add
import Test.HUnit
import Test.QuickCheck
import Test.QuickCheck.Batch
import Unicoper

r = run ∷ (Int → Int → Bool) → TestOptions → IO TestResult

prop_relational_lt x y = x + y < add x y
prop_relational_le x y = x + y ≤ add x y
prop_relational_eq x y = x + y =? add x y
prop_relational_ge x y = x + y ≥ add x y
prop_relational_gt x y = x + y > add x y

prop_commutative x y = add x y =? add y x

prop_identitx x y =
	x =? 0 ==> add x y =? y
	where types = (x∷Int, y∷Int)

prop_identity x y =
	y =? 0 ==> add x y =? x
	where types = (x∷Int, y∷Int)

props = [
	r prop_relational_lt, r prop_relational_le, r prop_relational_eq, r prop_relational_ge, r prop_relational_gt,
	r prop_commutative,
	run prop_identitx, run prop_identity
	]

main = do
	runTests "relational" defOpt props
	runTestTT test3
	runTestTT test4

test3 = TestCase $ assertEqual "Simple as 1 2 3" 3 (add 1 2) 

test4 = TestCase $ assertEqual "Simple as 1 2 4" 4 (add 1 2) 
