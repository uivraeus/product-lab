#!/usr/bin/env bash

set -euo pipefail

expected_num_lines=5
num_lines=$(cat product.txt | wc -l)
if [ "$num_lines" == "$expected_num_lines" ]; then
  echo "Test pass"
else
  echo "Test failed, expected ${expected_num_lines} lines, got ${num_lines}"
  exit 1
fi
