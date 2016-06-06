
trpolab: ofiles/test.o ofiles/main.o ofiles/bibl.o
	gcc -lm -o trpolab  ofiles/test.o ofiles/main.o ofiles/bibl.o




test: ofiles/test.o ofiles/main1.o ofiles/bibl.o
	gcc -lm -o test ofiles/test.o ofiles/main1.o ofiles/bibl.o  


o files/main.o: cfiles/main.c hfiles/bibl.h 
	gcc -c cfiles/main.c


o files/test.o: cfiles/test.c hfiles/bibl.h 
	gcc -c cfiles/test.c





o files/bibl.o: cfiles/bibl.c hfiles/bibl.h
	gcc -c cfiles/bibl.c


o files/main1.o: cfiles/main1.c
	gcc -c cfiles/main1.c
