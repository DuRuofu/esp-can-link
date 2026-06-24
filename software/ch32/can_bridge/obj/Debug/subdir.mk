################################################################################
# MRS Version: 2.4.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug/debug.c 

C_DEPS += \
./Debug/debug.d 

OBJS += \
./Debug/debug.o 

DIR_OBJS += \
./Debug/*.o \

DIR_DEPS += \
./Debug/*.d \

DIR_EXPANDS += \
./Debug/*.234r.expand \


# Each subdirectory must supply rules for building sources it contributes
Debug/debug.o: e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug/debug.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

