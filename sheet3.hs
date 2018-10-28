--Exercise 1:
sumSqOdd :: Int
sumSqOdd = sum [ x^2 | x <- [1..200] , odd x ]

sumCubEven :: Int
sumCubEven = sum [ x^3 | x <- [1..200], even x]

--Exercise 2:
grid :: Int -> Int -> [(Int,Int)]
grid x y = [ (a,b) | a <- [0..x], b <- [0..y]]

square :: Int -> [(Int,Int)]
square l = [ (x,y) | x <- [0..l], y <- [0..l], x /= y]