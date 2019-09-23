import sys
import string
import operator 
a  = sys.argv[1]
f = open(a,'r')
dict_letter ={}
for str in f:
	for i in str.upper():
		if i in dict_letter:
			dict_letter[i]+=1
		else:
			dict_letter[i]=1
sorted_x = sorted(dict_letter.items(), key=operator.itemgetter(1))
print (sorted_x)