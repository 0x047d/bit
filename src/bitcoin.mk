bitcoin:
	cd $(EXT)/bitcoin && ./autogen.sh && ./configure && make

bitcoin.clean:
	cd $(EXT)/bitcoin && make clean
