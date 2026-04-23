################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../TouchGFX/generated/images/src/BitmapDatabase.cpp \
../TouchGFX/generated/images/src/SVGDatabase.cpp \
../TouchGFX/generated/images/src/image_Logo-Oficial-COR_small.cpp \
../TouchGFX/generated/images/src/image_frame_0001.cpp \
../TouchGFX/generated/images/src/image_frame_0002.cpp \
../TouchGFX/generated/images/src/image_frame_0003.cpp \
../TouchGFX/generated/images/src/image_frame_0004.cpp \
../TouchGFX/generated/images/src/image_frame_0005.cpp \
../TouchGFX/generated/images/src/image_frame_0006.cpp \
../TouchGFX/generated/images/src/image_frame_0007.cpp \
../TouchGFX/generated/images/src/image_frame_0008.cpp \
../TouchGFX/generated/images/src/image_frame_0009.cpp \
../TouchGFX/generated/images/src/image_frame_0010.cpp \
../TouchGFX/generated/images/src/image_frame_0011.cpp \
../TouchGFX/generated/images/src/image_frame_0012.cpp \
../TouchGFX/generated/images/src/image_frame_0013.cpp \
../TouchGFX/generated/images/src/image_frame_0014.cpp \
../TouchGFX/generated/images/src/image_frame_0015.cpp \
../TouchGFX/generated/images/src/image_frame_0016.cpp \
../TouchGFX/generated/images/src/image_frame_0017.cpp \
../TouchGFX/generated/images/src/image_frame_0018.cpp \
../TouchGFX/generated/images/src/image_plantVISION_small.cpp 

OBJS += \
./TouchGFX/generated/images/src/BitmapDatabase.o \
./TouchGFX/generated/images/src/SVGDatabase.o \
./TouchGFX/generated/images/src/image_Logo-Oficial-COR_small.o \
./TouchGFX/generated/images/src/image_frame_0001.o \
./TouchGFX/generated/images/src/image_frame_0002.o \
./TouchGFX/generated/images/src/image_frame_0003.o \
./TouchGFX/generated/images/src/image_frame_0004.o \
./TouchGFX/generated/images/src/image_frame_0005.o \
./TouchGFX/generated/images/src/image_frame_0006.o \
./TouchGFX/generated/images/src/image_frame_0007.o \
./TouchGFX/generated/images/src/image_frame_0008.o \
./TouchGFX/generated/images/src/image_frame_0009.o \
./TouchGFX/generated/images/src/image_frame_0010.o \
./TouchGFX/generated/images/src/image_frame_0011.o \
./TouchGFX/generated/images/src/image_frame_0012.o \
./TouchGFX/generated/images/src/image_frame_0013.o \
./TouchGFX/generated/images/src/image_frame_0014.o \
./TouchGFX/generated/images/src/image_frame_0015.o \
./TouchGFX/generated/images/src/image_frame_0016.o \
./TouchGFX/generated/images/src/image_frame_0017.o \
./TouchGFX/generated/images/src/image_frame_0018.o \
./TouchGFX/generated/images/src/image_plantVISION_small.o 

CPP_DEPS += \
./TouchGFX/generated/images/src/BitmapDatabase.d \
./TouchGFX/generated/images/src/SVGDatabase.d \
./TouchGFX/generated/images/src/image_Logo-Oficial-COR_small.d \
./TouchGFX/generated/images/src/image_frame_0001.d \
./TouchGFX/generated/images/src/image_frame_0002.d \
./TouchGFX/generated/images/src/image_frame_0003.d \
./TouchGFX/generated/images/src/image_frame_0004.d \
./TouchGFX/generated/images/src/image_frame_0005.d \
./TouchGFX/generated/images/src/image_frame_0006.d \
./TouchGFX/generated/images/src/image_frame_0007.d \
./TouchGFX/generated/images/src/image_frame_0008.d \
./TouchGFX/generated/images/src/image_frame_0009.d \
./TouchGFX/generated/images/src/image_frame_0010.d \
./TouchGFX/generated/images/src/image_frame_0011.d \
./TouchGFX/generated/images/src/image_frame_0012.d \
./TouchGFX/generated/images/src/image_frame_0013.d \
./TouchGFX/generated/images/src/image_frame_0014.d \
./TouchGFX/generated/images/src/image_frame_0015.d \
./TouchGFX/generated/images/src/image_frame_0016.d \
./TouchGFX/generated/images/src/image_frame_0017.d \
./TouchGFX/generated/images/src/image_frame_0018.d \
./TouchGFX/generated/images/src/image_plantVISION_small.d 


# Each subdirectory must supply rules for building sources it contributes
TouchGFX/generated/images/src/%.o TouchGFX/generated/images/src/%.su TouchGFX/generated/images/src/%.cyclo: ../TouchGFX/generated/images/src/%.cpp TouchGFX/generated/images/src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H750xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../TouchGFX/App -I../TouchGFX/target/generated -I../TouchGFX/target -I../Middlewares/ST/touchgfx/framework/include -I../TouchGFX/generated/fonts/include -I../TouchGFX/generated/gui_generated/include -I../TouchGFX/generated/images/include -I../TouchGFX/generated/texts/include -I../TouchGFX/generated/videos/include -I../TouchGFX/gui/include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/RTOS2/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -femit-class-debug-always -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-TouchGFX-2f-generated-2f-images-2f-src

clean-TouchGFX-2f-generated-2f-images-2f-src:
	-$(RM) ./TouchGFX/generated/images/src/BitmapDatabase.cyclo ./TouchGFX/generated/images/src/BitmapDatabase.d ./TouchGFX/generated/images/src/BitmapDatabase.o ./TouchGFX/generated/images/src/BitmapDatabase.su ./TouchGFX/generated/images/src/SVGDatabase.cyclo ./TouchGFX/generated/images/src/SVGDatabase.d ./TouchGFX/generated/images/src/SVGDatabase.o ./TouchGFX/generated/images/src/SVGDatabase.su ./TouchGFX/generated/images/src/image_Logo-Oficial-COR_small.cyclo ./TouchGFX/generated/images/src/image_Logo-Oficial-COR_small.d ./TouchGFX/generated/images/src/image_Logo-Oficial-COR_small.o ./TouchGFX/generated/images/src/image_Logo-Oficial-COR_small.su ./TouchGFX/generated/images/src/image_frame_0001.cyclo ./TouchGFX/generated/images/src/image_frame_0001.d ./TouchGFX/generated/images/src/image_frame_0001.o ./TouchGFX/generated/images/src/image_frame_0001.su ./TouchGFX/generated/images/src/image_frame_0002.cyclo ./TouchGFX/generated/images/src/image_frame_0002.d ./TouchGFX/generated/images/src/image_frame_0002.o ./TouchGFX/generated/images/src/image_frame_0002.su ./TouchGFX/generated/images/src/image_frame_0003.cyclo ./TouchGFX/generated/images/src/image_frame_0003.d ./TouchGFX/generated/images/src/image_frame_0003.o ./TouchGFX/generated/images/src/image_frame_0003.su ./TouchGFX/generated/images/src/image_frame_0004.cyclo ./TouchGFX/generated/images/src/image_frame_0004.d ./TouchGFX/generated/images/src/image_frame_0004.o ./TouchGFX/generated/images/src/image_frame_0004.su ./TouchGFX/generated/images/src/image_frame_0005.cyclo ./TouchGFX/generated/images/src/image_frame_0005.d ./TouchGFX/generated/images/src/image_frame_0005.o ./TouchGFX/generated/images/src/image_frame_0005.su ./TouchGFX/generated/images/src/image_frame_0006.cyclo ./TouchGFX/generated/images/src/image_frame_0006.d ./TouchGFX/generated/images/src/image_frame_0006.o ./TouchGFX/generated/images/src/image_frame_0006.su ./TouchGFX/generated/images/src/image_frame_0007.cyclo ./TouchGFX/generated/images/src/image_frame_0007.d ./TouchGFX/generated/images/src/image_frame_0007.o ./TouchGFX/generated/images/src/image_frame_0007.su ./TouchGFX/generated/images/src/image_frame_0008.cyclo ./TouchGFX/generated/images/src/image_frame_0008.d ./TouchGFX/generated/images/src/image_frame_0008.o ./TouchGFX/generated/images/src/image_frame_0008.su ./TouchGFX/generated/images/src/image_frame_0009.cyclo ./TouchGFX/generated/images/src/image_frame_0009.d ./TouchGFX/generated/images/src/image_frame_0009.o ./TouchGFX/generated/images/src/image_frame_0009.su ./TouchGFX/generated/images/src/image_frame_0010.cyclo ./TouchGFX/generated/images/src/image_frame_0010.d ./TouchGFX/generated/images/src/image_frame_0010.o ./TouchGFX/generated/images/src/image_frame_0010.su ./TouchGFX/generated/images/src/image_frame_0011.cyclo ./TouchGFX/generated/images/src/image_frame_0011.d ./TouchGFX/generated/images/src/image_frame_0011.o ./TouchGFX/generated/images/src/image_frame_0011.su ./TouchGFX/generated/images/src/image_frame_0012.cyclo ./TouchGFX/generated/images/src/image_frame_0012.d ./TouchGFX/generated/images/src/image_frame_0012.o ./TouchGFX/generated/images/src/image_frame_0012.su ./TouchGFX/generated/images/src/image_frame_0013.cyclo ./TouchGFX/generated/images/src/image_frame_0013.d ./TouchGFX/generated/images/src/image_frame_0013.o ./TouchGFX/generated/images/src/image_frame_0013.su ./TouchGFX/generated/images/src/image_frame_0014.cyclo ./TouchGFX/generated/images/src/image_frame_0014.d ./TouchGFX/generated/images/src/image_frame_0014.o ./TouchGFX/generated/images/src/image_frame_0014.su ./TouchGFX/generated/images/src/image_frame_0015.cyclo ./TouchGFX/generated/images/src/image_frame_0015.d ./TouchGFX/generated/images/src/image_frame_0015.o ./TouchGFX/generated/images/src/image_frame_0015.su ./TouchGFX/generated/images/src/image_frame_0016.cyclo ./TouchGFX/generated/images/src/image_frame_0016.d ./TouchGFX/generated/images/src/image_frame_0016.o ./TouchGFX/generated/images/src/image_frame_0016.su ./TouchGFX/generated/images/src/image_frame_0017.cyclo ./TouchGFX/generated/images/src/image_frame_0017.d ./TouchGFX/generated/images/src/image_frame_0017.o ./TouchGFX/generated/images/src/image_frame_0017.su ./TouchGFX/generated/images/src/image_frame_0018.cyclo ./TouchGFX/generated/images/src/image_frame_0018.d ./TouchGFX/generated/images/src/image_frame_0018.o ./TouchGFX/generated/images/src/image_frame_0018.su ./TouchGFX/generated/images/src/image_plantVISION_small.cyclo ./TouchGFX/generated/images/src/image_plantVISION_small.d ./TouchGFX/generated/images/src/image_plantVISION_small.o ./TouchGFX/generated/images/src/image_plantVISION_small.su

.PHONY: clean-TouchGFX-2f-generated-2f-images-2f-src

