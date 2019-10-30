import sys
from pygments import highlight
from pygments.lexers import get_lexer_for_filename
from pygments.formatters import TerminalFormatter
file_names = sys.argv[1:]
for file_name in file_names:
    f=open(file_name,"r+")
    for row in f:
        if len(row.strip())>0:
            lexer = get_lexer_for_filename(file_name)
            print(highlight(row,lexer,TerminalFormatter()))
    f.close()

