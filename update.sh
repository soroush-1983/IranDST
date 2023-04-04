#/bin/bash 
# Developed by Soroush Ghorbani for Update Java Time Zone 
export JAVA_HOME="/u01/app/oracle/products/jdk/"
export PATH="$PATH:$JAVA_HOME/bin"
echo .
echo -------------------------------------
echo Current Date Time Before Apply Patch:
$JAVA_HOME/bin/java CurrentDateTime
echo -------------------------------------


echo "Apply update"
$JAVA_HOME/bin/java -jar tzupdater.jar -v -u -l file:./tzdata-latest.tar.gz

echo -------------------------------------
echo Current Date Time Before Apply Patch:
$JAVA_HOME/bin/java CurrentDateTime
echo -------------------------------------