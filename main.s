
.data
out: .space 4
val: .word 0x12345678
done: .asciiz "Program completed\n"

# The word val is 0x12345678.
# Memory uses little-endian byte ordering.

.text
.globl main
main:
    # TODO 1: Copy byte at val + 0 to out + 0
    la t3, val
    la t4, out

    lbu t5, 0(t3)
    sb t5, 0(t4)

    # TODO 2: Copy byte at val + 1 to out + 1
    lbu t5, 1(t3)
    sb t5, 1(t4)

    # TODO 3: Copy byte at val + 2 to out + 2
    lbu t5, 2(t3)
    sb t5, 2(t4)

    # TODO 4: Copy byte at val + 3 to out + 3
    lbu t5, 3(t3)
    sb t5, 3(t4)

    # TODO 5: Store 0xAB into out + 0
    li t5, 0xAB
    sb t5, 0(t4)

    # TODO 6: Reload bytes into t0, t1, and t2
    lbu t0, 0(t4)
    lbu t1, 1(t4)
    lbu t2, 3(t4)

    # Print completion message
    la a1, done
    li a0, 4
    ecall

    # Exit
    li a0, 10
    ecall
