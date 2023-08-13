# Compiler
RUSTC := rustc

# Name of the Rust source file
SOURCE := vectors.rs

# Output executable name
EXECUTABLE := program

# Default target
all: $(EXECUTABLE)

# Rule for compiling the Rust source file
$(EXECUTABLE): $(SOURCE)
    $(RUSTC) $< -o $@
