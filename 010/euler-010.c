/*
Find the sum of all primes below two million.

Uses slightly optimized trial division. Compile as C99 to avoid any
warnings from the use of uint64.
*/

#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <stdbool.h>

bool is_prime(unsigned n)
{
	uint64_t i;

	if (n == 2 || (n % 2) == 0 || n < 2)
		return false;

	for (i = 3; i <= n/i; i += 2) {
		if ((n % i) == 0)
			return false;
	}

	return true;
}

int main(void)
{
	uint64_t sum = 0;
	uint64_t n;
	
	for (n = 2; n < 2000000; n++) {
		if (is_prime(n)) {
			sum += n;
		}
	}

	printf("%" PRIu64 "\n", sum);	
	return 0;
}
