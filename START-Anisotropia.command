#!/bin/bash
cd "$(dirname "$0")"
export STREAMLIT_BROWSER_GATHER_USAGE_STATS=false
if [[ ! -x ".venv/bin/python" ]]; then
  echo "Run INSTALL-MAC.command first."
  read -r -p "Press Enter to close..."
  exit 1
fi
echo "Starting Anisotropia Direcional..."
echo "Close this Terminal window to stop the app."
exec .venv/bin/python -m streamlit run Anisotropia.py
