NAME := opusapp

$(NAME)_MBINS_TYPE := app
$(NAME)_VERSION := 0.0.1
$(NAME)_SUMMARY :=
$(NAME)_SOURCES := opusapp.c 

ifeq ($(xr871),1)
$(NAME)_SOURCES += opus_test_xr871.c  
$(NAME)_DEFINES += MCU_XR871
else
$(NAME)_SOURCES += opus_test.c  
endif

GLOBAL_DEFINES += AOS_NO_WIFI

$(NAME)_COMPONENTS :=  cli opus yloop

GLOBAL_INCLUDES += ./
