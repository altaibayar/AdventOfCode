# COPY-PASTED FROM https://rosettacode.org/wiki/Chinese_remainder_theorem#Python_3.6

# Python 3.6
from functools import reduce

def chinese_remainder(n, a):
    sum = 0
    prod = reduce(lambda a, b: a*b, n)
    for n_i, a_i in zip(n, a):
        p = prod // n_i
        sum += a_i * mul_inv(p, n_i) * p
    return sum % prod
 
def mul_inv(a, b):
    b0 = b
    x0, x1 = 0, 1
    if b == 1: return 1
    while a > 1:
        q = a // b
        a, b = b, a%b
        x0, x1 = x1 - q * x0, x0
    if x1 < 0: x1 += b0
    return x1
 
if __name__ == '__main__':
    n = [37, 41, 601, 19, 17, 23, 29, 443, 13]
    a = [37, 14, 564, -30, -37, -37, -37, 375, -68]
    
    # n = [7, 13, 59, 31, 19]
    # a = [7, 12, 55, 25, 12]

    print(chinese_remainder(n, a))