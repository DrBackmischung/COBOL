IDENTIFICATION DIVISION.
PROGRAM-ID. Table-Processing.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-TABLE.
   05 WS-NAMES OCCURS 5 TIMES INDEXED BY IDX.
      10 WS-NAME PIC X(20).
01 WS-SEARCH-NAME PIC X(20) VALUE "Charlie".
01 WS-FOUND       PIC X VALUE "N".

PROCEDURE DIVISION.
    MOVE "Alice" TO WS-NAMES(1)
    MOVE "Bob" TO WS-NAMES(2)
    MOVE "Charlie" TO WS-NAMES(3)
    MOVE "Dave" TO WS-NAMES(4)
    MOVE "Eve" TO WS-NAMES(5)

    SET IDX TO 1
    PERFORM UNTIL WS-FOUND = "Y" OR IDX > 5
        IF WS-NAMES(IDX) = WS-SEARCH-NAME
            MOVE "Y" TO WS-FOUND
        ELSE
            SET IDX UP BY 1
        END-IF
    END-PERFORM

    DISPLAY "Name Found: " WS-FOUND
    STOP RUN.
