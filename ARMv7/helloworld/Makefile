# Usage:
# make        # produces object and executable
# make debug  # runs executable in QEMU with GDB attached
# make run    # runs the executable
# make clean  # removes the object and executable

helloworld.elf: helloworld.o
	arm-linux-gnueabi-gcc -nostdlib -o helloworld.elf helloworld.o

helloworld.o: helloworld.S
	arm-linux-gnueabi-as --gen-debug -o helloworld.o helloworld.S

debug:
	qemu-arm -g 1234 helloworld.elf &
	gdb-multiarch helloworld.elf

run: helloworld.elf
	qemu-arm helloworld.elf

clean:
	@rm -rvf helloworld.o helloworld.elf
