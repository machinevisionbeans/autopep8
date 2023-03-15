#!/bin/sh -l
set -uo pipefail

autopep8 $*
yapf $*
autoflake $*
black $*

echo "exit-code=$?" >> $GITHUB_OUTPUT
