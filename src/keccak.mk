keccak:
	$(MAKE) keccak.test

keccak.test: keccak.test.build
	$(KECCAK_TEST_EXE)

keccak.test.build: keccak.test.clean $(OBJ)/keccak.o
	$(CC) -std=$(STD)\
	      -I$(INCLUDE) $(KECCAK_TEST_MAIN)\
	      $(OBJ)/keccak.o\
	      -o $(KECCAK_TEST_EXE)

$(OBJ)/keccak.o:\
	$(LIB)/keccak.cpp\
	$(INCLUDE)/sph_keccak.h\
	$(INCLUDE)/sph_types.h
	$(CC) -std=$(STD)\
	      -Wall -g\
	      -I$(INCLUDE)\
	      -c $(LIB)/keccak.cpp\
	      -o $(OBJ)/keccak.o

keccak.test.clean:
	@-rm -rf $(KECCAK_TEST_EXE) $(OBJ)/keccak.o
