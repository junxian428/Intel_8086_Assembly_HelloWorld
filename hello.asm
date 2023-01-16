;  8086 code for Hello World

DATA SEGMENT 
	MSG DB  "Hello, World!", "$"; DB: DEFINE BYTE
								; $: terminates the string
DATA ENDS

CODE SEGMENT
	ASSUME CS:CODE, DS:DATA 
	; INIT SEGMENT REGS	
	START:
		MOV AX, DATA 
		MOV DS, AX 

		MOV AH, 09H
		LEA DX, MSG 	; PRINT THE STRING
		INT 21H

	STOP:
		MOV AX, 4C00H
		INT 21H 
CODE ENDS 
	END START
