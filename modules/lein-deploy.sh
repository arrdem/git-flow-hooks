#!/bin/bash

ROOT=$(git rev-parse --show-toplevel)
if [ -f "$ROOT/project.clj" ]
then
    cd "$ROOT"
    exec lein deploy clojars
fi
