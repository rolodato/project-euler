{-
What is the 10001st prime number?

Easily solved using the Sieve of Eratosthenes (naive implementation).
Slow, but gets the job done.
-}

sieve [] = []
sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]

primes = sieve [2..]

main = print $ primes !! 10000