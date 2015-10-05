#CC = $(CROSS_COMPILE)gcc
RM = rm -f

#CFLAGS = -Wall -O2
OBJS = main.o
APP = gittest

#CFLAGS += -m32

all: $(APP) 

$(APP): $(OBJS)
	$(CC) -o $@  $(OBJS)  $(CFLAGS)

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	$(RM) $(OBJS) $(APP) *~
	
