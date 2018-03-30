CC		:= g++
C_FLAGS := -std=c++17 -Wall -Wextra 
LDFLAGS :=

BIN		:= bin
SRC		:= src
INCLUDE	:= 
LIB		:= 
			
LIBRARIES	:= 


ifeq ($(OS),Windows_NT)
EXECUTABLE	:= main.exe
else
EXECUTABLE	:= main
endif

all: $(BIN)/$(EXECUTABLE)

clean:
	$(RM) $(BIN)/$(EXECUTABLE)

run: all
	./$(BIN)/$(EXECUTABLE)

$(BIN)/$(EXECUTABLE): $(SRC)/*
	$(CC) $(C_FLAGS) $(LIB) $(INCLUDE) $^ -o $@ $(shell pkg-config --cflags --libs gtkmm-3.0) 