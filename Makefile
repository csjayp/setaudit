CC?=	cc
CFLAGS=	-Wall
TARGET=	setaudit
OBJS=	setaudit.o

LIBS=	-lbsm

all:	$(TARGET)

.c.o:
	$(CC) $(CFLAGS) -c $<

setaudit:	$(OBJS)
		$(CC) $(CFLAGS) -o $@ $(OBJS) $(LIBS)

clean:
	rm -fr *.o setaudit
