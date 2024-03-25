.PHONY: clean
.PHONY: delete

bin/my_program: obj/main.o
	gcc -o bin/my_program -s obj/main.o

obj/main.o: src/main.c
	gcc -o obj/main.o -c src/main.c

clean:
	rm obj/* ; true > /dev/null

delete:
	rm obj/* ; true > /dev/null
	rm bin/* ; true > /dev/null
