-- ∷ ⇒ ∀ →	← …
{-# OPTIONS_GHC -XUnicodeSyntax #-}

module Unicoper where

(...) ∷ (a -> b) -> a -> b
(...) = ($)
infixr 0 ...

(=?) ∷ (Eq a) ⇒ a → a → Bool
(=?) = (==)
infix 4 =?

(≟) ∷ (Eq a) ⇒ a → a → Bool
(≟) = (==)
infix 4 ≟

(·) ∷ (Num a) ⇒ a → a → a
(·) = (*)
infixl 7 ·

(×) ∷ (Num a) ⇒ a → a → a
(×) = (*)
infixl 7 ×

(÷) ∷ (Fractional a) ⇒ a → a → a
(÷) = (/)
infixl 7 ÷

(↑) ∷ (Floating a) ⇒ a → a → a
(↑) = (**)
infixr 8 ↑

(↥) ∷ (Num a, Integral b) => a -> b -> a
(↥) = (^)
infixr 8 ↥

(↥↥) ∷ (Integral a, Integral b) => a -> b -> a
x ↥↥ y | y > 0 = x ↥ (x ↥↥ (y − 1))
x ↥↥ y | y ≤ 0 = 1
infixr 8 ↥↥

(↥↥↥) ∷ (Integral a, Integral b) => a -> b -> a
x ↥↥↥ y | y > 0 = x ↥↥ (x ↥↥↥ (y − 1))
x ↥↥↥ y | y ≤ 0 = 1
infixr 8 ↥↥↥

(−) ∷ (Num a) ⇒ a -> a -> a
(−) = (-)
infixl 6 −

(≠) ∷ (Eq a) ⇒ a → a → Bool
(≠) = (/=)
infix 4 ≠

(⋀) ∷ Bool → Bool → Bool
(⋀) = (&&)
infixr 3 ⋀

(⋁) ∷ Bool → Bool → Bool
(⋁) = (||)
infixr 2 ⋁

(≥) ∷ (Ord a) ⇒ a → a → Bool
(≥) = (>=)
infix 4 ≥

(≤) ∷ (Ord a) ⇒ a → a → Bool
(≤) = (<=)
infix 4 ≤
