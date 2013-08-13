{-
What is the value of the first triangle number to have over five hundred divisors?
-}

triangle n = n * (n + 1) `div` 2
triangleNumbers = map triangle [1..]

-- Divisors for the nth triangular number using coprime property
triangleDivisors n
	| even n = divisors (div n 2) * divisors (n + 1)
	| otherwise = divisors n * divisors (div (n + 1) 2)

-- Divisors for any natural number (naive)
divisors n = length [x | x <- [1..n], n `mod` x == 0]

main = print $ triangle $ head [n | n <- [1..], triangleDivisors n > 500]
