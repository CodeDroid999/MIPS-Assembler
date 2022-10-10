.data
print_data: .word 0
add_result: .word 0
load_data: .word 1
.word 2
.text
start: la $1,load_data
lw $4,0($1)
lw $5,4($1)
add $4,$4,$5
la $1,add_result
sw $4,0 ($1)
