# Define the compiler
CXX = g++

# Define compiler flags (C++20 standard, show all warnings)
CXXFLAGS = -std=c++20 -Wall -Wextra -Wpedantic -g -fsanitize=address,undefined


# The name of your final executable program
TARGET = xor

# The default rule that runs when you just type 'make'
all: $(TARGET)

# How to build the executable from the source file
$(TARGET): main.cpp
	$(CXX) $(CXXFLAGS) main.cpp -o $(TARGET)

# A clean rule to delete the compiled file and start fresh
clean:
	rm -f $(TARGET)
