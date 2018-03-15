CC?=	cc
CFLAGS+=	-Wall
TARGET=	setaudit
OBJS=	setaudit.o
PREFIX?=	/usr/local

LIBS=	-lbsm

all:	$(TARGET)

.c.o:
	$(CC) $(CFLAGS) -c $<

setaudit:	$(OBJS)
		$(CC) $(CFLAGS) -o $@ $(OBJS) $(LIBS)

install:	setaudit
		mkdir -p $(DESTDIR)$(PREFIX)/bin/
		install -m 0555 setaudit $(DESTDIR)$(PREFIX)/bin/setaudit
		mkdir -p $(DESTDIR)$(PREFIX)/man/man1/
		install -m 0444 setaudit.1 $(DESTDIR)$(PREFIX)/man/man1

clean:
	rm -fr *.o setaudit
