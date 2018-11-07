#!/bin/bash
set -e

cp .travis.settings.xml $HOME/.m2/settings.xml
sed -i 's/my_password/'"$BINTRAY_PASSWORD"'/g' $HOME/.m2/settings.xml

mvn clean -q
mvn -q versions:set -DnewVersion=$MY_VERSION
