def num_check(n, list_num):
    lar_num = list_num[0]
    for i in range (1,n):
        if list_num[i] > lar_num:
            lar_num = list_num[i]
    return lar_num
n = int(input("Enter the number "))
list_num = list(map(int, input().split()))
print(max(list_num)) # another way to find max number from a list
lar_num = num_check(n, list_num)
print (lar_num)

