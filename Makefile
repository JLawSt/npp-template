all: main

main: 
	clang++ src/main.cpp -Iinclude -o bin/main

clean:
	rm -f main
