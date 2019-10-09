@ECHO OFF
if "%PROJECT_ENV%"=="" (
set PROJECT_ENV=%~dp0
)

: If download URL is not defined (set through Jenkins, etc)
IF "%JENKINS_URL%"=="" (
: Use a known default
set URL=http://mirrors.jenkins.io/war/latest/jenkins.war
) ELSE (
: Otherwise use the given URL.
set URL=%CMAKE_URL%
)
: Set download package name.
set PKG=jenkins.war

cd %PROJECT_ENV%
: If the package doesn't exist locally, download it.
if not exist %PKG% %~dp0curl.exe -L -o %PROJECT_ENV%%PKG% %URL%


curl.exe -OL https://repos.azul.com/azure-only/zulu/packages/zulu-11/11.0.4/zulu-11-azure-jdk_11.33.15-11.0.4-win_x64.zip