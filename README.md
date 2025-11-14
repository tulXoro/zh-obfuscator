# Project

## Description

### What is it

This is a script meant to be used on programming files. It obfuscates identifiers with their (near) Chinese equivalent.

### How it works

Hopefully I write how it works after its finished.

### Usage

Reccommended to back up any files you use this on.

## Installation

### ***Prerequistes***

- [Python](https://www.python.org/downloads/) latest (for manual)

### Manual
1. Clone the repository with `git clone <﻿﻿project url>`.
2. Change directory into the cloned repository.
3. Navigate to the directory with `cd zh-obfuscator`.
4. Create a virtual environment to isolate dependencies: `python3 -m venv venv # Use "python" instead of "python3" if needed` OR run `create_venv.ps1` script in `/scripts`.
- Activate the virtual environment:
- **Windows (Command Prompt/PowerShell):**
```bash
.\venv\Scripts\activate
```
- **macOS/Linux:**
```bash
source venv/bin/activate
```
*(Your terminal prompt will now show `(venv)` to indicate the active environment.)*
5. Run `pip install -r requirements.txt` inside the
6. Ensure the virtual environment is still active, then execute: `python3 main.py`
7. **Deactivate the Virtual Environment (When Finished)** `deactivate`﻿﻿