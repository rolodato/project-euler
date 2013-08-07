{-
Find the difference between the sum of the squares of the first one hundred
natural numbers and the square of the sum.

The wording of this problem is backwards! It should be the difference between
the square of the sum and the sum of the squares, otherwise the result is negative
and incorrect according to Project Euler.
-}

main = print $ (sum [1..100]) ^ 2 - sum (map (^ 2) [1..100])