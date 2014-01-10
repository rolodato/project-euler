import itertools

print ''.join(elem[0] for elem in list(itertools.permutations('0123456789'))[999999])
