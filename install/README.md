# One-click installers — Anisotropia Direcional

For users who do **not** want to install Python manually. Each script:

1. Installs **Python 3.10+** if missing (platform-specific)
2. Creates a project **virtual environment** (`.venv/`)
3. Installs app dependencies from `requirements-app.txt`
4. Starts the **Streamlit** interface and opens your browser

## Which file to use?

| System | Double-click this file (in the project root) |
|--------|-----------------------------------------------|
| **Windows 10/11** | `INSTALL-WINDOWS.bat` |
| **macOS** | `INSTALL-MAC.command` |
| **Linux** | `INSTALL-LINUX.sh` |

After the first successful install, you can use **`START-Anisotropia`** (same extension per OS) to launch without reinstalling.

## Requirements

- **Windows:** Internet; [winget](https://learn.microsoft.com/en-us/windows/package-manager/winget/) (included in recent Windows 10/11). First run may ask for administrator approval to install Python.
- **macOS:** Internet; Terminal opens automatically. Uses system Python, [Homebrew](https://brew.sh/) if needed, or prompts to install from [python.org](https://www.python.org/downloads/macos/).
- **Linux:** Internet; `sudo` password when the script installs `python3` via your package manager (apt/dnf/pacman).

## Troubleshooting

- **Antivirus** may slow the first install (many packages download).
- Keep the project folder path **without special characters** if possible.
- If install fails, read the last lines in the terminal window and see `docs/` or open an issue on GitHub.

## Advanced users

```bash
python -m venv .venv
.venv/Scripts/pip install -r requirements-app.txt   # Windows
streamlit run Anisotropia.py
```

Development and tests: `pip install -r requirements.txt`
