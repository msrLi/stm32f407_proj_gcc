include plat.mk
SUBDIRS = stlib bsp app
INC_CFALGS = $(dir $(shell pwd))/include
HEAD_FILE_LIST = $(notdir $(shell find -name *.h))

CFLAGS += ${PLAT_CCFLAGS}

LFLAGS += $(PLAT_LCFLAGS)
OBJS = $(shell find -name *.o)

export INC_CFALGS

all:
	@mkdir -p $(INC_CFALGS)
	@cp -arf $(shell find -name *.h) $(INC_CFALGS)/
	for i in $(SUBDIRS);do \
        echo "Build $$i...."; ($(MAKE) -C $$i); \
        if [ $$? != 0 ] ; then \
            exit 1; \
        fi; \
    done

flash:flash.bin

objs:
flash.bin:flash.elf
	@echo "make flash.bin file"
	arm-none-eabi-objcopy -O binary -S $< $@
flash.elf:$(OBJS)
	@echo "make the flash.elf"
	arm-none-eabi-gcc $(LFLAGS) $(PLAT_DEFS) $^ -T./flash.ld -o $@
	arm-none-eabi-size $@	
	
clean:
	for i in $(SUBDIRS);do \
        echo "Build $$i...."; rm -rf $$i/build; ($(MAKE) -C $$i clean); \
    done
	rm -rf $(INC_CFALGS)  
	rm -rf flash.bin flash.elf $(OBJS)
