> {-# OPTIONS_GHC -XUnicodeSyntax #-}

> {-# LANGUAGE CPP #-}
> {-# OPTIONS_GHC -pgmP /usr/bin/cpp #-}
> #define showExpr(e) (#e ++ " → " ++ show (e))
> #define showExprLn(e) (__FILE__ ++ ":" ++ show __LINE__ ++ ": " ++ #e ++ " → " ++ show (e))

> import Unicoper

> main = do
> 	test

> test = do
> 	bool
> 	char
> 	double
>	--float -- Float is narrower than Double but not as efficient
> 	int
> 	integer
> 	string
> 	strong

> bool = do
> 	putStrLn (showExprLn (True ∷ Bool))
> 	putStrLn (showExprLn (False ∷ Bool))
> 	putStrLn (showExprLn (False ⋀ False ∷ Bool))
> 	putStrLn (showExprLn (False ⋀ True ∷ Bool))
> 	putStrLn (showExprLn (True ⋀ False ∷ Bool))
> 	putStrLn (showExprLn (True ⋀ True ∷ Bool))
> 	putStrLn (showExprLn (False ⋁ False ∷ Bool))
> 	putStrLn (showExprLn (False ⋁ True ∷ Bool))
> 	putStrLn (showExprLn (True ⋁ False ∷ Bool))
> 	putStrLn (showExprLn (True ⋁ True ∷ Bool))

> char = do
> 	putStrLn (showExprLn ('a' ∷ Char))
> 	putStrLn (showExprLn ('â' ∷ Char))
> 	putStrLn (showExprLn ('\226' ∷ Char))
> 	putStrLn (showExprLn ('ﬁ' ∷ Char))
> 	putStrLn (showExprLn ('\64257' ∷ Char))
> 	putStrLn (showExprLn ('\xfb01' ∷ Char))

> double = do
> 	putStrLn (showExprLn (0 ∷ Double))
> 	putStrLn (showExprLn (1 ∷ Double))
> 	putStrLn (showExprLn (-1 ∷ Double))
> 	putStrLn (showExprLn (2↑7 − 1 ∷ Double))
> 	putStrLn (showExprLn (2↑7 ∷ Double))
> 	putStrLn (showExprLn (2↑8 − 1 ∷ Double))
> 	putStrLn (showExprLn (2↑8 ∷ Double))
> 	putStrLn (showExprLn (2↑15 − 1 ∷ Double))
> 	putStrLn (showExprLn (2↑15 ∷ Double))
> 	putStrLn (showExprLn (2↑16 − 1 ∷ Double))
> 	putStrLn (showExprLn (2↑16 ∷ Double))
> 	putStrLn (showExprLn (2↑31 − 1 ∷ Double))
> 	putStrLn (showExprLn (2↑31 ∷ Double))
> 	putStrLn (showExprLn (2↑32 − 1 ∷ Double))
> 	putStrLn (showExprLn (2↑32 ∷ Double))
> 	putStrLn (showExprLn (2↑63 − 1 ∷ Double))
> 	putStrLn (showExprLn (2↑63 ∷ Double))
> 	putStrLn (showExprLn (2↑64 − 1 ∷ Double))
> 	putStrLn (showExprLn (2↑64 ∷ Double))
> 	putStrLn (showExprLn (2↑127 − 1 ∷ Double))
> 	putStrLn (showExprLn (2↑127 ∷ Double))
> 	putStrLn (showExprLn (2↑255 − 1 ∷ Double))
> 	putStrLn (showExprLn (2↑255 ∷ Double))

> int = do
> 	putStrLn (showExprLn (0 ∷ Int))
> 	putStrLn (showExprLn (1 ∷ Int))
> 	putStrLn (showExprLn (-1 ∷ Int))
> 	putStrLn (showExprLn (2↥7 − 1 ∷ Int))
> 	putStrLn (showExprLn (2↥7 ∷ Int))
> 	putStrLn (showExprLn (2↥8 − 1 ∷ Int))
> 	putStrLn (showExprLn (2↥8 ∷ Int))
> 	putStrLn (showExprLn (2↥15 − 1 ∷ Int))
> 	putStrLn (showExprLn (2↥15 ∷ Int))
> 	putStrLn (showExprLn (2↥16 − 1 ∷ Int))
> 	putStrLn (showExprLn (2↥16 ∷ Int))
> 	putStrLn (showExprLn (2↥31 − 1 ∷ Int))
> 	putStrLn (showExprLn (2↥31 ∷ Int))
> 	putStrLn (showExprLn (2↥32 − 1 ∷ Int))
> 	putStrLn (showExprLn (2↥32 ∷ Int))
> 	putStrLn (showExprLn (2↥63 − 1 ∷ Int))
> 	putStrLn (showExprLn (2↥63 ∷ Int))
> 	putStrLn (showExprLn (2↥64 − 1 ∷ Int))
> 	putStrLn (showExprLn (2↥64 ∷ Int))
> 	putStrLn (showExprLn (2↥127 − 1 ∷ Int))
> 	putStrLn (showExprLn (2↥127 ∷ Int))
> 	putStrLn (showExprLn (2↥255 − 1 ∷ Int))
> 	putStrLn (showExprLn (2↥255 ∷ Int))
> 	putStrLn (showExprLn (isInt8))
> 	putStrLn (showExprLn (isInt16))
> 	putStrLn (showExprLn (isInt32))
> 	putStrLn (showExprLn (isInt64))
> 	putStrLn (showExprLn (isInt128))
> 	putStrLn (showExprLn (isInt256))

nb program detect native integer word size int8 int16 int32 int64 int128 int256
On a 64-bit machine,

	2↥7 ∷ Int → 128
	2↥15 ∷ Int → 32768
	2↥31 ∷ Int → 2147483648
	2↥63 ∷ Int → -9223372036854775808
	2↥127 ∷ Int → 0
	2↥255 ∷ Int → 0

If this is a general trend, then testing (2↥n ∷ Int) < 0, where ↥ is
integer exponentiation, is a programmatic way to detect the native word
size of a machine.  It should be cheap since 2↥n is just the single (n+1)th
bit set (2↥0 = 1 = set only 1st bit, least significant), casting interprets
the bits in memory a certain way but does not copy or modify them, and
checking whether something is less than 0 just tests the sign bit.

> isInt8 = (2↥7 ∷ Int) < 0

> isInt16 = (2↥15 ∷ Int) < 0

> isInt32 = (2↥31 ∷ Int) < 0

> isInt64 = (2↥63 ∷ Int) < 0

> isInt128 = (2↥127 ∷ Int) < 0

> isInt256 = (2↥255 ∷ Int) < 0

catenate on #haskell: It looks like testing whether (2^(n-1) ∷ Int) < 0
is a reasonably efficient way to test whether the machine's native
integer size is n bits.  It returns True only for n=64 on a 64-bit
machine (I tested n=8,16,32,64,128,256).  Am I thinking right on this?

dolio: catenate: If you can assume that every machine you run on will be
twos complement, and overflow the right way, then yes.

catenate: Any major CPU architectures not twos complement?  Intel/AMD,
PPC, MIPS, Atom, other cell phone chips, Apple's chips?  current ones

dolio: catenate: Not that I know of.  But I'm no CPU enthusiast.

Heffalump: all significant current architectures are two's complement

catenate: Wikipedia sez: This numeric representation system was common
in older computers; the PDP-1, CDC 160A and UNIVAC 1100/2200 series,
among many others, used ones'-complement arithmetic.

catenate: Great!  Thanks.  I'll add it to my bag of tricks.

> integer = do
> 	putStrLn (showExprLn (2↥63 − 1 ∷ Integer))
> 	putStrLn (showExprLn (2↥63 ∷ Integer))
> 	putStrLn (showExprLn (2↥64 − 1 ∷ Integer))
> 	putStrLn (showExprLn (2↥64 ∷ Integer))
> 	putStrLn (showExprLn (2↥127 − 1 ∷ Integer))
> 	putStrLn (showExprLn (2↥127 ∷ Integer))
> 	putStrLn (showExprLn (2↥255 − 1 ∷ Integer))
> 	putStrLn (showExprLn (2↥255 ∷ Integer))

> string = do
> 	putStrLn (showExprLn (['a'] ∷ String))
> 	putStrLn (['a'] ∷ String)
> 	putStrLn (showExprLn (['â'] ∷ String))
> 	putStrLn (['â'] ∷ String)
> 	putStrLn (showExprLn (['\226'] ∷ String))
> 	putStrLn (['\226'] ∷ String)
> 	putStrLn (showExprLn (['ﬁ'] ∷ String))
> 	putStrLn (['ﬁ'] ∷ String)
> 	putStrLn (showExprLn (['\64257'] ∷ String))
> 	putStrLn (['\64257'] ∷ String)
> 	putStrLn (showExprLn (['\xfb01'] ∷ String))
> 	putStrLn (['\xfb01'] ∷ String)

> strong = do
> 	--putStrLn (showExprLn ("foo" + 2)) -- Perl is awesomely smart…
> 	--putStrLn (showExprLn ("13foo" + 2)) -- …it converts strings with numbers to numbers!
> 	-- What if the string is "13e3"?  Does it use 13 or 13000?
> 	-- What if the string is "13ea3"?  Does it use only 13?
> 	-- Don’t care enough yet to find out.
> 	--putStrLn (showExprLn (True ⋀ "false")) -- Couldn’t match expected type ‘Bool’ against inferred type ‘[Char]’
> 	--putStrLn (showExprLn (([1,2,3] ∷ Int))) -- Couldn’t match expected type ‘Int’ against inferred type ‘[a]’
>	putStrLn "Haskell’s types are strong."
