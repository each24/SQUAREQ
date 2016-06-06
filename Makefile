OF=./ofiles/
HF=./hfiles/
CF=./cfiles/

trpolab: $(OF)test.o $(OF)main.o $(OF)bibl.o
	gcc -lm -o trpolab $(OF)test.o $(OF)main.o $(OF)bibl.o


test: $(OF)test.o $(OF)main1.o $(OF)bibl.o
	gcc -lm -o test $(OF)test.o $(OF)main1.o $(OF)bibl.o  


$(OF)main.o: $(CF)main.c $(HF)bibl.h 
	gcc -c -o $(OF)main.o -I $(HF) $(CF)main.c


$(OF)test.o: $(CF)test.c $(HF)bibl.h 
	gcc -c -o $(OF)test.o -I $(HF) $(CF)test.c



$(OF)bibl.o: $(CF)bibl.c $(HF)bibl.h
	gcc -c -o $(OF)bibl.o -I $(HF) $(CF)bibl.c


$(OF)main1.o: $(CF)main1.c
	gcc -c -o $(OF)main1.o -I $(HF) $(CF)main1.c
