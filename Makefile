
trpolab: test.o main.o bibl.o
	gcc -lm -o trpolab -I /home/STUDENTS/2015/ip512s17/HelloWorld/LinYrka/Zanovo/Repo-pow/POW/SQUAREQ test.o main.o bibl.o




test: test.o main1.o bibl.o
	gcc -lm -o test -I /home/STUDENTS/2015/ip512s17/HelloWorld/LinYrka/Zanovo/Repo-pow/POW/SQUAREQ test.o main1.o bibl.o  


ofiles/main.o: main.c bibl.h 
	gcc -c -I /home/STUDENTS/2015/ip512s17/HelloWorld/LinYrka/Zanovo/Repo-pow/POW/SQUAREQ main.c


ofiles/test.o: test.c bibl.h 
	gcc -c -I /home/STUDENTS/2015/ip512s17/HelloWorld/LinYrka/Zanovo/Repo-pow/POW/SQUAREQ test.c



ofiles/bibl.o: bibl.c bibl.h
	gcc -c -I /home/STUDENTS/2015/ip512s17/HelloWorld/LinYrka/Zanovo/Repo-pow/POW/SQUAREQ bibl.c


ofiles/main1.o: main1.c
	gcc -c -I /home/STUDENTS/2015/ip512s17/HelloWorld/LinYrka/Zanovo/Repo-pow/POW/SQUAREQ main1.c
