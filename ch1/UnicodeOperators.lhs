nb haskell unicode
Current support for Unicode in source files.
http://hackage.haskell.org/trac/haskell-prime/wiki/UnicodeInHaskellSource

Jhc allows unrestricted use of the Unicode character set in Haskell
source, treating input as UTF-8.  Several uses of Unicode characters in
place of Haskell keywords are permitted:

	→ (\x2192) is equivalent to ->
	← (\x2190) is equivalent to <-
	∷ (\x2237) is equivalent to ::
	‥ (\x2025) is equivalent to ..
	⇒ (\x21d2) is equivalent to =>
	∀ (\x2200) is equivalent to forall
	∃ (\x2203) is equivalent to exists (see ExistentialQuantification)

In addition there is experimental support for defining new operators and
names using various Unicode characters.

Hugs treats input as being in the encoding specified by the current locale,
but permits Unicode only in comments and character and string literals.

GHC now (as of early Jan 2006) interprets source files as UTF-8.
In -fglasgow-exts mode the above special symbols are interpreted as in JHC.
GHC knows about the characters classifications of all unicode characters
via the Data.Char library, and can therefore understand identifiers
written using alphanumeric characters from any language (but see below
for note about caseless character sets).

Others treat source code as ISO 8858-1 (Latin-1).


nb ghc unicode syntax option
Unicode syntax
http://haskell.org/ghc/docs/6.12.2/html/users_guide/syntax-extns.html

The language extension -XUnicodeSyntax enables Unicode characters to be
used to stand for certain ASCII character sequences.  The following
alternatives are provided:

ASCII	Unicode alternative	Code point	Name
::	::	0x2237	PROPORTION
=>	⇒	0x21D2	RIGHTWARDS DOUBLE ARROW
forall	∀	0x2200	FOR ALL
->	→	0x2192	RIGHTWARDS ARROW
<-	←	0x2190	LEFTWARDS ARROW
..	…	0x22EF	MIDLINE HORIZONTAL ELLIPSIS

> {-# OPTIONS_GHC -XUnicodeSyntax #-}


nb haskell define use new operator @rwhbook
RWH pp. 225–226

> module UnicodeOperators where

> (=?) :: (Eq a) ⇒ a → a → Bool
> (=?) = (==)
> infix 4 =?

> (≟) :: (Eq a) ⇒ a → a → Bool
> (≟) = (==)
> infix 4 ≟

> (·) :: (Num a) ⇒ a → a → a
> (·) = (*)
> infixl 7 ·

> (×) :: (Num a) ⇒ a → a → a
> (×) = (*)
> infixl 7 ×

> (÷) :: (Fractional a) ⇒ a → a → a
> (÷) = (/)
> infixl 7 ÷

> (↑) :: (Floating a) ⇒ a → a → a
> (↑) = (**)
> infixr 8 ↑

> (↥) :: (Num a, Integral b) => a -> b -> a
> (↥) = (^)
> infixr 8 ↥

> (↥↥) :: (Integral a, Integral b) => a -> b -> a
> x ↥↥ y | y > 0 = x ↥ (x ↥↥ (y − 1))
> x ↥↥ y | y ≤ 0 = 1
> infixr 8 ↥↥

> (↥↥↥) :: (Integral a, Integral b) => a -> b -> a
> x ↥↥↥ y | y > 0 = x ↥↥ (x ↥↥↥ (y − 1))
> x ↥↥↥ y | y ≤ 0 = 1
> infixr 8 ↥↥↥

> (−) :: (Num a) ⇒ a -> a -> a
> (−) = (-)
> infixl 6 −

> (≠) :: (Eq a) ⇒ a → a → Bool
> (≠) = (/=)
> infix 4 ≠

> (⋀) :: Bool → Bool → Bool
> (⋀) = (&&)
> infixr 3 ⋀

> (⋁) :: Bool → Bool → Bool
> (⋁) = (||)
> infixr 2 ⋁

> (≥) :: (Ord a) ⇒ a → a → Bool
> (≥) = (>=)
> infix 4 ≥

> (≤) :: (Ord a) ⇒ a → a → Bool
> (≤) = (<=)
> infix 4 ≤
