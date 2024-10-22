
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
# Write your code here!
li t0, 0 #immediate index = 0
li t2, 0 #immediate result = 0
loop:
    beq t0, a1, done #if t0 equal a1(size of array), go to done
    lw t1, 0(a0) #load word of t1 -> save it @a0 
    beq t1, a2, res #if value = res, jump to res
    addi t0, t0, 1 #index += 1
    addi a0, a0, 4 #address += 4 (word = 4bytes)
    j loop #jump to loop


res:
    mv a0, t2 #move t2(result) -> a0  
# Do not remove the prog label or write code above it!
#-----------------------------
done:
    addi a7, zero, 10 
    ecall
