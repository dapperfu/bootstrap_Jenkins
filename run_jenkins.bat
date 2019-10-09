@ECHO OFF

: Here
set JENKINS_HOME=%~dp0jenkins_home
mkdir %JENKINS_HOME%

zulu-azure-jdk\bin\java.exe -jar jenkins.war
