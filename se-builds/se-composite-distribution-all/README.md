# Introduction

This Gradle build generates a distribution that you can unpack and use on your local machine.

## Generating the distribution

You need to have Java already installed on your machine.  Whistle's README states that Java 11 is required. I am not sure how well other Java versions might work with the Whistle implementation.  I am using Java 17 and I have not noticed any issues so far.

Run the following to generate the distribution:

`./gradlew build`

## Using the distribution

You will find distribution archive files under `build/distributions/`.  Copy the desired format to a desired location and unpack.

The `bin/whistle-cli*` scripts are to run the currently provided Whistle CLI.  Run this script without any parameters to show the minimal help output of the CLI.
