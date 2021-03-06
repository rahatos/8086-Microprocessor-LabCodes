S SEGMENT PARA PUBLIC 'CODE'
ASSUME CS: S
ORG 1000H 
START:

;TURN ON CONTROL REGISTER
    MOV BH, 00H ;END  
    MOV BL, 00H
    MOV DL, 80H ;FOR ROTATE

	MOV AL, 80H
	OUT 1EH, AL

	MOV AL, 80H
	OUT 1FH, AL

	JMP L1 
	
;CODE 
L1: MOV SI, OFFSET DATA
    MOV DI, SI
    MOV CX, 0000H
    MOV BH, 00H ;END  
    MOV BL, 00H
    MOV DL, 80H ;FOR ROTATE


	MOV AL,0F9H
	OUT 19H,AL

	MOV AL, 08H
	OUT 1BH,AL

    JMP L2

L3: 

MOV CX, 0ABCH
XD: LOOP XD

MOV CX, 0000H
    INC BH
    MOV BL, 00H
    ADD DI, 0CH
    MOV SI, DI  
	

	
L2: CMP BH,01CH ;END CYCLE WHEN 28 PAIRS 
	JE L1
    CMP BH,09H
	JE SHOWSL2
    CMP BH,10H
	JE SHOWSL3


OK:	


    MOV AL, BYTE PTR CS:[SI]
	;PORT A
	OUT 18H, AL
	
    INC SI
	MOV AL, BYTE PTR CS:[SI]
	;PORT B
	OUT 1AH, AL
	
	INC SI
	;PORT C 
	MOV AL, DL
	ROL AL, 1
	OUT 1CH, AL
	MOV DL, AL 
	
	
	INC BL
	CMP CX, 02FFH
	;CMP CX, 0ABCH
	JE L3 
	CMP BL, 08H

	JE VIEW 
	JMP L2 

VIEW: ADD CX, 01H
	MOV BL, 00H
	  MOV SI, DI
	  JMP L2
SHOWSL2:
MOV AL,0A4H
	OUT 19H,AL

	MOV AL, 02H
	OUT 1BH,AL
JMP OK

SHOWSL3:	
MOV AL,0B0H
	OUT 19H,AL

	MOV AL, 05H
	OUT 1BH,AL
JMP OK
	
DATA:
DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 000H

;---------

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 000H

DB 0FFH
DB 067H

;---------

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;R (Red)
DB 0FFH
DB 000H

DB 0FFH
DB 067H

DB 0FFH
DB 06BH 

;---------

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;R (Red)
DB 0FFH
DB 000H

DB 0FFH
DB 067H

DB 0FFH
DB 06BH 

DB 0FFH
DB 06DH

;---------

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;R (Red)
DB 0FFH
DB 000H

DB 0FFH
DB 067H

DB 0FFH
DB 06BH 

DB 0FFH
DB 06DH

DB 0FFH
DB 09EH

;--------

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;R (Red)
DB 0FFH
DB 000H

DB 0FFH
DB 067H

DB 0FFH
DB 06BH 

DB 0FFH
DB 06DH

DB 0FFH
DB 09EH

DB 0FFH
DB 0FFH

;--------

DB 0FFH
DB 0FFH

;R (Red)
DB 0FFH
DB 000H

DB 0FFH
DB 067H

DB 0FFH
DB 06BH 

DB 0FFH
DB 06DH

DB 0FFH
DB 09EH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;--------

DB 0FFH
DB 000H

DB 0FFH
DB 067H

DB 0FFH
DB 06BH 

DB 0FFH
DB 06DH

DB 0FFH
DB 09EH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;A (GREEN)

DB 0C0H
DB 0FFH

;--------

DB 0FFH
DB 067H

DB 0FFH
DB 06BH 

DB 0FFH
DB 06DH

DB 0FFH
DB 09EH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;A (GREEN)

DB 0C0H
DB 0FFH

DB 0B7H
DB 0FFH

;--------

DB 0FFH
DB 06BH 

DB 0FFH
DB 06DH

DB 0FFH
DB 09EH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;A (GREEN)

DB 0C0H
DB 0FFH

DB 0B7H
DB 0FFH

DB 077H
DB 0FFH

;--------

DB 0FFH
DB 06DH

DB 0FFH
DB 09EH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;A (GREEN)

DB 0C0H
DB 0FFH

DB 0B7H
DB 0FFH

DB 077H
DB 0FFH

DB 0B7H
DB 0FFH

;--------

DB 0FFH
DB 09EH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;A (GREEN)

DB 0C0H
DB 0FFH

DB 0B7H
DB 0FFH

DB 077H
DB 0FFH

DB 0B7H
DB 0FFH

DB 0C0H
DB 0FFH

;--------

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;A (GREEN)

DB 0C0H
DB 0FFH

DB 0B7H
DB 0FFH

DB 077H
DB 0FFH

DB 0B7H
DB 0FFH

DB 0C0H
DB 0FFH

DB 0FFH
DB 0FFH

;--------

DB 0FFH
DB 0FFH

;A (GREEN)

DB 0C0H
DB 0FFH

DB 0B7H
DB 0FFH

DB 077H
DB 0FFH

DB 0B7H
DB 0FFH

DB 0C0H
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;--------


DB 0B7H
DB 0FFH

DB 077H
DB 0FFH

DB 0B7H
DB 0FFH

DB 0C0H
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;F (ORANGE)

DB 00H
DB 00H

;--------

DB 0B7H
DB 0FFH

DB 077H
DB 0FFH

DB 0B7H
DB 0FFH

DB 0C0H
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;F (ORANGE)

DB 00H
DB 00H

DB 06FH
DB 06FH

;--------

DB 077H
DB 0FFH

DB 0B7H
DB 0FFH

DB 0C0H
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;F (ORANGE)

DB 00H
DB 00H

DB 06FH
DB 06FH

DB 06FH
DB 06FH

;--------

DB 0B7H
DB 0FFH

DB 0C0H
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;F (ORANGE)

DB 00H
DB 00H

DB 06FH
DB 06FH

DB 06FH
DB 06FH

DB 06FH
DB 06FH

;--------

DB 0C0H
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;F (ORANGE)

DB 00H
DB 00H

DB 06FH
DB 06FH

DB 06FH
DB 06FH

DB 06FH
DB 06FH

DB 07FH
DB 07FH

;--------

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;F (ORANGE)

DB 00H
DB 00H

DB 06FH
DB 06FH

DB 06FH
DB 06FH

DB 06FH
DB 06FH

DB 07FH
DB 07FH

DB 07FH
DB 07FH

;--------

DB 0FFH
DB 0FFH

;F (ORANGE)

DB 00H
DB 00H

DB 06FH
DB 06FH

DB 06FH
DB 06FH

DB 06FH
DB 06FH

DB 07FH
DB 07FH

DB 07FH
DB 07FH

DB 07FH
DB 07FH 

;--------

DB 00H
DB 00H

DB 06FH
DB 06FH

DB 06FH
DB 06FH

DB 06FH
DB 06FH

DB 07FH
DB 07FH

DB 07FH
DB 07FH

DB 07FH
DB 07FH 

;DUMMY (7COLS)

DB 0FFH
DB 0FFH

;--------

DB 06FH
DB 06FH

DB 06FH
DB 06FH

DB 06FH
DB 06FH

DB 07FH
DB 07FH

DB 07FH
DB 07FH

DB 07FH
DB 07FH 

;DUMMY (7COLS)

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;--------

DB 06FH
DB 06FH

DB 06FH
DB 06FH

DB 07FH
DB 07FH

DB 07FH
DB 07FH

DB 07FH
DB 07FH 

;DUMMY (7COLS)

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;--------

DB 06FH
DB 06FH

DB 07FH
DB 07FH

DB 07FH
DB 07FH

DB 07FH
DB 07FH 

;DUMMY (7COLS)

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;--------


DB 07FH
DB 07FH

DB 07FH
DB 07FH

DB 07FH
DB 07FH 

;DUMMY (7COLS)

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;---------

DB 07FH
DB 07FH

DB 07FH
DB 07FH 

;DUMMY (7COLS)

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;--------

DB 07FH
DB 07FH 

;DUMMY (7COLS)

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

DB 0FFH
DB 0FFH

;--------

BREAKLOOP:
S ENDS
END START