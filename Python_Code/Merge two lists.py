l1 =  list(map(int, input().split()))
l2 =  list(map(int, input().split()))
emp = []
for i in range(len(l1)):
    if l1[i] % 2 == 1:
        emp.append(l1[i])
for i in range(len(l2)):
    if l2[i] % 2 == 0:
        emp.append(l2[i])

print(emp)