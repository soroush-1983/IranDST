# IranDST for Linux
Resolve Iran DST (Daylight Saving Time) from +04:30 to +03:30 in Linux and Java

For Linux OS, you can easily update Timezone Data (tzdata) to the latest version from the yum or deb repository.
But if your Linux distro or version cannot get updates for any reason (for example Firewall or Router devices) you can copy Iran-noDST in /usr/share/zoneinfo/xyz folder and remove the previous link /etc/localtime file and then create a symbolic link with syntax ln -s <original> <link> to Iran-noDST file via ln -s /usr/share/zoneinfo/xyz/Iran-noDST /etc/localtime

Then use timedatectl to see the new Time Zone in +0330. 
This method is suitable for VMWare PhantomOS, Cisco ISE, Cisco FMC, etc which does not provide any update for this change.

# IranDST for Java
For Java Applications and Java Application Servers like Weblogic, Tomcat, etc. you need to update Java Time Zone via tzupdater.jar utility provided by Oracle.

Download the latest version from https://www.oracle.com/java/technologies/javase-tzupdater-downloads.html 
Download the latest version of TZ Data from https://www.ietf.org/timezones/tzdata-latest.tar.gz

Make a backup copy of the current JDK & JRE home folder.

Stop any Java Application that runs JVM.

Extract it and set JAVA_HOME in your Linux Terminal or Window CMD/PowerShell that ran with Administrator grants or any grant that could update JRE/lib folder contents.

Run java -jar tzupdater.jar -v -u -l file:./tzdata-latest.tar.gz

You could easily use my script update.cmd for Windows and update.sh for Linux (Don't forget to update the Java Home path in script files depending on your installation directory before using it!).

Start Your Application/ Application Server to see results!

You can also use the flag -D when running your application to force them to use your desired Timezone: java -Duser.timezone="Asia/Tehran" com.company.Main or in Application Server Set Environment scripts like setDomainEnv.sh/cmd for Weblogic and startup.sh/cmd in CATALINA_OPTS="-Duser.timezone=Asia/Tehran" for Apache Tomcat.
