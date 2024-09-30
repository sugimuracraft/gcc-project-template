# Compiler Configurations.
CC = gcc
CFLAGS = -Wall -O2

# Directory Configurations.
SRC_DIR = src
OBJ_DIR = obj
DST_DIR = dst

# Source Files and Object Files.
SRC = $(wildcard $(SRC_DIR)/*.c)
OBJ = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC))

# Executable File.
EXEC = $(DST_DIR)/main

# Rules.
all: $(EXEC)

$(EXEC): $(OBJ)
	mkdir -p $(DST_DIR)
	$(CC) $(CFLAGS) -o $@ $^

$(OBJ): $(SRC)
	mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Cleanup.
clean:
	rm -rf $(OBJ_DIR) $(DST_DIR)

# Default behaviour for targets not explicitly defined.
.PHONY: all clean
