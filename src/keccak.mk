keccak:
	$(MAKE) keccak.test

keccak.test: keccak.test.build
	$(KECCAK_TEST_EXE)

keccak.test.build: keccak.test.clean
	$(CC) -std=$(STD)\
	      -I$(INCLUDE) $(KECCAK_TEST_MAIN)\
	      -o $(KECCAK_TEST_EXE)

keccak.test.clean:
	@-rm -rf $(KECCAK_TEST_EXE)
