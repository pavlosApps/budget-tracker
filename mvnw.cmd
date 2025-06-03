@echo off
setlocal
set MVN_VERSION=3.8.6
set MVN_URL=https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/%MVN_VERSION%/apache-maven-%MVN_VERSION%-bin.zip

if not exist ".mvn\wrapper" mkdir .mvn\wrapper

if not exist ".mvn\wrapper\maven-wrapper.jar" (
  echo Downloading Maven %MVN_VERSION%...
  powershell -Command "Invoke-WebRequest -Uri %MVN_URL% -OutFile maven.zip"
  powershell -Command "Expand-Archive -Path maven.zip -DestinationPath .mvn\wrapper"
)

call .mvn\wrapper\apache-maven-%MVN_VERSION%\bin\mvn %*
