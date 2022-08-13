CXX := gcc
# CFLAGS := -Iinclude
# LDFLAGS := -Llibs/x64-linux-gcc41 -lrtmp -lfmpmem -lssl -lexpat

help:
	@echo "A help message"

test: build-test
	./test

build-test: lib.o test_lib.o
	$(CXX) $(CPPFLAGS) -o test $^ $(LDFLAGS)

build-app: lib.o main.o
	$(CXX) $(CPPFLAGS) -o app $^ $(LDFLAGS)

run: build-app
	./app

clean:
	rm -f app test lib.o main.o test_lib.o

%.o: %.c
	$(CXX) $(CFLAGS) -o $@ -c $<
