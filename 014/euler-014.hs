{-
Which starting number, under one million, produces the longest chain?

Naive implementation, very slow.
-}

import Data.List (maximumBy)
import Data.Function (on)

collatz n
	| even n = n `div` 2
	| otherwise = 3*n + 1

chain n = (takeWhile (/= 1) $ iterate collatz n)

maxChain = (compare `on` (length.fst))

main = print $ snd $ maximumBy maxChain [(chain n, n) | n <- [1..1000000]]
