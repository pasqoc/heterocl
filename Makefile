.PHONY: all build-hcl build-tvm build-pkgs

include Makefile.config

all: build-hcl

build-pkgs:
	$(MAKE) -C pkgs

build-tvm: build-pkgs
	$(MAKE) -C tvm

build-hcl: build-tvm
	cd python; \
	python3 setup.py install --user; \
  cd ../hlib/python; \
	python3 setup.py install --user;

build-python:
	cd python; \
	python3 setup.py install --user; \
  cd ../hlib/python; \
	python3 setup.py install --user;

clean:
	rm -rf build
	$(MAKE) clean -C tvm
