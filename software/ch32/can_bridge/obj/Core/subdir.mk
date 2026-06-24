################################################################################
# MRS Version: 2.4.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core/core_riscv.c 

C_DEPS += \
./Core/core_riscv.d 

OBJS += \
./Core/core_riscv.o 

DIR_OBJS += \
./Core/*.o \

DIR_DEPS += \
./Core/*.d \

DIR_EXPANDS += \
./Core/*.234r.expand \


# Each subdirectory must supply rules for building sources it contributes
Core/core_riscv.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core/core_riscv.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

