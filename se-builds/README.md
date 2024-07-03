# Warning

The `master-se` branch that contains this work is a moving target. It will be rebased, squashed, and force pushed as needed. Please see below for additional information.


# Introduction

This repository is focused on generating different builds of the Whistle source code to support other projects needing such builds. It also publishes these builds so they can be consumed through the usual Java Maven dependency mechanisms.

Until further documentation is available, you can either review the various Gradle builds in this directory, look for specific README files in those builds (if available), or look at the [current publishing results](https://oss.sonatype.org/content/repositories/snapshots/com/essaid/groupId/com/google/cloud/verticals/foundations/dataharmonization/) to examine the POM files and understand how to use them in your projects.

## Generating a distribution to use from a command line

Please see the README in the `se-composite-distribution-all` build

## The `master-se` Git branch

This branch, for now, will continue to be rebased on top of the upstream `master` branch to keep up with upstream changes in order to provide these builds for the latest changes. If you are interested in staying at a specific commit, please create your own branch from the `master-se` branch at the time you use these builds to help you stay at a specific point in case you need this for your own work.
