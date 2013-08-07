{-
By considering the terms in the Fibonacci sequence whose values do not exceed
four million, find the sum of the even-valued terms.

Using the regular definition of the Fibonacci sequence is terribly inefficient.
This takes way too long (even on a 3.2GHz Phenom II X4) and uses too much memory.
-}

fib 0 = 1
fib 1 = 2
fib n = fib (n-1) + fib (n-2)

fibs = map fib [1..]

main = print $ sum [n | n <- takeWhile (<= 4000000) fibs, even n]