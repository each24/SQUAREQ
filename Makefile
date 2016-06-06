
trpolab: test.o main.o bibl.o
	gcc -lm -I -o trpolab  test.o main.o bibl.o




test: test.o main1.o bibl.o
	gcc -lm -I -o test test.o main1.o bibl.o  


ofiles/main.o: main.c bibl.h 
	gcc -c -I main.c


ofiles/test.o: test.c bibl.h 
	gcc -c -I test.c



ofiles/bibl.o: bibl.c bibl.h
	gcc -c -I bibl.c


ofiles/main1.o: main1.c
	gcc -c -I main1.c
