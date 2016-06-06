OF=./ofiles/
HF=./hfiles/
CF=./cfiles/

trpolab: $(OF)test.o $(OF)main.o $(OF)bibl.o
	gcc -lm -o trpolab $(OF)test.o $(OF)main.o $(OF)bibl.o


test: $(OF)test.o $(OF)main1.o $(OF)bibl.o
	gcc -lm -o test $(OF)test.o $(OF)main1.o $(OF)bibl.o  


$(OF)main.o: $(CF)main.c $(HF)bibl.h 
	gcc -c -I $(HF) $(CF)main.c


$(OF)test.o: $(CF)test.c $(HF)bibl.h 
	gcc -c -I $(HF) $(CF)test.c



$(OF)bibl.o: $(CF)bibl.c $(HF)bibl.h
	gcc -c -I $(HF) $(CF)bibl.c


$(OF)main1.o: $(CF)main1.c
	gcc -c -I $(HF) $(CF)main1.c
