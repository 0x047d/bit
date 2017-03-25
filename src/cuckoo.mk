cuckoo:
	$(MAKE) cuckoo.test

cuckoo.test: cuckoo.test.build
	$(CUCKOO_TEST_EXE)

cuckoo.test.build: cuckoo.test.clean
	$(CC) -std=$(STD)\
	      -I$(INCLUDE) $(CUCKOO_TEST_MAIN)\
	      -o $(CUCKOO_TEST_EXE)

cuckoo.test.clean:
	@-rm -rf $(CUCKOO_TEST_EXE)
