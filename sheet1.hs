--sum[] = 0
--sum (x:xs) = x + sum xs

--product[] = 0
--product (x:xs) = x * product xs

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

n = a `div` length xs
    where 
        a = 10 
        xs = [1,2,3,4,5]

lastAlta[] = 0
lastAlta (x) = x !! (length(x)-1)

lastAltb [] = []
lastAltb x = drop (length x - 1) x

lastAltc [] = 0
lastAltc x = (reverse x) !! 0