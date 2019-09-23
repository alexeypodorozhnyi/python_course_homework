import sys
a  = sys.argv[1]
f = open(a,'r')
words =[]
for string in f:
	words+=string.split()

print(a)
for word in words:
	print (word)
print ("Total "+str(len(words))+" words")

f.close()