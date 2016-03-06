#!/bin/bash

ROOT=$(git rev-parse --show-toplevel)
if [ -f "$ROOT/project.clj" ]
then
    cd "$ROOT"
    lein do clean, test
fi
