################################################################################
# MRS Version: 2.4.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/Main.c \
../User/can_driver.c \
../User/ch32v20x_it.c \
../User/command_handler.c \
../User/debug.c \
../User/protocol.c \
../User/ring_buffer.c \
../User/system_ch32v20x.c \
../User/ws2812.c 

C_DEPS += \
./User/Main.d \
./User/can_driver.d \
./User/ch32v20x_it.d \
./User/command_handler.d \
./User/debug.d \
./User/protocol.d \
./User/ring_buffer.d \
./User/system_ch32v20x.d \
./User/ws2812.d 

S_UPPER_SRCS += \
../User/startup_ch32v20x_D8.S 

S_UPPER_DEPS += \
./User/startup_ch32v20x_D8.d 

OBJS += \
./User/Main.o \
./User/can_driver.o \
./User/ch32v20x_it.o \
./User/command_handler.o \
./User/debug.o \
./User/protocol.o \
./User/ring_buffer.o \
./User/startup_ch32v20x_D8.o \
./User/system_ch32v20x.o \
./User/ws2812.o 

DIR_OBJS += \
./User/*.o \

DIR_DEPS += \
./User/*.d \

DIR_EXPANDS += \
./User/*.234r.expand \


# Each subdirectory must supply rules for building sources it contributes
User/%.o: ../User/%.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Debug" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Core" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Peripheral/inc" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/CONFIG" -I"e:/DuRuofu/Project/esp-can-link/software/ch32/can_bridge/User/USBLIB/USB-Driver/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

User/%.o: ../User/%.S
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -x assembler-with-cpp -I"e:/DuRuofu/Project/esp-can-link/software/ch32/ref/SRC/Startup" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

