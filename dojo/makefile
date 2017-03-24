include .deosrc

all: clean; $(MAKE) $(EXE)

$(EXE): build; $(EXE)

build: $(OBJECTS)
	$(CC) -std=$(STD)\
	      -I$(INCLUDE) $(SRC)/main.c $(OBJECTS)\
	      -o $(EXE)

$(OBJ)/%.o: $(LIB)/%.c $(INCLUDE)/%.h
	$(CC) -std=$(STD)\
	      -Wall -g\
	      -I$(INCLUDE)\
	      -c $(LIB)/$*.c\
	      -o $(OBJ)/$*.o

clean:; @-rm -rf $(OBJECTS) $(EXE)
