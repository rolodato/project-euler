# Find the sum of all primes below two million.
# Equivalent to the C version, but much slower.

def is_prime(n):
	if n == 2 or n % 2 == 0 or n < 2:
		return False

	for i in range(3, n ** 1/2 + 1, 2):
		if n % i == 0:
			return False

	return True

sum = 0
n = 2
while n < 2000000:
	if is_prime(n):
		sum += n
	n += 1

print sum
