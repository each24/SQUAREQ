
trpolab: test.o main.o bibl.o
	gcc -lm -o trpolab  test.o main.o bibl.o


test: test.o main1.o bibl.o
	gcc -lm -o test test.o main1.o bibl.o  


main.o: main.c bibl.h 
	gcc -c main.c


test.o: test.c bibl.h 
	gcc -c test.c


bibl.o: bibl.c bibl.h
	gcc -c bibl.c


main1.o: main1.c
	gcc -c main1.c
