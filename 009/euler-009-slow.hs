{-
There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

Brute-force solution, takes way too long.
-}

main = print $ head [(a,b,c) | a <- [1..1000], b <- [a..1000], c <- [b..1000], a^2 + b^2 == c^2, a + b + c == 1000]
