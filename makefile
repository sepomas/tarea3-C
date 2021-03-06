CC=gcc
flag= -Wall -Wextra -Wundef -Werror -Wuninitialized -Winit-self
exec= Tarea3

Tarea3:	main.o card.o player.o 
	$(CC) $(flag) main.o card.o player.o -o Tarea3
	
main.o: main.c card.h player.h
	$(CC) $(flag) -o main.o main.c -c
	
card.o: card.h card.c
	$(CC) $(flag) -o card.o card.c -c 
	
player.o: player.h player.c
	$(CC) $(flag) -o player.o player.c -c 	
		
clean:
	rm -f *.o
	rm -f $(exec)
