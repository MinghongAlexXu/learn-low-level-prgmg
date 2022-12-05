# Usage:
# make        # produces object and executable
# make run    # runs the executable
# make clean  # removes the object and executable

helloworld.elf: helloworld.o
	arm-linux-gnueabi-gcc -o helloworld.elf -nostdlib helloworld.o

helloworld.o: helloworld.asm
	arm-linux-gnueabi-as -o helloworld.o -g helloworld.asm

run: helloworld.elf
	qemu-arm ./helloworld.elf

.PHONY: clean
clean:
	rm -rvf helloworld.o helloworld.elf
