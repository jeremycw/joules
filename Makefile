SHELL := /bin/bash

.PHONY: bin/joules clean init

all: bin/joules

bin/joules: vendor/mruby/build_config.rb | bin
	pushd vendor/mruby; rake; popd
	cp vendor/mruby/bin/mruby bin/joules

run: bin/joules
	./bin/joules

vendor/mruby/build_config.rb: build_config.rb
	cp build_config.rb vendor/mruby/build_config.rb

bin:
	mkdir bin

init:
	git submodule update --init --recursive
	git remote rm origin
	cp build_config.rb vendor/mruby/build_config.rb

clean:
	pushd vendor/mruby; rake clean; popd

