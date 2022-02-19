# include .env

CFLAGS = -std=c++17 -I. -I$(VULKAN_SDK_PATH)/include
LDFLAGS = -L$(VULKAN_SDK_PATH)/lib `pkg-config --static --libs glfw3` -lvulkan

vulkanApp: *.cpp *.hpp
	g++ $(CFLAGS) -o vulkanApp *.cpp $(LDFLAGS)

.PHONY: test clean

test: vulkanApp
	./vulkanApp

clean:	
	rm -f vulkanApp