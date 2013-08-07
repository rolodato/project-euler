{-
Find the largest palindrome made from the product of two 3-digit numbers.
-}

-- Convert to string and reverse
isPalindrome :: Integer -> Bool
isPalindrome n = (reverse $ show n) == (show n)

-- Start y from x to avoid duplicates
main = print $ maximum [x * y | x <- [100..999], y <- [x..999], isPalindrome (x * y)]