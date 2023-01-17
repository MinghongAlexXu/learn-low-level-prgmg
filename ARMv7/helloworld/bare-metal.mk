# Refs
# - https://lists.gnu.org/archive/html/qemu-devel/2015-12/msg02065.html
# - https://stackoverflow.com/a/70587789/20015297

# https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads
helloworld:
	arm-none-eabi-gcc -g -O0 -mthumb -march=armv7-m -Wl,-Ttext-segment,0 -static -nostartfiles -o helloworld helloworld.S

# https://stackoverflow.com/a/72242622/20015297
debug:
	qemu-system-arm -S -s -M netduino2 -nographic -device loader,file=./helloworld,cpu-num=0 -d cpu,int,guest_errors,unimp,in_asm &
	gdb-multiarch helloworld

clean:
	@rm -rvf helloworld
