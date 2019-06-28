## Quiz system by Arshad

.data
Q1: .asciiz "Q1) What is the capital of Odisha? \n1) Chennai \n2) Bhubaneswar \n3) Cuttack \n4) Delhi \nAnswer:"
Q2: .asciiz "Q2) What is the capital of India? \n1) New York\n2) Bhopal\n3) Chennai\n4) Delhi \nAnswer:"
Q3: .asciiz "Q3) How many legs do cats have? \n1) Two\n2) Four\n3) Three\n4) Nine \nAnswer:"
Q4: .asciiz "Q4) Which of the following is a Vegetable? \n1) Water\n2) Orange\n3) Lemon\n4) Carrot \nAnswer:"
Q5: .asciiz "Q5) Which of the following is a gaming company? \n1) Toyota\n2) Tata\n3) NaughtyDog\n4) RoyalEnfield \nAnswer:"

CORRECT: .asciiz "\n\n[SCOREBOARD]\n\nCorrect Answers: "
WRONG: .asciiz "\nIncorrect Answers: "

.text
.globl main
main:
	la $a0, Q1		## Question 1
	li $v0, 4
	li $t0, 0
	syscall	
	li $s0, 2 		## Answer of Q1	
	li $v0, 5
	syscall
	move $t1, $v0		## Moving input to $t0 
	bne $t1, $s0, NEXT1
	addi $t0, $t0, 1

NEXT1:
	la $a0, Q2		## Question 2
	li $v0, 4
	syscall
	li $s1, 4  		## Answer of Q2		
	li $v0, 5
	syscall
	move $t2, $v0		## Moving input to $t1 
	bne $t2, $s1, NEXT2
	addi $t0, $t0, 1
	
NEXT2:
	la $a0, Q3		## Question 3
	li $v0, 4
	syscall
	li $s2, 2 		## Answer of Q3		
	li $v0, 5
	syscall
	move $t3, $v0		## Moving input to $t2 
	bne $t3, $s2, NEXT3
	addi $t0, $t0, 1

NEXT3:
	la $a0, Q4		## Question 4
	li $v0, 4
	syscall
	li $s3, 4  		## Answer of Q4		
	li $v0, 5
	syscall
	move $t4, $v0		## Moving input to $t3 
	bne $t4, $s3, NEXT4
	addi $t0, $t0, 1

NEXT4:
	la $a0, Q5		## Question 5
	li $v0, 4
	syscall
	li $s4, 3  		## Answer of Q5	
	li $v0, 5
	syscall
	move $t5, $v0		## Moving input to $t3 
	bne $t5, $s4, FINALSCORE
	addi $t0, $t0, 1

	
FINALSCORE:
	la $a0, CORRECT
	li $v0, 4
	syscall
	move $a0, $t0
	li $v0, 1
	syscall
	la $a0, WRONG
	li $v0, 4
	li $t6, 5
	syscall
	sub $t7, $t6, $t0
	move $a0, $t7
	li $v0, 1
	syscall
	li $v0, 10			##END OF CODE :)
	syscall

	