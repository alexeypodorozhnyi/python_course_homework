import sys
file_name = sys.argv[1]
f=open(file_name,"r+")
for row in f:
    if len(row.strip())>0:
        print(row)
f.close()
