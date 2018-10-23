
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
apply f x = f x
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
--It's easy to compare data structures, but difficult to compare functions without testing the entire domain/range of values. Without some
--kind of mathematical proof it's diffiuclt to say that two functions are equal.

--Exercise 5:
halve :: [a] -> ([a],[a])

halve xs = (ls,rs)
    where
        ls = take (length(xs) `div` 2) xs
        rs = drop (length(xs) `div` 2) xs

--Exercise 6: Get the third element of a a list containing at least this many elements
third :: [a] -> a

--With head and tail
--third a = head(tail(tail(tail a)))
--With list indexing
--third a = a !! 3
--With pattern matching
third [_, _, _, x] = x

--Exercise 7: 
safetail :: [a] -> [a]
null :: [a] -> Bool
null a =
    if (length(a) == 0)
        then True
    else False
--Using if-then-else
--safetail a = if Main.null(a) then [] else tail a
--Using guarded equations
--safetail a
--    | length(a) == 0 = []
--    | length(a) > 0 = tail a
--Using pattern matching
safetail [] = []
safetail xs = tail xs
--Using pattern matchig produced most consise code.

--Exercise 8: Disjunction is equivalent to the || operation. Use as: a `disjunction` b
disjunction :: Bool -> Bool -> Bool
disjunction True True = True
disjunction True False = True
disjunction False True = True
disjunction False False = False

--Exercise 9: 
enc :: Int -> String -> String
enc num str
    | num > 0 = enc (num - 1) (map iterForward str)
    | num < 0 = enc (num + 1) (map iterBackward str)
    | num == 0 = str

iterForward :: Char -> Char
iterForward 'z' = 'a'
iterForward c = succ c

iterBackward :: Char -> Char
iterBackward 'a' = 'z'
iterBackward c = pred c

--This is disgusting, it takes an encryption and returns a tuple of the encrypted text and a function to decrypt it.
encWithDec :: Int -> String -> (String, String -> String)
encWithDec num str = (encrypted, decrFunc)
    where
        encrypted = enc num str
        decrFunc = enc (negate num)

--Exercise 10:
luhnDouble :: Int -> Int
luhnDouble a
    | (a*2 > 9) = (a*2) - 9
    | (a*2 < 9) = a*2

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d
    | ((luhnDouble a)+b+(luhnDouble c)+d) `mod` 10 == 0 = True
    | otherwise = False