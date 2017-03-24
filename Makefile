include .deosrc

all: clean
	$(MAKE) $(EXE)

$(EXE): build; $(EXE)

build: $(OBJECTS)
	$(CC) -std=$(STD) -I$(INCLUDE) $(MAIN) $(OBJECTS) -o $(EXE)

$(OBJ)/%.o: $(LIB)/%.cpp $(INCLUDE)/%.h
	$(CC) -std=$(STD) -Wall -g -I$(INCLUDE) -c $(LIB)/$*.cpp -o $(OBJ)/$*.o

bitcoin:
	cd $(EXT)/bitcoin && ./autogen.sh && ./configure && make

ssh:; vagrant ssh

up:; vagrant up

stop:; vagrant suspend

halt:; vagrant halt

down:; vagrant destroy

clean:
	@-rm -rf $(OBJECTS) $(EXE)
