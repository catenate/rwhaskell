{-# OPTIONS_GHC -XUnicodeSyntax #-}

module Main where
import Add
import Test.HUnit
import Unicoper

main = runTestTT ... TestList [
	test_sum_ints_col1, test_sum_ints_col2, test_sum_ints_col3,
	test_strs_to_ints_col1, test_strs_to_ints_col2, test_strs_to_ints_col3,
	test_map_words,
	test_column_col1, test_column_col2, test_column_col3,
	test_combo_col1, test_combo_col2, test_combo_col3,
	test_combo_all, test_length_input, test_combos_all
	]

-- input			→ "1 2 3\n3 4 5\n5 6 7\n7 8 9"
-- lines ...		→ ["1 2 3","3 4 5","5 6 7","7 8 9"]
-- map words ...	→ [["1","2","3"],["3","4","5"],["5","6","7"],["7","8","9"]]
-- column 1 ...	→ [["1"],["3"],["5"],["7"]]
-- strs_to_ints ...	→ [1,3,5,7]
-- sum_ints ...	→ 16

input = "1 2 3\n3 4 5\n5 6 7\n7 8 9"

ints_col1 = [1, 3, 5, 7]
ints_col2 = [2, 4, 6, 8]
ints_col3 = [3, 5, 7, 9]

strings_col1 = ["1", "3", "5", "7"]
strings_col2 = ["2", "4", "6", "8"]
strings_col3 = ["3", "5", "7", "9"]

word_mapped = [["1","2","3"],["3","4","5"],["5","6","7"],["7","8","9"]]

test_sum_ints_col1 = TestCase ... assertEqual "sum first column" 16 (sum_ints ints_col1) 
test_sum_ints_col2 = TestCase ... assertEqual "sum second column" 20 (sum_ints ints_col2) 
test_sum_ints_col3 = TestCase ... assertEqual "sum third column" 24 (sum_ints ints_col3) 

test_strs_to_ints_col1 = TestCase ... assertEqual "convert first column" ints_col1 (strs_to_ints strings_col1) 
test_strs_to_ints_col2 = TestCase ... assertEqual "convert second column" ints_col2 (strs_to_ints strings_col2) 
test_strs_to_ints_col3 = TestCase ... assertEqual "convert third column" ints_col3 (strs_to_ints strings_col3) 

test_map_words = TestCase ... assertEqual "map words"
	word_mapped
	(map words ["1 2 3","3 4 5","5 6 7","7 8 9"])

test_column_col1 = TestCase ... assertEqual "column 1"
	strings_col1
	(column 1 word_mapped)

test_column_col2 = TestCase ... assertEqual "column 2"
	strings_col2
	(column 2 word_mapped)

test_column_col3 = TestCase ... assertEqual "column 3"
	strings_col3
	(column 3 word_mapped)

test_combo_col1 = TestCase ... assertEqual "combo 3"
	16
	(combo 1 "1 2 3\n3 4 5\n5 6 7\n7 8 9")

test_combo_col2 = TestCase ... assertEqual "combo 3"
	20
	(combo 2 "1 2 3\n3 4 5\n5 6 7\n7 8 9")

test_combo_col3 = TestCase ... assertEqual "combo 3"
	24
	(combo 3 "1 2 3\n3 4 5\n5 6 7\n7 8 9")

test_combo_all = TestCase ... assertEqual "combo all"
	"16 20 24"
	(unwords ... map show ... [combo 1 input, combo 2 input, combo 3 input])

test_length_input = TestCase ... assertEqual "count columns"
	3
	(count_columns input)

test_combos_all = TestCase ... assertEqual "combos all"
	"16 20 24"
	(unwords ... map show ... combos (count_columns input) input)
