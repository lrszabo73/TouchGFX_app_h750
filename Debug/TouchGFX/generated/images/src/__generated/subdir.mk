################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_round_disabled.cpp \
../TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_action.cpp \
../TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_normal.cpp \
../TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_pressed.cpp \
../TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_circleprogress_backgrounds_medium.cpp \
../TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_gauge_small_backgrounds_dark_precision.cpp \
../TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_gauge_small_needles_rough.cpp \
../TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_imageprogress_plain_normal_medium.cpp \
../TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_imageprogress_plain_normal_medium_active.cpp \
../TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_textprogress_backgrounds_rounded_light.cpp 

OBJS += \
./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_round_disabled.o \
./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_action.o \
./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_normal.o \
./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_pressed.o \
./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_circleprogress_backgrounds_medium.o \
./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_gauge_small_backgrounds_dark_precision.o \
./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_gauge_small_needles_rough.o \
./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_imageprogress_plain_normal_medium.o \
./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_imageprogress_plain_normal_medium_active.o \
./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_textprogress_backgrounds_rounded_light.o 

CPP_DEPS += \
./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_round_disabled.d \
./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_action.d \
./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_normal.d \
./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_pressed.d \
./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_circleprogress_backgrounds_medium.d \
./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_gauge_small_backgrounds_dark_precision.d \
./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_gauge_small_needles_rough.d \
./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_imageprogress_plain_normal_medium.d \
./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_imageprogress_plain_normal_medium_active.d \
./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_textprogress_backgrounds_rounded_light.d 


# Each subdirectory must supply rules for building sources it contributes
TouchGFX/generated/images/src/__generated/%.o TouchGFX/generated/images/src/__generated/%.su TouchGFX/generated/images/src/__generated/%.cyclo: ../TouchGFX/generated/images/src/__generated/%.cpp TouchGFX/generated/images/src/__generated/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H750xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../TouchGFX/App -I../TouchGFX/target/generated -I../TouchGFX/target -I../Middlewares/ST/touchgfx/framework/include -I../TouchGFX/generated/fonts/include -I../TouchGFX/generated/gui_generated/include -I../TouchGFX/generated/images/include -I../TouchGFX/generated/texts/include -I../TouchGFX/generated/videos/include -I../TouchGFX/gui/include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/RTOS2/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -femit-class-debug-always -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-TouchGFX-2f-generated-2f-images-2f-src-2f-__generated

clean-TouchGFX-2f-generated-2f-images-2f-src-2f-__generated:
	-$(RM) ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_round_disabled.cyclo ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_round_disabled.d ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_round_disabled.o ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_round_disabled.su ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_action.cyclo ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_action.d ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_action.o ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_action.su ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_normal.cyclo ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_normal.d ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_normal.o ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_normal.su ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_pressed.cyclo ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_pressed.d ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_pressed.o ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_button_regular_height_50_medium_rounded_pressed.su ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_circleprogress_backgrounds_medium.cyclo ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_circleprogress_backgrounds_medium.d ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_circleprogress_backgrounds_medium.o ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_circleprogress_backgrounds_medium.su ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_gauge_small_backgrounds_dark_precision.cyclo ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_gauge_small_backgrounds_dark_precision.d ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_gauge_small_backgrounds_dark_precision.o ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_gauge_small_backgrounds_dark_precision.su ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_gauge_small_needles_rough.cyclo ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_gauge_small_needles_rough.d ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_gauge_small_needles_rough.o ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_gauge_small_needles_rough.su ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_imageprogress_plain_normal_medium.cyclo ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_imageprogress_plain_normal_medium.d ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_imageprogress_plain_normal_medium.o ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_imageprogress_plain_normal_medium.su ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_imageprogress_plain_normal_medium_active.cyclo ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_imageprogress_plain_normal_medium_active.d ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_imageprogress_plain_normal_medium_active.o ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_imageprogress_plain_normal_medium_active.su ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_textprogress_backgrounds_rounded_light.cyclo ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_textprogress_backgrounds_rounded_light.d ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_textprogress_backgrounds_rounded_light.o ./TouchGFX/generated/images/src/__generated/image_alternate_theme_images_widgets_textprogress_backgrounds_rounded_light.su

.PHONY: clean-TouchGFX-2f-generated-2f-images-2f-src-2f-__generated

