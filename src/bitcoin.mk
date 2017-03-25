bitcoin:
	$(MAKE) bitcoin.test

bitcoin.build:
	cd $(EXT)/bitcoin && ./autogen.sh && ./configure && make

bitcoin.clean:
	cd $(EXT)/bitcoin && make clean

bitcoin.test: bitcoin.test.build
	$(BITCOIN_TEST_EXE)

bitcoin.test.build: bitcoin.test.clean
	$(CC) -std=$(STD)\
	      -I$(BITCOIN)/src/\
	      -I$(INCLUDE)/\
	      $(BITCOIN_TEST_MAIN)\
	      $(BITCOIN)/src/.libs/libbitcoinconsensus.a\
	      $(OBJ)/keccak.o\
	      $(BITCOIN)/src/support/libbitcoin_util_a-cleanse.o\
	      -o $(BITCOIN_TEST_EXE)\
	      -L/usr/local/opt/berkeley-db@4/lib\
	      -L/usr/local/Cellar/openssl/1.0.2k/lib -lcrypto

bitcoin.test.clean:
	@-rm -rf $(BITCOIN_TEST_EXE)
