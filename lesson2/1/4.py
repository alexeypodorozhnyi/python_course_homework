x = int(input("Hello!\nPlease input number: "))
b = []
while x > 0:
  b.append(x % 10)
  x = x // 10
for i in range(0,len(b)):
  div_value = 1
  while div_value <= b[i]:
    if b[i] % div_value == 0:
      print(str(i+1)+" Rank="+str(b[i])+" Devider:"+str(div_value))
    div_value+=1 
	
		


