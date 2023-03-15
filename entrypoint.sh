#!/bin/sh -l
set -uo pipefail

autopep8 $*
yapf $*
autoflake $*

echo "exit-code=$?" >> $GITHUB_OUTPUT
