include .deosrc

all: clean build
	@clear
	$(BIN)/a.out

build:
	clang -std=c89 src/main.c -o bin/a.out

clean:
	-rm $(BIN)/a.out
