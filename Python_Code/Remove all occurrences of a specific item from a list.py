num = int(input("Enter the number of elements: "))
val = list(map(int, input().split()))

emp = []

for i in range (1,num-1):
    if val.count(i) == 1:
        emp.append(i)

print(emp)



