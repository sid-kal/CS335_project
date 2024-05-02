all: parser

parser: parser.o lex.o symbol_table.o 3ac.o
	g++ -o parser parser.o lex.o symbol_table.o 3ac.o -ll

parser.o: parser.tab.c
	g++ -o parser.o -c parser.tab.c

parser.tab.c parser.tab.h: parser.y
	bison -d parser.y

lex.o: lex.yy.c
	g++ -o lex.o -c lex.yy.c -ll

lex.yy.c: lexer.l parser.tab.h symbol_table.h
	flex lexer.l

symbol_table.o: symbol_table.cpp symbol_table.h
	g++ -o symbol_table.o -c symbol_table.cpp

3ac.o: 3ac.cpp 3ac.h
	g++ -o 3ac.o -c 3ac.cpp

clean:
	rm -f *.o parser parser.tab.c parser.tab.h lex.yy.c
