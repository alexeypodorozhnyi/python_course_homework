n_ticket = int(input("Hello!\nPlease input number 6 sign number: "))

b = []
while n_ticket > 0:
  b.append(n_ticket % 10)
  n_ticket = n_ticket // 10
b = b[::-1] 
print (b)
print ("Happy Ticket") if b[0] + b[1] + b[2] == b[3] + b[4] + b[5] else print("Ordinary Ticket")
