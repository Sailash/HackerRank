# Enter your code here. Read input from STDIN. Print output to STDOUT
from itertools import product

k,M = list(map(int,input().split()))
biglist = []
maxval = 0
sum1 = 0
for i in range(k):
    lst = list(map(int,input().split()))
    biglist.append(lst[1:])
comb = product(*biglist)
for j in comb:
    sum1 = 0
    for m in j:
        sum1 += m**2
    val = sum1 % M
    if val > maxval:
        maxval = val
print(maxval)

