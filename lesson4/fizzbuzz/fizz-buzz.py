#n_fizz = int(input("Hello!\nPlease input fizz number: "))
#n_buzz = int(input("Hello!\nPlease input buzz number: "))
#n_main_number = int(input("Hello!\nPlease input main number: "))
import sys
a = sys.argv[1]
file = open(a,"r")
file_write = open("fizzbuzzout.txt","w")
file_write_same = open(a,"a+")

allower_inputchar = 'YyNn'
inp_res = input()


while len(inp_res) != 1 or inp_res not in allower_inputchar:
	print("Hello! Please input 'Y' if you want write to same file\nor 'N' to write to another file")
	inp_res = input()
for string in file:
	main_str=""
	i=1
	list_string = string.split()
	n_fizz = int(list_string[0])
	n_buzz = int(list_string[1])
	n_main_number = int(list_string[2])

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
	if inp_res.upper() == "Y":
		file_write_same.write(main_str.strip()+"\n")
	else:
		file_write.write(main_str.strip()+"\n")
file.close()
file_write_same.close()
file_write.close()
