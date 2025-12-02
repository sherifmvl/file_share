# 📘 Chapter 2 — Installing Python & Running Scripts

This chapter helps network engineers set up their environment and understand how Python scripts are executed in real-world scenarios.  <br>

---

# 2.1 Installing Python (Windows / Linux / macOS)

### ✔ Recommended Version

Use **Python 3.8+** (most automation libraries require Python 3).  <br>

---

## 2.1.1 Install on Windows

1. Visit: [https://www.python.org/downloads/](https://www.python.org/downloads/)  <br>
2. Download **Windows installer (64-bit)**  <br>
3. **Important:** Check the box  <br>

```
[✔] Add Python to PATH
```

4. Click **Install Now**  <br>

Verify installation:  <br>

```bash
python --version
```

or  <br>

```bash
python3 --version
```

---

## 2.1.2 Install on Linux (Ubuntu/Debian)

Python 3 is usually pre-installed.  <br>

To install/update:  <br>

```bash
sudo apt update
sudo apt install python3 python3-pip -y
```

Check version:  <br>

```bash
python3 --version
```

---

## 2.1.3 Install on macOS

Use Homebrew (recommended):  <br>

```bash
brew install python
```

Verify:  <br>

```bash
python3 --version
```

---

# 2.2 Installing PIP (Python Package Manager)

PIP is installed automatically with Python 3.  <br>

Check:  <br>

```bash
pip --version
```

or:  <br>

```bash
pip3 --version
```

Install a module:  <br>

```bash
pip install netmiko
```

Upgrade PIP:  <br>

```bash
python -m pip install --upgrade pip
```

---

# 2.3 Installing Virtual Environments (BEST PRACTICE)

Virtual environments keep project packages isolated.  <br>

### Steps:

Create a virtual environment:  <br>

```bash
python3 -m venv venv
```

Activate:  <br>

#### Windows:

```bash
venv\Scripts\activate
```

#### Linux/macOS:

```bash
source venv/bin/activate
```

Deactivate:  <br>

```bash
deactivate
```

---

## 2.4 Installing Common Automation Libraries

Below are widely used libraries for network automation:  <br>

```bash
pip install netmiko
pip install paramiko
pip install nornir
pip install napalm
pip install requests
pip install jinja2
pip install ncclient
pip install textfsm
pip install pandas
pip install openpyxl
```

---

# 2.5 Running Python Scripts

Python scripts usually have the extension `.py`.  <br>

### Example script: `hello.py`

```python
print("Hello Network Engineers!")
```

Run it:  <br>

```bash
python hello.py
```

---

# 2.6 Running Python in Jupyter Notebook

### Install Jupyter:

```bash
pip install notebook
```

Start Jupyter:  <br>

```bash
jupyter notebook
```

Jupyter Notebook supports:  <br>

* Markdown cells
* Python code cells
* Inline diagrams
* Inline outputs

Perfect for your automation learning environment.  <br>

---

# 2.7 Running Python in VS Code

Visual Studio Code is the most popular editor for automation engineers.  <br>

### Steps:

1. Install VS Code  <br>
2. Install **Python extension**  <br>
3. Open your project folder  <br>
4. Create a `.py` file  <br>
5. Run using "Run Python File" button  <br>

---

# 2.8 Recommended Folder Structure

```
network-automation/
│
├── venv/                 (virtual environment)
├── device_inventory/
│       devices.yaml
│
├── templates/            (Jinja2 templates)
│       bgp_template.j2
│
├── scripts/
│       connect.py
│       backup_configs.py
│
└── outputs/
        logs.txt
        backups/
```

This structure is used later in Nornir, Netmiko, RESTCONF examples.  <br>

---

# 2.9 Shebang Line (Linux Only)

For Linux systems, add this as the first line to run scripts directly:  <br>

```python
#!/usr/bin/env python3
```

Make the script executable:  <br>

```bash
chmod +x script.py
```

Run it:  <br>

```bash
./script.py
```

---

# 2.10 Python Execution Flow

```
+--------------------------------------+
| User runs script: python myscript.py |
+-------------------------+------------+
                          |
                          v
             Python Interpreter Loads
                          |
    +---------------------+----------------------+
    | Imports Modules     | Defines Variables    |
    | Defines Functions   | Defines Classes      |
    +---------------------+----------------------+
                          |
                          v
             Executes code from top-to-bottom
                          |
                          v
            main() executes (if defined)
                          |
                          v
          Script finishes or returns output
```

---

# 2.11 Quick Test Script for First Run

Save as `test_environment.py`:  <br>

```python
import sys
import platform

print("Python Version:", sys.version)
print("Platform:", platform.system())
print("Everything is working fine!")
```

Run it:  <br>

```bash
python test_environment.py
```

---

# 2.12 Typical Problems & Fixes

### ❌ pip not found

✔ Fix:  <br>

```bash
python -m ensurepip
```

### ❌ “ModuleNotFoundError”

✔ Fix:  <br>

```bash
pip install <module-name>
```

### ❌ Cannot run script on Linux

✔ Fix:  <br>

```bash
chmod +x script.py
```

---

# 2.13 Chapter Summary

By now, you should know:  <br>

* How to install Python on any OS
* How to use pip & virtual environments
* How to run Python scripts
* How to structure network automation projects
* How to use Jupyter & VS Code
* How to install automation libraries
