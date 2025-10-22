@echo off
rem This builder is for a setup where DOSBox has mounted a folder to C and there
rem is a folder containing the release of QBasic4.5 at C:\QB45 and the source
rem code is located on the root.

echo Builder...

path=C:\QB45

set QB_LINK_FILES=JOES1.OBJ
set QB_EXE_NAME=JOES

bc /o /t JOES1.BAS JOES1.OBJ ;

link /nod %QB_LINK_FILES%, %QB_EXE_NAME%.EXE, %QB_EXE_NAME%.MAP, C:\QB45\LIB\BCOM45.LIB

echo Build complete.

pause
