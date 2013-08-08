/*
There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

Brute-force solution, runs fast compared to a similar Haskell version.
*/

#include <stdio.h>
#include <stdlib.h>

int is_pythagorean_triple(int a, int b, int c)
{
	return a*a + b*b == c*c;
}

int main(void)
{
	int i, j, k;
	for (i = 1; i < 1000; i++) {
		for (j = i; j < 1000; j++) {
			for (k = j; k < 1000; k++) {
				if (is_pythagorean_triple(i, j, k) && i + j + k == 1000) {
					printf("%d\n", i * j * k);
				}
			}
		}
	}

	return EXIT_SUCCESS;
}
