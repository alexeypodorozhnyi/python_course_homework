import random
x = int(input("Hello!\nPlease input number: "))
x=random.random(0,x)
if x % 2 == 0:
	print ("Tea")
else:
	print ("Coffe")
print("\nThanks!")