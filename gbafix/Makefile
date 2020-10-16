CC = gcc
.PHONY: clean

SRCS = gbafix.c

../bin/gbafix: $(SRCS)
	$(CC) $(SRCS) -o $@ $(LDFLAGS)

clean:
	$(RM) gbafix gbafix.exe
