#!/bin/sh
# ----------------------------------------------------------------------------
# Maven Wrapper Startup Script
# ----------------------------------------------------------------------------
MVN_VERSION=3.8.6
MVN_URL="https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/${MVN_VERSION}/apache-maven-${MVN_VERSION}-bin.zip"

if [ ! -d ".mvn/wrapper" ]; then
  mkdir -p .mvn/wrapper
fi

if [ ! -f ".mvn/wrapper/maven-wrapper.jar" ]; then
  echo "Downloading Maven ${MVN_VERSION}..."
  curl -L ${MVN_URL} -o /tmp/maven.zip
  unzip /tmp/maven.zip -d .mvn/wrapper
fi

exec .mvn/wrapper/apache-maven-${MVN_VERSION}/bin/mvn "$@"
