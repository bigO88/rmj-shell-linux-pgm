#!/bin/sh

if [ $# -eq 4 ]
then
mkdir -p src/{main,test}/{java,resources,scala}
mkdir lib project target

# create an initial build.sbt file
echo 'name := $1

version := $2

scalaVersion := $3' > build.sbt

echo `resolvers += Classpaths.typesafeResolver

addSbtPlugin("com.eed3si9n" % "sbt-assembly" % "0.12.0")

addSbtPlugin("com.typesafe.sbt" % "sbt-native-packager" % "1.0.0-M4")

addSbtPlugin("com.typesafe.sbt" % "sbt-multi-jvm" % "0.3.9")` > project/plugins.sbt

echo 'sbt.version=$4' > project/build.properties
else

echo "Usage: sh $0 <project-name> <version>  <scala-version> <sbt-version> "
fi
