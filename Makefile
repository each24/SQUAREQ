
trpolab: o files/test.o o files/main.o o files/bibl.o
	gcc -lm -o trpolab  o files/test.o o files/main.o o files/bibl.o




test: o files/test.o o files/main1.o o files/bibl.o
	gcc -lm -o test o files/test.o o files/main1.o o files/bibl.o  


o files/main.o: c files/main.c h files/bibl.h 
	gcc -c c files/main.c


o files/test.o: c files/test.c h files/bibl.h 
	gcc -c c files/test.c





o files/bibl.o: c files/bibl.c h files/bibl.h
	gcc -c c files/bibl.c


o files/main1.o: c files/main1.c
	gcc -c c files/main1.c
