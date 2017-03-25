bitcoin:
	$(MAKE) bitcoin.test

bitcoin.test: bitcoin.test.build
	$(BITCOIN_TEST_EXE)

bitcoin.test.build: bitcoin.test.clean
	$(CC) -std=$(STD)\
	      -I$(INCLUDE) $(BITCOIN_TEST_MAIN)\
	      -o $(BITCOIN_TEST_EXE)

bitcoin.test.clean:
	@-rm -rf $(BITCOIN_TEST_EXE)

#bitcoin:
	#cd $(EXT)/bitcoin && ./autogen.sh && ./configure && make

#bitcoin.clean:
	#cd $(EXT)/bitcoin && make clean
