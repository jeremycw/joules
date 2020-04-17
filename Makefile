.PHONY: bin/crown-jewels clean

all: bin/crown-jewels

bin/crown-jewels: vendor/mruby/build_config.rb | bin
	cp build_config.rb vendor/mruby/build_config.rb
	pushd vendor/mruby; rake; popd
	cp vendor/mruby/bin/mruby bin/crown-jewels

run: bin/crown-jewels
	./bin/crown-jewels

bin:
	mkdir bin

clean:
	pushd vendor/mruby; rake clean; popd

