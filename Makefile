
trpolab: test.o main.o bibl.o
	gcc -lm -o trpolab test.o main.o bibl.o


test: test.o main1.o bibl.o
	gcc -lm -o test test.o main1.o bibl.o  


ofiles/main.o: main.c bibl.h 
	gcc -c -I main.c


ofiles/test.o: ./cfiles/test.c bibl.h 
	gcc -c -I ./hfiles test.c



ofiles/bibl.o: ./cfiles/bibl.c bibl.h
	gcc -c -I ./hfiles bibl.c


ofiles/main1.o: main1.c
	gcc -c -I main1.c
