#!/usr/bin/env bash

set -euo pipefail

num_lines=$(cat product.txt | wc -l)
if [ "$num_lines" == "4" ]; then
  echo "Test pass"
else
  echo "Test failed, expected 4 lines, got ${num_lines}"
  exit 1
fi
