# Directory of include files
INCLUDE_DIR ?= "../include"

# Compiler and compiler flags
CC = clang
CFLAGS = -target i386-pc-none-elf -fno-stack-protector -ffreestanding -Wall -Wextra -g -I$(INCLUDE_DIR)

# Folder for object libraries and compiled library
OBJ ?= ../build
OBJDIR = $(OBJ)/objects
BIN = $(OBJ)/librelib.a

# Source files
SRC_BUILTIN = $(wildcard builtin/routines/*.c)
SRC_STD = $(wildcard std/*.c)

OBJS = $(addprefix $(OBJDIR)/, $(patsubst builtin/routines/%.c, %.o, $(SRC_BUILTIN)))
OBJS += $(addprefix $(OBJDIR)/, $(patsubst std/%.c, %.o, $(SRC_STD)))

# Path where to install library
LIB_DIR ?= /usr/local/lib
INCLUDE_INSTALL_DIR ?= /usr/local/include/librelib

.PHONY: all
all: $(OBJ) $(OBJDIR) $(BINFOLDER) $(BIN)

$(OBJ):
	mkdir -p $(OBJ)

$(OBJDIR):
	mkdir -p $(OBJDIR)

$(BINFOLDER):
	mkdir -p $(BINFOLDER)

$(BIN): $(OBJS)
	ar -r $(BIN) $^

$(OBJDIR)/%.o: builtin/routines/%.c
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJDIR)/%.o: std/%.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -rf $(OBJ)

install: $(BIN)
	@echo "====> Installing librelib.a to $(LIB_DIR)"
	install -d $(LIB_DIR)
	install $(BIN) $(LIB_DIR)/liblibrelib.a
	@echo "====> Installing headers to $(INCLUDE_INSTALL_DIR)"
	install -d $(INCLUDE_INSTALL_DIR)
	rsync -a $(INCLUDE_DIR)/ $(INCLUDE_INSTALL_DIR)/
	@echo "====> Configuring GCC"
	echo $(LIB_DIR) | sudo tee /etc/ld.so.conf.d/librelib.conf
	sudo ldconfig
