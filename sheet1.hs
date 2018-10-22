--sum[] = 0
--sum (x:xs) = x + sum xs


--Define a function product that produces the product of a list of numbers. Test your definition on a few examples.
--product[] = 0
--product (x:xs) = x * product xs

--Create a function quicktros that produces a sorted version of the argument list in descending order from the
--provided quicksort function.
quicktros [] = []
quicktros (x:xs) = quicktros ls ++ [x] ++ quicktros rs
    where
        ls = [ a | a <- xs , a > x ]
        rs = [ a | a <- xs , a <= x ]

quicksort [] = []
quicksort (x:xs) = quicksort ls ++ [x] ++ quicksort rs
    where 
        ls = [ a | a <- xs , a <= x ]
        rs = [ a | a <- xs , a > x ]

--Exercise 7
n = a `div` length xs
    where 
        a = 10 
        xs = [1,2,3,4,5]


--Exercise 8
lastAlta[] = 0
lastAlta (x) = x !! (length(x)-1)
--Exercise 8
lastAltb [] = []
lastAltb x = drop (length x - 1) x
--Exercise 8
lastAltc [] = 0
lastAltc x = (reverse x) !! 0