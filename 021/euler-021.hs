{-
Evaluate the sum of all the amicable numbers under 10000.

Naive solution, slow. Try compiling first to speed it up.
-}

import Data.List

properDivisors n = [x | x <- [1..n - 1], n `mod` x == 0]

d = sum.properDivisors

main = print $ sum [x | x <- [1..10000], d (d x) == x, d (d x) /= d x] 
