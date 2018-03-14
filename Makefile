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
		mkdir -p $(PREFIX)/bin/
		install -m 0555 setaudit $(PREFIX)/bin/setaudit

clean:
	rm -fr *.o setaudit
