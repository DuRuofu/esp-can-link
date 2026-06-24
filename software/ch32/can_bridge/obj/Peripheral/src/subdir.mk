################################################################################
# MRS Version: 2.4.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_adc.c \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_bkp.c \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_can.c \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_crc.c \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_dbgmcu.c \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_dma.c \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_exti.c \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_flash.c \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_gpio.c \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_i2c.c \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_iwdg.c \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_misc.c \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_opa.c \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_pwr.c \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_rcc.c \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_rtc.c \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_spi.c \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_tim.c \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_usart.c \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_wwdg.c 

C_DEPS += \
./Peripheral/src/ch32v20x_adc.d \
./Peripheral/src/ch32v20x_bkp.d \
./Peripheral/src/ch32v20x_can.d \
./Peripheral/src/ch32v20x_crc.d \
./Peripheral/src/ch32v20x_dbgmcu.d \
./Peripheral/src/ch32v20x_dma.d \
./Peripheral/src/ch32v20x_exti.d \
./Peripheral/src/ch32v20x_flash.d \
./Peripheral/src/ch32v20x_gpio.d \
./Peripheral/src/ch32v20x_i2c.d \
./Peripheral/src/ch32v20x_iwdg.d \
./Peripheral/src/ch32v20x_misc.d \
./Peripheral/src/ch32v20x_opa.d \
./Peripheral/src/ch32v20x_pwr.d \
./Peripheral/src/ch32v20x_rcc.d \
./Peripheral/src/ch32v20x_rtc.d \
./Peripheral/src/ch32v20x_spi.d \
./Peripheral/src/ch32v20x_tim.d \
./Peripheral/src/ch32v20x_usart.d \
./Peripheral/src/ch32v20x_wwdg.d 

OBJS += \
./Peripheral/src/ch32v20x_adc.o \
./Peripheral/src/ch32v20x_bkp.o \
./Peripheral/src/ch32v20x_can.o \
./Peripheral/src/ch32v20x_crc.o \
./Peripheral/src/ch32v20x_dbgmcu.o \
./Peripheral/src/ch32v20x_dma.o \
./Peripheral/src/ch32v20x_exti.o \
./Peripheral/src/ch32v20x_flash.o \
./Peripheral/src/ch32v20x_gpio.o \
./Peripheral/src/ch32v20x_i2c.o \
./Peripheral/src/ch32v20x_iwdg.o \
./Peripheral/src/ch32v20x_misc.o \
./Peripheral/src/ch32v20x_opa.o \
./Peripheral/src/ch32v20x_pwr.o \
./Peripheral/src/ch32v20x_rcc.o \
./Peripheral/src/ch32v20x_rtc.o \
./Peripheral/src/ch32v20x_spi.o \
./Peripheral/src/ch32v20x_tim.o \
./Peripheral/src/ch32v20x_usart.o \
./Peripheral/src/ch32v20x_wwdg.o 

DIR_OBJS += \
./Peripheral/src/*.o \

DIR_DEPS += \
./Peripheral/src/*.d \

DIR_EXPANDS += \
./Peripheral/src/*.234r.expand \


# Each subdirectory must supply rules for building sources it contributes
Peripheral/src/ch32v20x_adc.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_adc.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
Peripheral/src/ch32v20x_bkp.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_bkp.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
Peripheral/src/ch32v20x_can.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_can.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
Peripheral/src/ch32v20x_crc.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_crc.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
Peripheral/src/ch32v20x_dbgmcu.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_dbgmcu.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
Peripheral/src/ch32v20x_dma.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_dma.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
Peripheral/src/ch32v20x_exti.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_exti.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
Peripheral/src/ch32v20x_flash.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_flash.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
Peripheral/src/ch32v20x_gpio.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_gpio.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
Peripheral/src/ch32v20x_i2c.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_i2c.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
Peripheral/src/ch32v20x_iwdg.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_iwdg.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
Peripheral/src/ch32v20x_misc.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_misc.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
Peripheral/src/ch32v20x_opa.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_opa.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
Peripheral/src/ch32v20x_pwr.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_pwr.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
Peripheral/src/ch32v20x_rcc.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_rcc.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
Peripheral/src/ch32v20x_rtc.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_rtc.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
Peripheral/src/ch32v20x_spi.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_spi.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
Peripheral/src/ch32v20x_tim.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_tim.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
Peripheral/src/ch32v20x_usart.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_usart.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
Peripheral/src/ch32v20x_wwdg.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/src/ch32v20x_wwdg.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

