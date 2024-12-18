IDENTIFICATION DIVISION.
PROGRAM-ID. File-Handling.

DATA DIVISION.
FILE SECTION.
FD INPUT-FILE.
01 IN-RECORD   PIC X(50).

FD OUTPUT-FILE.
01 OUT-RECORD  PIC X(50).

WORKING-STORAGE SECTION.
01 EOF-SWITCH  PIC X VALUE "N".

PROCEDURE DIVISION.
    OPEN INPUT INPUT-FILE
    OPEN OUTPUT OUTPUT-FILE

    PERFORM UNTIL EOF-SWITCH = "Y"
        READ INPUT-FILE INTO IN-RECORD
        AT END
            MOVE "Y" TO EOF-SWITCH
        NOT AT END
            WRITE OUT-RECORD FROM IN-RECORD
        END-READ
    END-PERFORM.

    CLOSE INPUT-FILE
    CLOSE OUTPUT-FILE
    STOP RUN.
