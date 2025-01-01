EE_LIB  = libhttpclient.a

EE_OBJS = libhttpclient.o
EE_LIBS = -lc
EE_CFLAGS=-Wall

all: $(EE_LIB)

clean:
	rm -f -r $(EE_OBJS) $(EE_LIB)

rebuild: clean all

include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal
