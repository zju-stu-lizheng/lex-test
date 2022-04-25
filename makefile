CC=g++
all : run clean

.PHONY : run clean

run: pascal
	./pascal < test.pas

pascal: lex.yy.c 
	$(CC) -DLEX_MAIN -o  $@ $^

lex.yy.c: pascal.l
	flex $<

clean: 
	rm lex.yy.c