#Проверить, является ли число нечетным, делится ли на три и на пять одновременно, но так, чтобы не делиться на 10.
x = int(input("Hello!\nPlease input odd number is divisible by 3 by 5 completely.But not devides on 10. :"))
if x % 2 and not x % 3 and not x % 5 and x % 10:
	print ("This odd number is divisible by 3 by 5 completely.But not devides on 10.\nGreate! You have found it")
else:
	print ("Please try again")
print("\nThanks!")