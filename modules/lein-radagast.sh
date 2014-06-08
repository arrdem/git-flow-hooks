#!/bin/bash
grep -h -r "(ns" `git root`/test |\
  awk "{print \$2}" |\
  tr "\n" " " |\
  xargs lein do clean, radagast
