CC=g++                                                                                              

MAIN= pangoDemo

PANGO_CFLAGS=$(shell pkg-config --cflags cairo ) $(shell pkg-config --cflags pango )
PANGO_LIBS=$(shell pkg-config --libs cairo ) $(shell pkg-config --libs pango )

CXXFLAGS= -Wall -DEBUG $(PANGO_CFLAGS)


all: $(MAIN)

pangoDemo: pangoDemo.o
	$(CC) $(CXXFLAGS) $(PANGO_LIBS) -o $@ $<  

clean:
	/bin/rm -f *.o $(MAIN)
