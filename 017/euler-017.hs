{-
If all the numbers from 1 to 1000 (one thousand) inclusive were written out in
words, how many letters would be used?
-}

import Data.Char

first = ["one", "two", "three", "four", "five", "six", "seven", "eight",
		 "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen",
		 "sixteen", "seventeen", "eighteen", "nineteen"]
tens = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
toString n
	| n == 0 = []
	| elem n [1..19] = first !! (n - 1)
	| elem n [20..99] = tens !! (firstDigit n - 2) ++ (toString $ lastDigit n)
	| elem n [100..999] && n `mod` 100 == 0 = first !! (firstDigit n - 1) ++ "hundred"
	| elem n [100..999] = first !! (firstDigit n - 1) ++ "hundredand" ++ (toString $ lastTwoDigits n)
	| n == 1000 = "onethousand"

firstDigit n = digitToInt $ head $ show n
lastDigit n = digitToInt $ last $ show n
lastTwoDigits n = read (reverse.(take 2).reverse $ show n)

main = print $ sum (map (length.toString) [1..1000])
