include .deosrc

all:
	@ $(MAKE) up

up:
	@-vagrant up

ssh:
	@-vagrant ssh

stop:
	@-vagrant suspend

halt:
	@-vagrant halt

clean:
	@-vagrant destroy
