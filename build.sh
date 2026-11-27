#!/usr/bin/env bash
# Builds every paper (one folder per paper, <name>/<name>.tex) with Tectonic.
# PDFs land in out/. Usage: ./build.sh [name ...]
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p out
names=("$@")
if [ ${#names[@]} -eq 0 ]; then
  for d in */; do
    n="${d%/}"
    [ -f "$n/$n.tex" ] && names+=("$n")
  done
fi
for n in "${names[@]}"; do
  echo "==> $n"
  tectonic --outdir out "$n/$n.tex"
done
