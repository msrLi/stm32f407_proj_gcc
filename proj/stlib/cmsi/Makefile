include ../../plat.mk

objs := startup_stm32f40xx.o

CC = ${COMPILE_PREFIX}gcc
LD = ${COMPILE_PREFIX}ld


OBJS += $(addprefix $(shell pwd)/,objs)

CFLAGS += ${PLAT_CCFLAGS}
CFLAGS += ${INC_CFALGS}

all:${objs}
%.o:%.s
	$(CC) $(CFLAGS) -c $< -o $@
%.o:%.c
	$(CC) $(CFLAGS) $(PLAT_DEFS) $(INCS) -c $< -o $@ $(LDFLAGS)

.PHONY:clean
clean:
	rm -f *.o ${objs} 
