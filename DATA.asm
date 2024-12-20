.386
.DATA
;==================================================================                
;////////////////////////////PASCAL////////////////////////////////
;================================================================== 

    PT_MSG DB " ENTER THE HEIGHT OF TRIANGLE : ","$"
    HEIGHT DD ?
    T DD 0 ; -> HEIGHT
    I DD 0 ; -> N
    CSIZE DD 0 ; -> RESULT'S SIZE
    NUM DD ?
    TRI DD 100 dup(0)
    
;==================================================================                
;///////////////////////MATRIX VARIABLES////////////////////////////
;==================================================================
      ; THERE IS 2 INDICES BEFORE THE CONTENT OF THE MATRIX
          ; THE FIRST INDEX IS THE NUMBER OF ROWS
          ; THE SECOND INDEX IS THE NUMBER OF COLUMNS
;==================================================================

A DW 30 DUP(0)
B DW 30 DUP(0)
C DW 30 DUP(0)

COL_MATRIX DW 30 DUP(0) ; FOR SEPARATING  A COLUMN FROM THE MATRIX

ROW_NUM DW ?
COL_NUM DW ?

MAT_INPUT DB 'Enter The Dimention Of The Matrix ', '$'
MAT_ELEMENTS DB 'Enter The Elements Of The Matrix  (space separated): ', 13, 10, '$'
NOT_VERIFIED DB "ROW NUMBER OF 1ST MATRIX DON'T MATCH COLUMN NUMBER OF 2ND MATRIX!!","$"

;==================================================================                
;////////////////////////////FIBONACCI/////////////////////////////
;==================================================================

count DW ?
input DB " Enter Number Of Iterations:","$"
    
;==================================================================                
;////////////////////COMPINATION & PERMUTATION/////////////////////
;==================================================================

N DD ?
R DD ?

INPUT_MSG DB " The Equation: ", "$"
;==================================================================                
;///////////////////////////FACTORIAL//////////////////////////////
;==================================================================

FACT_MSG DB " ENTER THE NUMBER : ","$"

;==================================================================
;/////////////////////OPERATIONS DEFINATION////////////////////////
;==================================================================

OPS_NUM = 10

OPS DW OPS_NUM DUP(1)

HELP            DB "HELP","$"   ; 0
LINEAR_DEF      DB "LR","$"     ; 1
MATRIX_DEF      DB "MM","$"     ; 2
PASCAL_DEF      DB "PT","$"     ; 3
FIBONACCI_DEF   DB "FI","$"     ; 4
COMPINATION_DEF DB "C","$"      ; 5
PERMUTATION_DEF DB "P","$"      ; 6
FACTORIAL_DEF   DB "!","$"      ; 7
EXIT            DB "EXIT","$"   ; 8
CLEAR_SCREEN    DB "CLS",'$'    ;9

OPS_OFSTS DW OPS_NUM DUP(0)

Q DW 0 ; REFERS TO THE LETTER INDIX 
  
;==================================================================
;==================================================================
;//////////////////////////MESSAGES////////////////////////////////
;==================================================================
;==================================================================

WRONG_COMMAND DB 10,13," NOT DEFINED OPERATION",10,13,'$'
ARRAY_RESULT_MSG DB 'RESULT: ',10,10,'$'
NUM_RESULT_MSG DB ' RESULT: ','$'
;==================================================================                
;//////////////////////////////HELP////////////////////////////////
;==================================================================

MSG1 DB "   LR   =>  LINEAR REGRESSION",10,13 ,
     DB "  MM   =>  MATRIX MULTIPLICATION ",10,13, 
     DB "  PT   =>  PASCAL TRIANGLE",10,13,        
     DB "  FI   =>  FIBONACCI SERIES",10,13,       
     DB "  C    =>  COMPINATION",10,13,
     DB "  P    =>  PERMUTATION",10,13,
     DB "  !    =>  FACTORIAL",10,13,
     DB "  CLS  =>  CLEAR",10,13,
     DB "  EXIT =>  EXIT",10,13,'$'
     
     
     