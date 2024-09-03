@R0 //Set register A to look at R0 which is the n value
D=M // variable, Set register D to the value of R0(n)
@n 
M=D //Set variable n to the value of D(which is the value of R0(which is n))

//now n variable is set to the value of R0(which is the n value)

@i //create a variable i
M=1 //initiallize RAM[i] to 1

@sum //create a variable sum
M=0 //initialize sum to 0

(LOOP)
    @i
    D=M //make D = RAM[i]
    @n
    D = D-M //make D = RAM[i] - RAM[n]
    @STOP
    D;JGT //if >0, jump to STOP