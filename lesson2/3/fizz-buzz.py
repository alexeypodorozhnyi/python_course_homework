n_fizz = int(input("Hello!\nPlease input fizz number: "))
n_buzz = int(input("Hello!\nPlease input buzz number: "))
n_main_number = int(input("Hello!\nPlease input main number: "))

main_str=""
i=1
while i<=n_main_number:
	if i % n_fizz == 0 and i % n_buzz == 0:
		main_str+='FB'
	elif i % n_fizz == 0:
		main_str+='F'
	elif i % n_buzz == 0:
		main_str+='B'
	else:
		main_str+=str(i)
	main_str+=" "
	i+=1
print(main_str)
