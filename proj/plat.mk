PLAT_CCFLAGS = -mcpu=cortex-m4 -mthumb -Wall -std=gnu99 \
				-mfloat-abi=hard -mfpu=fpv4-sp-d16	\
				-nostartfiles \
				-ffunction-sections -fdata-sections -Os \
				-Wl,-flat_namespace,-undefined
				#-Wno-unused-variable #don't waring unused variable 
PLAT_LCFLAGS  = -mcpu=cortex-m4 -mthumb \
				-specs=nano.specs \
				-mfloat-abi=hard -mfpu=fpv4-sp-d16 \
				-Wl,--gc-sections \
				-Wl,-Map=flash_sram.map
#-Wl,-flat_namespace,-undefined \
#				-Wl,-z,muldefs  
#-Wl,-Map=flash_sram.map 
				#-u_printf_float #Use this option if you want print float
PLAT_LDFLAGS = 

PLAT_DEFS = -DUSE_STDPERIPH_DRIVER -DSTM32F40_41xxx
		
