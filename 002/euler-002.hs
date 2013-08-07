{-
By considering the terms in the Fibonacci sequence whose values do not exceed
four million, find the sum of the even-valued terms.

This is much faster than using the regular definition of the Fibonacci sequence.
-}
fibs = 1 : 2 : zipWith (+) fibs (tail fibs)

main = print $ sum [n | n <- takeWhile (<= 4000000) fibs, even n]