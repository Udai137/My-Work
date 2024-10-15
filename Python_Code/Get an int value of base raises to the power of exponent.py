base = int(input("Enter the base "))
exp = int(input("Enter the exponent "))
def check(base,exp):
    mul = 1
    for i in range (exp):
        mul = base * mul
    return mul
j = check(base,exp)
print (j)
