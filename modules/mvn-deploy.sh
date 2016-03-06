#!/bin/bash
RET=0

ROOT=$(git rev-parse --show-toplevel)
if [ -f "$ROOT/pom.xml" ]
then
    cd "$ROOT"
    exec mvn deploy
fi
