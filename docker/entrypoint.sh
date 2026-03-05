#!/bin/bash
set -e

source /opt/conda/etc/profile.d/conda.sh

echo "Container started."
echo "PWD: $(pwd)"
echo "Available conda envs:"
conda env list || true

exec "$@"
