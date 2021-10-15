       IDENTIFICATION DIVISION.
       PROGRAM-ID. NUMEROS_FELICES.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 aux PIC 999 VALUE 0.
       01 rem PIC 9(36).
       01 pow PIC 9(36).
       01 num PIC 9(36).
       01 suma PIC 9(36).
       01 res PIC 9.
       01 opc PIC 9(36).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM UNTIL opc = 2
               DISPLAY"Menu Principal"
               DISPLAY"1) Ver si es feliz"
               DISPLAY"2) Salir"
               DISPLAY">>"
               ACCEPT opc
               IF opc = 1
                   DISPLAY"Escribe numero "
                   ACCEPT num
                   PERFORM WITH TEST AFTER UNTIL suma = 1
                       MOVE 0 TO suma
                       MOVE 0 TO opc
                       PERFORM WITH TEST AFTER UNTIL num = 0
                           DIVIDE num BY 10 GIVING num REMAINDER rem
                           MULTIPLY rem BY rem GIVING pow
                           ADD pow TO suma
                       END-PERFORM
                       IF suma = 1
                           MOVE 1 TO res
                       ELSE
                           MOVE suma TO num
                           ADD 1 TO aux
                           IF aux = 20
                               MOVE 1 TO suma
                               MOVE 0 TO res
                           END-IF
                       END-IF
                   END-PERFORM
                   IF res = 1
                       DISPLAY "Es un numero feliz"
                   ELSE
                       DISPLAY "No es un numero feliz"
                   END-IF
               END-IF
           END-PERFORM
           STOP RUN.
       END PROGRAM NUMEROS_FELICES.
