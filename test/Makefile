CC = clang
CFLAGS = -target i386-pc-none-elf -fno-stack-protector -ffreestanding -nostdlib -g -llibrelib

OBJ = obj

OBJDIR = $(OBJ)/objects
OBJS = $(addprefix $(OBJDIR)/, $(patsubst %.c, %.o, $(wildcard *.c)))

BINFOLDER = $(OBJ)
BIN = $(BINFOLDER)/test

.PHONY: all
all : $(OBJ) $(OBJDIR) $(BIN)

$(OBJ):
	mkdir $(OBJ)

$(OBJDIR):
	mkdir $(OBJDIR)

$(BIN) : $(OBJS)
	$(CC) $(OBJS) -o $(BIN) $(CFLAGS)

$(OBJDIR)/%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: run
run:
	@./$(BIN)

.PHONY: clean
clean:
	rm -rf $(OBJ)
