set architecture armv7

dashboard -layout registers stack assembly source

# https://github.com/cyrus-and/gdb-dashboard/issues/222
dashboard registers -style list 'r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 sp lr pc cpsr'

# Notice: cp_regs register group contains all coprocessor registers for ARM and ARM64

target remote localhost:1234
break _start
