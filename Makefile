OF=./ofiles
HF=./hfiles
CF=./cfiles

$(OF):
	mkdir $(OF)

trpolab: $(OF)/main.o $(OF)/bibl.o
	gcc -o trpolab $(OF)/main.o $(OF)/bibl.o -lm


test: $(OF)/test.o $(OF)/main1.o $(OF)/bibl.o
	gcc -o test $(OF)/test.o $(OF)/main1.o $(OF)/bibl.o -lm  


$(OF)/main.o: $(OF) $(CF)/main.c $(HF)/bibl.h 
	gcc -c -o $(OF)/main.o -I $(HF) $(CF)/main.c


$(OF)/test.o: $(OF) $(CF)/test.c $(HF)/bibl.h 
	gcc -c -o $(OF)/test.o -I $(HF) $(CF)/test.c



$(OF)/bibl.o: $(OF) $(CF)/bibl.c $(HF)/bibl.h
	gcc -c -o $(OF)/bibl.o -I $(HF) $(CF)/bibl.c


$(OF)/main1.o: $(OF) $(CF)/main1.c
	gcc -c -o $(OF)/main1.o -I $(HF) $(CF)/main1.c
