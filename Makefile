include .deosrc

include src/bitcoin.mk
include src/cuckoo.mk
include src/keccak.mk
include src/vagrant.mk

all: clean
	$(MAKE) $(EXE)

$(EXE): build
	$(EXE)

build: $(OBJECTS)
	$(CC) -std=$(STD) -I$(INCLUDE) $(MAIN) $(OBJECTS) -o $(EXE)

$(OBJ)/%.o: $(LIB)/%.cpp $(INCLUDE)/%.h
	$(CC) -std=$(STD) -Wall -g -I$(INCLUDE) -c $(LIB)/$*.cpp -o $(OBJ)/$*.o

clean:
	@-rm -rf $(OBJECTS) $(EXE)
