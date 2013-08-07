{-
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

This solution is concise, but terribly slow.
-}

evenlyDivisibleUpTo n m = all ((== 0).mod n) [1..m]

main = print $ head [x | x <- [1..], x `evenlyDivisibleUpTo` 20]