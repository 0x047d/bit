include .deosrc

all: clean; $(MAKE) $(EXE)

bitcoin:
	cd $(EXT)/bitcoin &&\
	./autogen.sh &&\
	./configure &&\
	make

$(EXE): build; $(EXE)

build: $(OBJECTS)
	$(CC) -std=$(STD)\
	      -I$(INCLUDE)\
	      $(MAIN)\
	      $(OBJECTS)\
	      -o $(EXE)

$(OBJ)/%.o: $(LIB)/%.cpp $(INCLUDE)/%.h
	$(CC) -std=$(STD) -Wall -g\
	      -I$(INCLUDE)\
	      -c $(LIB)/$*.cpp\
	      -o $(OBJ)/$*.o

clean:
	@-rm -rf $(OBJECTS) $(EXE)

up:
	vagrant up

ssh:
	vagrant ssh

stop:
	vagrant suspend

halt:
	vagrant halt

down:
	vagrant destroy
