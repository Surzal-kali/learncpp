# Define the compiler
CXX = g++

# Define compiler flags (C++20 standard, show all warnings, enable debugging, and enable address and undefined behavior sanitizers)
CXXFLAGS = -std=c++20 -Wall -Wextra -Wpedantic -fsanitize=address,undefined -g

# The name of your final executable program
TARGET = keypad

# The default rule that runs when you just type 'make'
all: $(TARGET)

# How to build the executable from the source file
$(TARGET): keypad.cpp
	$(CXX) $(CXXFLAGS) keypad.cpp -o $(TARGET)

# A clean rule to delete the compiled file and start fresh
clean:
	rm -f $(TARGET)
# Include the implicit rules for compiling C++