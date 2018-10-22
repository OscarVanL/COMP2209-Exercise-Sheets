
--Exercise 1:
--i: Char list, ii: Char tuple, iii: Mixed List (not permissible), iv: Mixed Tuple
--v: List of tuples of Bool,Char, vi: Tuple of Lists of different types, vii: list of instructions (generic types 'a')
--ix: Empty list of generic types, x: Tries to put all elements into a list, but this doesn't work because lists must contain the same types. 
--xi: A list as an element inside a list.

--Exercise 2:
--i: bools :: [Bool]
bools = [True, False]
--ii: nums :: [[Int]]
nums = [[0],[1]]
--iii: add :: Int -> Int -> Int -> Int
add a b c = a + b + c
--iv: copy :: a -> (a,a)
copy a = (a,a)
--v: apply :: (a -> b) -> a -> b
apply f x : f x
--vi: explode :: String -> [Char]
explode a = a --A string IS a list of chars

--Exercise 3:
--i: second xs = head (tail xs)
--second :: [a] -> a
--ii: swap (x,y) = (y,x)
--swap :: (b, a) -> (a, b)
--iii: pair x y = (x, y)
--pair :: a -> b -> (a, b)
--iv: double x = x*2
--double :: Num a => a -> a
--v: palindrome xs = reverse xs = xs
--palindrome :: Eq [a] => [a] -> [Bool]
--vi: twice f x = f ( f x )
--twice :: (t -> t) -> t -> t

--Exercise 4:
