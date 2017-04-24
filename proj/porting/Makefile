include ../plat.mk

THIS_PATH = $(shell pwd)
THIS_NAME = $(notdir ${THIS_PATH})

CC = ${COMPILE_PREFIX}gcc

SRCS = $(wildcard src/*.c)
OBJS = $(SRCS:.c=.o)

THIS_OBJ_PATH = ${ITARGE_BUILD_OBJS_PATH}/${THIS_NAME}
OBJ_SRC = $(addprefix ${THIS_OBJ_PATH}/,$(notdir ${OBJS}))

INC_COM_PATH = ${ITARGE_BUILD_OBJS_PATH}/include

CFLAGS += ${PLAT_CCFLAGS}
CFLAGS += -I${INC_COM_PATH}

all:${OBJ_SRC}

${OBJ_SRC}:${SRCS}
	mkdir -p ${THIS_OBJ_PATH}
	mkdir -p ${INC_COM_PATH}
	cp -ar inc/* ${INC_COM_PATH}
	$(CC) $(CFLAGS) $(PLAT_DEFS) $(INCS) -c $< -o $@ $(LDFLAGS)

.PHONY:clean
clean:
	rm -f *.o ${OBJ_SRC} 
