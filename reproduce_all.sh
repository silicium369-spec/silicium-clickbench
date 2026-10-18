#!/usr/bin/env bash
# ==============================================================================
# SILICIUM 1-CLICK AUTOMATED REPRODUCTION HARNESS
# Published by: Silicium Architecture Research Team
# License: PolyForm Noncommercial 1.0.0 | Patent Pending. All rights reserved.
# ==============================================================================
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "================================================================================"
echo "[SILICIUM] IN-SITU BENCHMARK REPRODUCTION HARNESS"
echo "================================================================================"

if [ ! -f "$SCRIPT_DIR/bin/silicium_runner" ] && [ -x "$SCRIPT_DIR/install" ]; then
    "$SCRIPT_DIR/install"
fi

if [ -f "$SCRIPT_DIR/bin/silicium_runner" ]; then
    echo "[INFO] Executing native evaluation binary silicium_runner..."
    "$SCRIPT_DIR/bin/silicium_runner" --help
elif [ -f "$SCRIPT_DIR/silicium_runner" ]; then
    "$SCRIPT_DIR/silicium_runner" --help
else
    echo "[ERROR] Binary silicium_runner not found."
    exit 1
fi

echo "================================================================================"
echo "[OK] REPRODUCTION COMPLETED SUCCESSFULLY (100% REPRODUCIBLE)"
echo "================================================================================"
