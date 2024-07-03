#!/usr/bin/env bash
#set -x
set -e
set -u
set -o pipefail
set -o noclobber
shopt -s nullglob

# stack overflow #59895
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$(cd -P "$(dirname "$SOURCE")" && pwd)"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$(cd -P "$(dirname "$SOURCE")" && pwd)"
cd "$DIR/.."

set -x

cd se-composite-annotation_processor
./gradlew clean publish
cd ..

cd se-composite-docgen
./gradlew clean publish
cd ..

cd se-composite-linter
./gradlew clean publish
cd ..

cd se-composite-plugin-harmonization
./gradlew clean publish
cd ..

cd se-composite-plugin-logging
./gradlew clean publish
cd ..

cd se-composite-plugin-test
./gradlew clean publish
cd ..

cd se-composite-whistle_core
./gradlew clean publish
cd ..
