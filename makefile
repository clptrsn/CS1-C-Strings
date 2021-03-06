#Makefile for horse
#
#Used to make the horse program used for Lab 09 of CSCE155E/251k
#Created by Tony Schneider on 2/18/2012
#Last Modified by Tony Schneider on 2/18/2012

CC = gcc
CCFLAGS = -lm -Iinclude -std=c99
all: horse

horse: main.o gameFunctions.o
	$(CC) obj/main.o obj/gameFunctions.o -o horse $(CCFLAGS)

main.o: src/main.c 
	@mkdir -p obj
	$(CC) -c src/main.c -o obj/$@ $(CCFLAGS)

gameFunctions.o: src/gameFunctions.c include/gameFunctions.h
	@mkdir -p obj
	$(CC) -c src/gameFunctions.c -o obj/$@ $(CCFLAGS)

clean:
	rm -rf obj/*o memLeak
