.PHONY: all clean build doc mywc doczip
CC=g++
all: build doczip

clean:
	rm *.o wc
	rm -r html latex

build:
	g++ wc.c -o mywc

wc.o: wc.c
	g++ -c wc.c

doc: Doxyfile
	doxygen Doxyfile

mywc:
	g++ wc.c -o mywc

doczip:
	tar cvzf doczip.tgz ~/MakeQuiz/html
	tar cvzf doczip2.tgz ~/MakeQuiz/latex
