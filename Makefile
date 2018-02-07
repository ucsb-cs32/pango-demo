CC=g++                                                                                              

MAIN= pangoDemo

PANGO_CFLAGS=$(shell pkg-config --cflags cairo ) \
	$(shell pkg-config --cflags pango ) \
	$(shell pkg-config --cflags pangocairo )
PANGO_LIBS=$(shell pkg-config --libs cairo ) \
	$(shell pkg-config --libs pango ) \
	$(shell pkg-config --libs pangocairo )


CXXFLAGS= -Wall -DEBUG $(PANGO_CFLAGS)


all: $(MAIN)

pangoDemo: pangoDemo.o
	$(CC) $(CXXFLAGS) $(PANGO_LIBS) -o $@ $<  

clean:
	/bin/rm -f *.o $(MAIN)
