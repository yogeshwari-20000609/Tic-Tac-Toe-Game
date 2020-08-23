# compiler to use
CC = gcc

# flags to pass compiler
	CFLAGS = -pthread -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib64/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng15 -I/usr/include/libdrm
	
# name for executable
	EXE = tictactoe


# space-separated list of libraries, if any,
# each of which should be prefixed with -l
	LIBS = -lgtk-3 -lgdk-3 -latk-1.0 -lgio-2.0 -lpangocairo-1.0 -lgdk_pixbuf-2.0 -lcairo-gobject -lpango-1.0 -lcairo -lgobject-2.0 -lglib-2.0

# space-separated list of source files
	SRCS = main.c

# automatically generated list of object files
	OBJS = $(SRCS:.c=.o)
	

# default target
$(EXE): $(OBJS) $(HDRS) Makefile
	$(CC) $(CFLAGS) -o $@ $(OBJS) $(LIBS)

# dependencies 
$(OBJS):	$(HDRS) Makefile

# housekeeping
clean:
	rm -f core $(EXE) *.o
	
