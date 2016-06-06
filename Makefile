
trpolab: ofiles/test.o ofiles/main.o ofiles/bibl.o
	gcc -lm -o trpolab test.o main.o bibl.o


test: ofiles/test.o ofiles/main1.o ofiles/bibl.o
	gcc -lm -o test test.o main1.o bibl.o  


ofiles/main.o: ./cfiles/main.c ./hfiles/bibl.h 
	gcc -c -I ./hfiles/main.c


ofiles/test.o: ./cfiles/test.c ./hfiles/bibl.h 
	gcc -c -I ./hfiles test.c



ofiles/bibl.o: ./cfiles/bibl.c ./hfiles/bibl.h
	gcc -c -I ./hfiles bibl.c


ofiles/main1.o: ./cfiles/main1.c
	gcc -c -I ./hfiles/ main1.c
