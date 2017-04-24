include ../../plat.mk


CC = ${COMPILE_PREFIX}gcc

SRCS = $(wildcard src/*.c)
SRCSS = $(wildcard src/*.s)

objs = $(SRCS:.c=.o) $(SRCSS:.s=.o)


OBJS += $(addprefix $(shell pwd)/,objs)

CFLAGS += ${PLAT_CCFLAGS}
CFLAGS += -I${INC_CFALGS}

all:${objs}

%.o:%.s
	$(CC) $(CFLAGS) -c $< -o $@

%.o:%.c
	$(CC) $(CFLAGS) $(PLAT_DEFS) $(INCS) -c $< -o $@ $(LDFLAGS)

.PHONY:clean
clean:
	rm -f *.o ${objs} 
