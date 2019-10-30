import sys
file_names = sys.argv[1:]
for file_name in file_names:
    f=open(file_name,"r+")
    for row in f:
        if len(row.strip())>0:
            print(row)
    f.close()

