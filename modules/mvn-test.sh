#!/bin/bash

ROOT=$(git rev-parse --show-toplevel)
if [ -f "$ROOT/pom.xml" ]
then
    cd "$ROOT"
    exec mvn test
fi
