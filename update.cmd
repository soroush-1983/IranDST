@ECHO OFF
rem https://www.oracle.com/java/technologies/javase-tzupdater-downloads.html
CLS
set JAVA_HOME="C:\Program Files\Java\jdk1.8.0_221"
set PATH="%PATH%;%JAVA_HOME%\bin"

echo -------------------------------------
echo Current Date Time Before Apply Patch:
%JAVA_HOME%\BIN\java.exe CurrentDateTime
echo -------------------------------------

echo "Apply update"
%JAVA_HOME%\BIN\java.exe -jar tzupdater.jar -v -u -l file:./tzdata-latest.tar.gz

echo -------------------------------------
echo Current Date Time Before Apply Patch:
%JAVA_HOME%\BIN\java.exe CurrentDateTime
echo -------------------------------------
pause.
