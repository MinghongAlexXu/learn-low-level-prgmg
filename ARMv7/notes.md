


To completely disable security protection of GDB, add
        `set auto-load safe-path /`
line to the configuration file "~/.gdbinit". e.g.
```
# .gdbinit of GDB dashboard
# Better GDB defaults -----

set history save
set verbose off
set print pretty on
set print array off
set print array-indexes on
set python print-stack full
set auto-load safe-path /    <== Here

# Start -------------------

python Dashboard.start()

# File variables ----------

# vim: filetype=python
# Local Variables:
# mode: python
# End:
```

[some refs](https://johannst.github.io/notes/arch/armv7.html#references)

[use vim as a hex editor](https://english.stackexchange.com/a/51955)

xxd produces a hexadecimal dump of a file.

[Linux system call table](https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md#arm-32_bit_EABI)

[exit (system call)](https://en.wikipedia.org/wiki/Exit_(system_call))

[Toolchains](http://web.eecs.umich.edu/~prabal/teaching/eecs373-f12/notes/notes-toolchain.pdf) have a loose name convention like arch[-vendor][-os]-abi. [Read more](https://stackoverflow.com/questions/13797693/what-is-the-difference-between-arm-linux-gcc-and-arm-none-linux-gnueabi)

GNU C(++) compiler for the arm(el|hf) architecture:
- gcc-arm-linux-gnueabi
- g++-arm-linux-gnueabi
- gcc-arm-linux-gnueabihf
- g++-arm-linux-gnueabihf

**Assembler**: a computer program which translates assembly language to machine language. An assembler program creates object code by translating combinations of mnemonics and syntax for operations and addressing modes into their numerical equivalents. This representation typically includes an operation code ("opcode") as well as other control bits and data. [See more](https://en.wikipedia.org/wiki/Assembly_language#Assembler)
