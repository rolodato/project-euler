{-
There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

Using Euclid's formula to generate all Pythagorean triplets.
-}

triples = [[a, b, c] | m <- [1..],
					   n <- [1..m-1],
					   let a = m^2 - n^2,
					   let b = 2*m*n,
					   let c = m^2 + n^2]

main = print $ head [product t | t <- triples, sum t == 1000]
