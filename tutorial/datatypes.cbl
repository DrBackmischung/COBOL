IDENTIFICATION DIVISION.
PROGRAM-ID. Basic-Arithmetic.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-NUMBER1        PIC 9(4) VALUE 1234.
01 WS-NUMBER2        PIC 9(4) VALUE 5678.
01 WS-RESULT         PIC 9(8).
01 WS-MESSAGE        PIC X(30) VALUE "Result of addition is: ".

PROCEDURE DIVISION.
    DISPLAY WS-MESSAGE
    ADD WS-NUMBER1 TO WS-NUMBER2 GIVING WS-RESULT
    DISPLAY WS-RESULT
    STOP RUN.
