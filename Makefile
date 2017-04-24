include Rules.make
all: obj flash
clean: obj_clean

obj:
	@echo ${COMPILE_PREFIX}
	make -C proj
flash:
	@echo "run to creat flash.bin"
	make -C proj flash
sram:	
	@echo "run to creat sram.bin"
	make -C proj sram
obj_clean:
	make -C proj clean
