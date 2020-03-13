.data
M:
.word 4
matrix:
.word 1, 1, 1, 1
.word 2, 2, 2, 2
.word 3, 3, 3, 3
.word 4, 4, 4, 4
line:
.word 3
result:
.word 0

.text

main:
la a2, M
la a3, matrix
la a4, line
la a5, result
call find_sum
call print
call exit

print:
addi a0, x0, 1 # print_int ecall
lw a1, 0(a5)
ecall
ret

exit:
addi a0, x0, 10
ecall

find_sum:
lw t1, 0(a2) # column
lw t2, 0(a4) # line
addi t4, x0, 0 # result to save
slli t2, t2, 0x4 # смешение указателя на заданную велечину
add a3,a3,t2

cycle:
lw t5, 0(a3) # load value from array
addi a3, a3, 4 # increment array pointer
add t4, t4, t5 # count sum
addi t3, t3, 1
blt t3, t1, cycle
sw t4, 0(a5) # save result
ret