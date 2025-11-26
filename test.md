<div align="center">
  <img src="https://www.microsoft.com/en-us/research/wp-content/uploads/2018/08/01_MSR_SIGCOMM_Data_Network_1400x788-1024x576.png" alt="Book Cover Image" width="320" style="border: 3px solid #2c3e50; border-radius: 8px; box-shadow: 0 8px 24px rgba(0,0,0,0.12);">

  <h3 style="color: #7f8c8d; text-transform: uppercase; letter-spacing: 2px; margin-top: 18px;">📘 Python for Network Engineers</h3>
  <h1 style="font-size: 54px; color: #0b3954; font-weight: 800; margin: 6px 0;">Practical Automation & Model-Driven Networking</h1>
  <h2 style="font-size: 26px; color: #ff6f61; text-transform: uppercase; letter-spacing: 1px; margin-bottom: 12px;">Hands-on Guides • Examples • Best Practices</h2>

  <p style="max-width: 760px; color: #4b5563; font-size: 18px; line-height: 1.5;">
    A comprehensive, hands-on guide to automating network operations using Python — from CLI automation with Netmiko to model-driven APIs (RESTCONF / NETCONF), Nornir, NAPALM, pyATS, and more.
  </p>

  <p style="margin-top: 18px;">
    <strong>Authors:</strong> <span style="color:#0b7fa5">Your Name</span> ✍️ &nbsp; <strong>Contributors:</strong> <span style="color:#0b7fa5">Community</span> 🌐
  </p>

  <p style="margin-top: 6px;">
    <a href="https://github.com/your-repo" style="font-size: 16px; color: #0b7fa5; text-decoration: none;">GitHub Repository</a> ·
    <a href="mailto:author@example.com" style="font-size: 16px; color: #0b7fa5; text-decoration: none;">Contact</a>
  </p>

  <!-- Badges -->
  <p style="margin-top: 14px;">
    <img src="https://img.shields.io/badge/Chapters-22-blue?style=flat-square" alt="Chapters Badge">
    <img src="https://img.shields.io/badge/Topics-Network%20Automation-green?style=flat-square" alt="Topics Badge">
    <img src="https://img.shields.io/badge/License-MIT-yellow?style=flat-square" alt="License Badge">
  </p>

  <hr style="width:60%; margin-top:18px; margin-bottom:8px; border:none; border-top:1px solid #e6e6e6;">

  <p style="color:#94a3b8; font-size:14px; margin-bottom:4px;">
    Edition: <strong>1.0</strong> · Updated: <strong>November 21, 2025</strong>
  </p>

  <p style="color:#94a3b8; font-size:13px; margin-top:0;">
    © <strong>Python for Network Engineers</strong> — All rights reserved.
  </p>

  <div style="margin-top:18px; font-size:12px; color:#6b7280;">
    <em>Cover image courtesy of Microsoft Research (used as placeholder)</em>
  </div>
</div>


<div style="page-break-after: always;"></div>


# 📑 Table of Contents — Python for Network Engineers

## Chapter 1 — Introduction
- Why Python for Network Engineers
- Automation vs Manual Operations
- Real-world Use Cases
- How This Book Is Structured

## Chapter 2 — Installing Python & Running Scripts
- Install Python (Windows / Linux / macOS)
- PIP & Virtual Environments
- Installing Automation Libraries
- Running Python Scripts
- Jupyter Notebook
- VS Code Setup
- Recommended Folder Structure
- Shebang Line
- Python Execution Flow
- First Test Script

## Chapter 3 — Python Fundamentals
- Variables
- Syntax
- Indentation
- Comments
- Data Printing
- Basic Input/Output
- Naming Rules

## Chapter 4 — Operators
- Arithmetic
- Assignment
- Comparison
- Logical
- Bitwise
- Precedence
- Network Automation Examples

## Chapter 5 — Data Types
- Strings
- Lists
- Tuples
- Sets
- Dictionaries
- Nested Collections
- When to Use Each Type

## Chapter 6 — Data Models
- JSON
- YAML
- XML
- YANG
- Why Data Models Matter
- Usage in Automation

## Chapter 7 — Working With Files
- Read/Write
- Append
- JSON/YAML
- CSV/Excel
- Backup/Restore

## Chapter 8 — User Input & CLI Arguments
- input()
- getpass()
- argparse

## Chapter 9 — Functions
- Definition
- Parameters
- Returns
- Lambda
- Scope

## Chapter 10 — Script Structure
- import
- modules
- packages
- classes
- main()
- __main__

## Chapter 11 — Classes & OOP
- Objects
- Attributes
- Methods
- Inheritance
- Encapsulation

## Chapter 12 — Error Handling
- try/except
- finally
- custom errors
- logging

## Chapter 13 — Netmiko
- connect
- send commands
- config push
- parsing

## Chapter 14 — Model-Driven Automation
- RESTCONF
- NETCONF
- YANG
- CRUD Ops

## Chapter 15 — Jinja2 Templates
- variables
- loops
- conditionals
- rendering configs

## Chapter 16 — NAPALM
- get facts
- get interfaces
- get configs
- merge/compare/rollback

## Chapter 17 — Multithreading
- threads
- ThreadPoolExecutor
- concurrency patterns

## Chapter 17-1 — Nornir
- inventory
- tasks
- runners
- integrations

## Chapter 17-2 — Advanced Threading Topics
- queues
- workers
- producer-consumer

## Chapter 18 — Useful Python Modules
- regex
- ipaddress
- os
- sys
- subprocess
- logging
- datetime

## Chapter 19 — pyATS + Genie & Scrapli
- parsing
- pre/post checks
- fast SSH

## Chapter 20 — Network Automation Use Cases
- backups
- templates
- VLAN push
- device health
- API automation

## Chapter 21 — Advanced Workflows
- ZTP
- config pipelines
- inventory discovery
- compliance

## Chapter 22 — References
- docs
- tools
- repos
- learning paths

<div style="page-break-after: always;"></div>

# 📘 **Chapter 1 — Introduction to Python for Network Engineers**

*Format: Markdown + ASCII diagrams + Beginner friendly*

---

# **Chapter 1 — Introduction to Python for Network Engineers**

## 1.1 Why Python for Network Automation?

The networking world has shifted from manual, device-by-device CLI configuration to automation-driven, API-friendly, controller-based operations.
Python sits at the center of this transformation because:

* It is **simple** to learn
* It has **powerful network automation libraries** (Netmiko, NAPALM, Nornir, Scrapli)
* It supports **data formats** used in automation (JSON, YAML, XML)
* It interacts with **APIs and model-driven protocols** (RESTCONF, NETCONF)
* It allows **parallel execution** (threads, asyncio, multiprocessing)
* It is widely adopted in Cisco, Juniper, Arista, Nokia, etc. ecosystems

---

## 1.2 What Network Engineers Use Python For

### Typical Use Cases

* Collecting device inventory
* Backing up device configurations
* Applying bulk configuration changes
* Generating configs using Jinja2
* Interacting with RESTCONF/NETCONF APIs
* Parsing show command outputs
* Executing commands in parallel on multiple devices
* Validating network state (compliance checks)
* Telemetry and monitoring

---

## 1.3 Traditional vs Automated Networking

### ❌ Traditional CLI-Based Approach

```
+-----------------------------+
| You type CLI commands       |
| into each device manually   |
+-----------------------------+
        |
        v
  Slow, Error-Prone, Repetitive
```

### ✅ Python Automation Approach

```
+------------------------------------------------+
| Python Script (Netmiko / NAPALM / RESTCONF)    |
+------------------------------------------------+
                |
                v
       Automate CLI or API tasks
       on 10, 100, or 1000 devices
```

---

## 1.4 Benefits of Python in Networking

| Benefit            | Description                                  |
| ------------------ | -------------------------------------------- |
| **Scalability**    | Automate hundreds or thousands of devices    |
| **Consistency**    | Repeatable actions reduce misconfigurations  |
| **Speed**          | One script performs what used to take hours  |
| **Vendor Neutral** | Supports Cisco, Juniper, Arista, Huawei, etc |
| **Integration**    | Works with SDN controllers & APIs            |
| **Data Handling**  | Native support for JSON/YAML/XML             |

---

## 1.5 Network Automation Tools Based on Python

### 1.5.1 Device CLI Automation Libraries

| Library      | Purpose             | Vendor Support |
| ------------ | ------------------- | -------------- |
| **Netmiko**  | SSH automation      | Multi-vendor   |
| **Paramiko** | SSH-python library  | Any SSH device |
| **Scrapli**  | Fast SSH automation | Multi-vendor   |

---

### 1.5.2 API & Model-Driven Automation

| Tool                 | Protocol      | Description              |
| -------------------- | ------------- | ------------------------ |
| **ncclient**         | NETCONF       | YANG-based configuration |
| **requests**         | REST/RESTCONF | HTTP & REST APIs         |
| **pyang / yanglint** | YANG          | Model validation         |

---

### 1.5.3 Multi-Vendor Automation Frameworks

| Framework                  | Features                                       |
| -------------------------- | ---------------------------------------------- |
| **NAPALM**                 | Access config/state, push configs              |
| **Nornir**                 | Multithreaded automation, structured inventory |
| **Ansible (Python-based)** | YAML-based declarative automation              |

---

## 1.6 Python’s Learning Curve for Network Engineers

Python is extremely beginner-friendly.

Here is what makes it easy:

### ✔ Simple syntax

```
print("Hello Network Engineers")
```

### ✔ No semicolons

### ✔ Dynamic typing

### ✔ Powerful built-in modules

### ✔ Thousands of networking libraries available

---

## 1.7 What You Will Learn in This Document

This course begins from absolute basics and goes all the way to advanced network automation.

### You will learn:

* Python Fundamentals (operators, datatypes, loops)
* Functions, classes, objects
* Script structure (imports → main → execution)
* Working with files
* JSON, YAML, XML, YANG
* CLI arguments, input, passwords
* Netmiko automation
* RESTCONF / NETCONF automation
* Jinja2 templates
* Nornir & NAPALM
* Multithreading
* Real-world use-cases

---

## 1.8 How to Use the Jupyter Notebook Format

You can copy every section into a Jupyter cell:

* Markdown → For explanations
* Code blocks → For execution
* ASCII diagrams → Rendered in Markdown

Example:

```python
print("Testing Python environment")
```

---

## 1.9 Python Script Execution Flow (based on your diagram)

```
+-------------------------------------------+
|         Structure of a Python Script      |
+-------------------------------------------+
| import modules                            |
| define constants                          |
| define classes                            |
| define functions                          |
| define main()                             |
| if __name__ == "__main__": main()         |
+-------------------------------------------+
```

This pattern is used in **Netmiko, NAPALM, and Nornir scripts**.

---

## 1.10 A Simple Network Automation Example (Sneak Peek)

```python
from netmiko import ConnectHandler

device = {
    "device_type": "cisco_ios",
    "host": "192.168.1.1",
    "username": "admin",
    "password": "admin123"
}

with ConnectHandler(**device) as conn:
    output = conn.send_command("show ip interface brief")
    print(output)
```

This will be covered in depth later.

---

## 1.11 ASCII Diagram — End-to-End Network Automation Flow

```
+------------------------------------------------------+
|                    Python Script                     |
+------------------------------------------------------+
       |               |               |
       v               v               v
   CLI (Netmiko)   RESTCONF(API)   NETCONF(YANG)
       |               |               |
       +---------------+---------------+
                       |
                       v
          Network Device Configuration / State
```

---

## 1.12 Summary

By the end of this book, you will be able to:

* Understand Python fundamentals deeply
* Build automation scripts from scratch
* Use Netmiko, RESTCONF, NETCONF, Jinja2, Nornir, NAPALM
* Automate multi-device networks
* Handle real-world production use cases

---

# ✅ **Chapter 1 Completed**

---

# ▶️ **Ready for Chapter 2?**

**Chapter 2 — Installing Python & Running Scripts (Beginner Friendly)**
Will include:

* Installing Python
* Installing libraries (pip, venv)
* Running `.py` scripts
* Using VS Code / Jupyter Notebook
* Directory structures
* First simple script

<div style="page-break-after: always;"></div>

# 📘 **Chapter 2 — Installing Python & Running Scripts**

*Markdown format + ASCII diagrams + Beginner-friendly + Copy/paste ready for Jupyter*

---

# Chapter 2 — Installing Python & Running Scripts

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

# 2.10 ASCII Diagram — Python Execution Flow

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

---

# 🎉 **Chapter 2 Completed**

---

# ▶️ Ready for Chapter 3?

Next:  <br>

# Chapter 3 — Python Fundamentals (Variables, Syntax, Indentation, Comments)

Reply: **“Next chapter”** to continue.  <br>


<div style="page-break-after: always;"></div>

# 📘 **Chapter 3 — Python Fundamentals**

*Markdown + ASCII diagrams + beginner-friendly + Jupyter-friendly*

This chapter covers the **absolute basics** of Python — variables, syntax, indentation, comments, and how Python executes instructions.
These fundamentals are CRITICAL before moving into network automation.

---
# **Chapter 3 — Python Fundamentals**

---
## **3.1 Python Syntax Overview**

Python is known for its **clean**, **minimal**, and **human-friendly** syntax.

Compare:

### Java:

```java
System.out.println("Hello");
```

### Python:

```python
print("Hello")
```

Simple and readable.

---
## **3.2 Python Statements & Execution**

A **statement** is a line of code the interpreter executes.

Examples:

```python
x = 5
print(x)
```

Python executes code **top to bottom**, **left to right**.

---
## **3.3 Comments in Python**

Used to explain code for readability.
Python ignores comments during execution.

### Single-line comment:

```python
# This is a comment
```

### Multi-line comment:

```python
"""
This is a multi-line comment.
Used often for documentation.
"""
```

### Docstrings (function/class documentation):

```python
def version():
    """Returns software version"""
    return "1.0"
```

---
## **3.4 Indentation — The MOST IMPORTANT Python Rule**

Python uses **indentation instead of braces** `{ }` to define code blocks.

### ❌ Wrong (no indentation)

```python
if x == 5:
print("x is 5")
```

### ✔ Correct

```python
if x == 5:
    print("x is 5")
```

### Default indentation = **4 spaces**

---
### ASCII Diagram — Python Block Structure

```
if condition:
    statement1
    statement2
else:
    statement3
```

---
## **3.5 Variables**

A variable is a **name** pointing to a value in memory.

### Example:

```python
device_ip = "192.168.1.1"
timeout = 10
connected = True
```

Python determines the type **automatically** (dynamic typing).

---
## **3.6 Rules for Variable Names**

✔ Can contain letters, numbers, underscore
✔ Must **start with a letter or underscore**
✔ Case-sensitive
✔ Cannot use keywords (`if`, `else`, `class`, …)

Examples:

```python
hostname = "R1"
HOSTNAME = "R1"
host_name = "R1"
```

❌ Invalid:

```python
1host = "R1"
host-name = "R1"
```

---
## **3.7 Data Types (Overview)**

| Type    | Example                         |
| ------- | ------------------------------- |
| `int`   | 10                              |
| `float` | 3.14                            |
| `str`   | "router"                        |
| `bool`  | True/False                      |
| `list`  | ["R1", "R2"]                    |
| `tuple` | ("R1", "R2")                    |
| `set`   | {"R1", "R2"}                    |
| `dict`  | {"host": "R1", "ip": "1.1.1.1"} |

Each type will be covered deeper in coming chapters.

---
## **3.8 Type Checking**

Use `type()`:

```python
print(type("router"))
print(type(10))
print(type(3.14))
```

---
## **3.9 Type Conversion (Casting)**

```python
int("10")        # string → int
str(10)          # int → string
float("3.3")     # string → float
```

Useful in network automation when converting:

* port numbers
* VLAN IDs
* CLI string outputs

---
## **3.10 Input From Users**

```python
name = input("Enter hostname: ")
```

Example:

```
Enter hostname: R1
```

---
## **3.11 Printing Output**

### Basic:

```python
print("Hello")
```

### Print variables:

```python
name = "R1"
print("Hostname:", name)
```

### f-Strings (recommended):

```python
device = "R1"
ip = "10.1.1.1"
print(f"Connecting to {device} at {ip}")
```

---
## **3.12 Python Multiple Assignment**

```python
a, b, c = 1, 2, 3
```

Assign same value:

```python
x = y = z = 10
```

---
## **3.13 Python Operators (Quick Intro)**

Full chapter later — here is the overview:

| Category   | Examples        |
| ---------- | --------------- |
| Arithmetic | + - * / % ** // |
| Comparison | == != > < >= <= |
| Logical    | and, or, not    |
| Assignment | = += -=         |
| Membership | in, not in      |
| Identity   | is, is not      |

---
## **3.14 Strings Basics**

### Creating:

```python
name = "Router1"
```

### Indexing:

```python
name[0]    # R
```

### Slicing:

```python
name[0:3]  # Rou
```

### Multi-line string:

```python
data = """line1
line2
line3"""
```

---
## **3.15 Escape Characters**

```python
text = "He said \"Hello\""
```

---
## **3.16 Python Naming Conventions (PEP-8)**

### Variables → lowercase_with_underscores

```python
device_name = "R1"
```

### Constants → UPPERCASE

```python
TIMEOUT = 10
```

### Functions → lowercase_with_underscores

```python
def get_version():
    pass
```

### Classes → PascalCase

```python
class NetworkDevice:
    pass
```

Used heavily later in OOP & automation.

---
## **3.17 Assignment Example: Network Engineer Scenario**

```python
router_name = "R1"
router_ip = "192.168.1.1"
is_reachable = True

print(f"Router {router_name} has IP {router_ip}")
print("Reachable:", is_reachable)
```

Output:

```
Router R1 has IP 192.168.1.1
Reachable: True
```

---
## **3.18 ASCII Diagram — Memory & Variables**

```
router_ip -----> "192.168.1.1"
timeout   -----> 10
is_up     -----> True
```

This helps visualize Python variable assignment.

---
## **3.19 Best Practices for Network Automation Beginners**

* Use meaningful variable names
* Avoid abbreviations
* Keep indentation consistent
* Use f-strings for printing
* Write comments for clarity
* Keep scripts organized (imports → functions → main)

---
## **3.20 Chapter Summary**

You learned:

* Python syntax & indentation
* Comments & docstrings
* Variables & naming rules
* Basic data types
* Printing & input
* String basics
* Type conversion
* Best practices

These fundamentals prepare you for deeper topics in later chapters.

---

# 🎉 **Chapter 3 Completed**

---

# ▶️ **Ready for Chapter 4?**

Next:

# **Chapter 4 — Operators & Expressions (Beginner → Advanced)**

Covers:

* Arithmetic
* Logical
* Comparison
* Bitwise
* Membership
* Identity
* Operator precedence
* Network-focused examples

Reply: **“Next chapter”** to continue.

<div style="page-break-after: always;"></div>
# 📘 **Chapter 4 — Operators & Expressions**

*Markdown + ASCII diagrams + beginner-friendly + Jupyter-ready*

Python operators are symbols that tell Python to perform actions like calculations, comparisons, logical decisions, membership checks, and more.
Network automation heavily relies on operators — for parsing outputs, validating conditions, looping through device lists, filtering, etc.

This chapter goes from basics → advanced with LOTS of real-world network-focused examples.

---
# **Chapter 4 — Operators & Expressions**

---
## **4.1 What is an Operator?**

An operator performs an action on one or more values (operands).

Example:

```python
a = 5 + 3
```

Here:

* `+` is an **operator**
* `5` and `3` are **operands**

---
## **4.2 Types of Operators in Python**

| Type       | Examples           |
| ---------- | ------------------ |
| Arithmetic | + - * / % ** //    |
| Comparison | == != > < >= <=    |
| Logical    | and, or, not       |
| Assignment | = += -= *=         |
| Bitwise    | &, |, ^, ~, <<, >> |
| Membership | in, not in         |
| Identity   | is, is not         |

---
# **4.3 Arithmetic Operators**

| Operator | Meaning        | Example | Result |
| -------- | -------------- | ------- | ------ |
| `+`      | Addition       | 10 + 5  | 15     |
| `-`      | Subtraction    | 10 - 5  | 5      |
| `*`      | Multiplication | 10 * 5  | 50     |
| `/`      | Division       | 10 / 4  | 2.5    |
| `%`      | Modulo         | 10 % 3  | 1      |
| `**`     | Exponent       | 2 ** 3  | 8      |
| `//`     | Floor division | 10 // 3 | 3      |

### Example:

```python
print(10 + 5)
print(10 % 3)
print(2 ** 3)
```

---
# **4.4 Network Automation Examples (Arithmetic)**

Calculate VLAN ID offset:

```python
base_vlan = 100
vlan = base_vlan + 10
print(vlan)   # 110
```

Calculate subnet count:

```python
hosts = 500
subnets = hosts // 254
print(subnets)
```

---
## **4.5 Comparison Operators**

Used to **compare values**, always returns **True/False**.

| Operator | Meaning          |
| -------- | ---------------- |
| `==`     | equal            |
| `!=`     | not equal        |
| `>`      | greater than     |
| `<`      | less than        |
| `>=`     | greater or equal |
| `<=`     | less or equal    |

### Examples:

```python
print(5 == 5)
print(10 > 5)
print("R1" != "R2")
```

---
## **4.6 Network Automation Examples (Comparison)**

Check if an interface is down:

```python
status = "down"
print(status == "down")
```

Compare device OS:

```python
os = "iosxe"
print(os == "iosxe")
```

Check MTU:

```python
mtu = 1500
print(mtu >= 1500)
```

---
## **4.7 Logical Operators**

| Operator | Meaning                                |
| -------- | -------------------------------------- |
| `and`    | True if both conditions are True       |
| `or`     | True if at least one condition is True |
| `not`    | Reverses True/False                    |

### Examples:

```python
print(True and False)   # False
print(True or False)    # True
print(not True)         # False
```

---
## **4.8 Network Examples (Logical)**

Check if device is reachable **and** username is correct:

```python
reachable = True
valid_user = True

if reachable and valid_user:
    print("Login allowed")
```

Check if device type is supported:

```python
device_type = "cisco_ios"

if device_type == "cisco_ios" or device_type == "cisco_xe":
    print("Supported device")
```

---
## **4.9 Assignment Operators**

| Operator | Meaning |
| -------- | ------- |
| `=`      | x = 5   |
| `+=`     | x += 5  |
| `-=`     | x -= 5  |
| `*=`     | x *= 5  |
| `/=`     | x /= 5  |

### Examples:

```python
x = 10
x += 5  # x = 15
x -= 3  # x = 12
```

Used often in loops.

---
## **4.10 Bitwise Operators (Advanced)**

Operate on bits (0s and 1s).
Used for subnet masks, IP calculations.

| Operator | Meaning     |
| -------- | ----------- |
| `&`      | AND         |
| |        | OR          |
| `^`      | XOR         |
| `~`      | NOT         |
| `<<`     | shift left  |
| `>>`     | shift right |

### Simple Example:

```python
print(5 & 3)
```

---
## **4.11 Network Automation Bitwise Example**

Calculate wildcard mask:

```python
subnet = 255
wildcard = 255 - subnet   # or ~subnet & 255
print(wildcard)
```

Calculate broadcast from mask:

```python
broadcast = ip | (~mask & 0xFF)
```

---
## **4.12 Membership Operators**

| Operator | Meaning                       |
| -------- | ----------------------------- |
| `in`     | checks if value exists        |
| `not in` | checks if value doesn't exist |

### Examples:

```python
print('R1' in ['R1', 'R2'])
print('R3' not in ['R1', 'R2'])
```

---
## **4.13 Network Examples (Membership)**

Check if interface exists:

```python
interfaces = ["Gig0/0", "Gig0/1"]
print("Gig0/1" in interfaces)
```

Check if "down" appears in output:

```python
output = "Gig0/1 is down"
print("down" in output)
```

---
## **4.14 Identity Operators**

| Operator | Meaning           |
| -------- | ----------------- |
| `is`     | exact same object |
| `is not` | not same object   |

### Example:

```python
a = [1, 2, 3]
b = a
print(a is b)      # True

c = [1, 2, 3]
print(a is c)      # False (same values, different object)
```

---
## **4.15 Operator Precedence (VERY IMPORTANT)**

Python follows a specific priority order.

### Highest → Lowest

```
1. ()
2. **
3. +x, -x
4. *, /, //, %
5. +, -
6. <, <=, >, >=
7. ==, !=
8. not
9. and
10. or
```

---
## **4.16 Example: Precedence in Action**

```python
print(2 + 3 * 4)
```

Output: `14` (not 20)

Because:

```
3 * 4 → 12
2 + 12 → 14
```

### Use parentheses to control:

```python
print((2 + 3) * 4)
```

---
## **4.17 Network Automation Examples (Precedence)**

Check if device is Cisco AND running latest version:

```python
vendor = "cisco"
version = 17.3

if vendor == "cisco" and version >= 17.2:
    print("Upgrade OK")
```

Filter down interfaces:

```python
if "Gig" in interface and "down" not in status:
    print("Interface is up")
```

---
## **4.18 Complex Example — Parsing `show ip int brief`**

```python
line = "Gig0/1 192.168.1.1 YES NVRAM up up"

if "Gig0" in line and "up" in line:
    print("Interface is UP")
```

---
## **4.19 ASCII Diagram — Operator Categories**

```
+-------------------------+
|   Python Operators      |
+-------------------------+
| Arithmetic             | + - * / % ** //
| Comparison             | == != > < >= <=
| Logical                | and or not
| Assignment             | = += -= *=
| Membership             | in, not in
| Identity               | is, is not
| Bitwise                | &, |, ^, ~, <<, >>
+-------------------------+
```

---
## **4.20 Chapter Summary**

You learned:

* All Python operators
* How precedence works
* Real-world network automation use cases
* Membership & identity operators
* Bitwise operators for subnet calculations

This chapter forms the basis for **conditions, loops, parsing, and device filtering** used later.

---

# 🎉 **Chapter 4 Completed**

---

# ▶️ Ready for Chapter 5?

Next:

# **Chapter 5 — Data Types (String, List, Tuple, Set, Dict) with Network Examples**

Reply: **“Next chapter”** to continue.

<div style="page-break-after: always;"></div>

# 📘 **Chapter 5 — Python Data Types (Strings, Lists, Tuples, Sets, Dictionaries)**

*Markdown + ASCII diagrams + lots of networking examples*

This is one of the MOST important chapters.
These 5 data types are the foundation of **all network automation tasks**:

✔ Parsing show commands
✔ Handling device lists
✔ Storing configurations
✔ Creating inventories
✔ Generating templates

We will go deep into each type with clear examples.

---
# **Chapter 5 — Python Data Types**

Python has **five primary built-in collection data types** used extensively in network automation:

1. **String (`str`)**
2. **List (`list`)**
3. **Tuple (`tuple`)**
4. **Set (`set`)**
5. **Dictionary (`dict`)**

We will break them down one by one.

---
## **5.1 Strings (`str`)**

Strings store text.
Used everywhere: IPs, hostnames, interface outputs, configs, etc.

### Creating Strings

```python
hostname = "Router1"
ip = '192.168.1.1'
config = """interface Gig0/0
 description Uplink"""
```

---

## 5.1.1 String Indexing

```
R  o  u  t  e  r  1
0  1  2  3  4  5  6
```

Example:

```python
hostname = "Router1"
print(hostname[0])     # R
print(hostname[-1])    # 1
```

---

## 5.1.2 String Slicing

```python
print(hostname[0:3])  # Rou
print(hostname[-2:])  # r1
```

---
### 5.1.3 Useful String Methods

| Method       | Use                   |
| ------------ | --------------------- |
| `.upper()`   | Convert to uppercase  |
| `.lower()`   | Convert to lowercase  |
| `.strip()`   | Remove whitespace     |
| `.split()`   | Convert string → list |
| `.replace()` | Replace text          |
| `.find()`    | Find substring        |

---

## Network Automation Examples (String)

### Extract interface from output:

```python
line = "Gig0/1 up up"
interface = line.split()[0]
print(interface)        # Gig0/1
```

### Check if interface is down:

```python
print("down" in line)
```

---
# **5.2 Lists (`list`)**

Lists are **ordered**, **changeable**, and allow **duplicates**.

They are the MOST used data type for:

* device lists
* interface lists
* command lists
* IP lists

---

## 5.2.1 Creating Lists

```python
devices = ["R1", "R2", "R3"]
vlans = [10, 20, 30]
mixed = ["R1", 10, True]
```

---

## 5.2.2 Accessing Elements

```python
print(devices[0])      # R1
print(devices[-1])     # R3
```

---

## 5.2.3 List Slicing

```python
print(devices[0:2])    # ['R1', 'R2']
```

---

## 5.2.4 Adding Items

```python
devices.append("R4")
devices.insert(1, "R10")
```

---

## 5.2.5 Removing Items

```python
devices.remove("R2")
devices.pop()          # removes last
del devices[0]
```

---

## 5.2.6 List Membership

```python
if "R1" in devices:
    print("R1 is in list")
```

---

## Network Example (List)

### List of device IPs:

```python
ips = ["10.1.1.1", "10.1.1.2", "10.1.1.3"]
for ip in ips:
    print(f"Pinging {ip}")
```

### List of commands for Netmiko:

```python
commands = [
    "show version",
    "show ip int brief",
    "show run | i hostname"
]
```

---
# **5.3 Tuples (`tuple`)**

Tuples are similar to lists BUT **immutable** (cannot be changed).

Use them for values that must not change:

* fixed credentials
* (device, ip) pairs
* router location coordinates

---

## 5.3.1 Creating Tuples

```python
router = ("R1", "10.1.1.1")
```

---

## 5.3.2 Accessing Tuple Items

```python
print(router[0])   # R1
print(router[1])   # 10.1.1.1
```

---

## 5.3.3 Why Tuples in Networking?

They **protect data** from being modified accidentally.

Example:

```python
credentials = ("admin", "password123")
```

Safer than:

```python
credentials = ["admin", "password123"]   # modifiable
```

---
# **5.4 Sets (`set`)**

Sets are:

* unordered
* unique
* fast

Used for:

* Finding unique VLANs
* Removing duplicates
* Membership tests

---

## 5.4.1 Creating Sets

```python
vlans = {10, 20, 30, 30}
print(vlans)        # duplicates removed
```

---

## 5.4.2 Adding and Removing

```python
vlans.add(40)
vlans.remove(20)
```

---

## 5.4.3 Useful Set Operations

| Operation    | Example | Meaning         |
| ------------ | ------- | --------------- |
| Union        | A | B   | combine sets    |
| Intersection | A & B   | common items    |
| Difference   | A - B   | exclusive items |

---

## Network Example (Set)

Find common VLANs on two switches:

```python
sw1 = {10, 20, 30}
sw2 = {20, 30, 40}

print(sw1 & sw2)      # {20, 30}
```

Remove duplicate IPs:

```python
ips = ["10.1.1.1", "10.1.1.1", "10.1.1.2"]
unique_ips = set(ips)
```

---
# **5.5 Dictionaries (`dict`) — MOST IMPORTANT FOR NETWORKING**

Dictionaries store **key-value** pairs.

Used for:

* Netmiko device dictionaries
* Nornir inventories
* JSON/YAML data
* Interface details
* Device configurations

---

## 5.5.1 Creating a Dictionary

```python
device = {
    "hostname": "R1",
    "ip": "192.168.1.1",
    "os": "iosxe"
}
```

---

## 5.5.2 Accessing Values

```python
print(device["hostname"])
print(device.get("ip"))
```

---

## 5.5.3 Adding/Updating

```python
device["location"] = "HQ"
device["ip"] = "10.0.0.1"
```

---

## 5.5.4 Removing Keys

```python
device.pop("os")
del device["location"]
```

---
## 5.5.5 Network Example (Netmiko device dict)

```python
from netmiko import ConnectHandler

device = {
    "device_type": "cisco_ios",
    "host": "10.1.1.1",
    "username": "admin",
    "password": "admin123",
}
```

Dictionaries are the backbone of **automation task definitions**.

---
# **5.6 Nested Collections**

Python lets you combine data types.

Examples used in Nornir/YAML/json:

### List of Dictionaries:

```python
devices = [
    {"hostname": "R1", "ip": "10.1.1.1"},
    {"hostname": "R2", "ip": "10.1.1.2"},
]
```

### Dictionary of Lists:

```python
device_groups = {
    "core": ["R1", "R2"],
    "branch": ["R3", "R4"]
}
```

### Dictionary of Dictionaries:

```python
inventory = {
    "R1": {"ip": "10.1.1.1", "role": "core"},
    "R2": {"ip": "10.1.1.2", "role": "branch"},
}
```

---
# **5.7 ASCII Diagram — When to Use Each Type**

```
+-----------+---------------------------+
| Type      | Use Case                  |
+-----------+---------------------------+
| String    | CLI outputs, IPs, configs |
| List      | Device lists, commands    |
| Tuple     | Fixed values, credentials |
| Set       | Unique VLANs/IPs          |
| Dict      | Device inventory, JSON    |
+-----------+---------------------------+
```

---
# **5.8 Chapter Summary**

✔ Strings → parsing CLI output
✔ Lists → storing devices, commands
✔ Tuples → fixed data
✔ Sets → unique values
✔ Dictionaries → MOST IMPORTANT for device definition and config storage
✔ Nested data structures = inventory formats

Your automation scripts will rely on these types heavily.

---

# 🎉 **Chapter 5 Completed**

---

# ▶️ Ready for Chapter 6?

Next:

# **Chapter 6 — Data Models for Network Automation (JSON, YAML, XML, YANG)**

Reply: **“Next chapter”** to continue.
<div style="page-break-after: always;"></div>
# 📘 **Chapter 6 — Data Models for Network Automation (JSON, YAML, XML, YANG)**

*Markdown + ASCII diagrams + examples + Jupyter-ready*

Network automation relies heavily on **structured data models** instead of raw CLI output.  <br>
This chapter focuses on the formats used in NETCONF, RESTCONF, Nornir, Ansible, and modern API-driven automation.  <br>

The four most important data formats:  <br>

1. **JSON**  <br>
2. **YAML**  <br>
3. **XML**  <br>
4. **YANG (data modeling language)**  <br>

---
# **Chapter 6 — Data Models for Network Automation**

---
## **6.1 Why Do Network Engineers Need Data Models?**

Traditional CLI automation requires parsing complex text.  <br>

APIs return structured data:  <br>

* Easy to parse
* Machine readable
* Consistent
* Vendor independent

### Used in:

✔ REST APIs  <br>
✔ RESTCONF  <br>
✔ NETCONF  <br>
✔ Telemetry  <br>
✔ NAPALM/Nornir inventories  <br>
✔ Jinja2 templates  <br>

---
## **6.2 JSON (JavaScript Object Notation)**

JSON is the **most popular** structured format used in:  <br>

* RESTCONF API
* REST API
* Device telemetry
* Python scripts
* NAPALM/Nornir
* Web APIs

---

## 6.2.1 JSON Structure

```
{
  "hostname": "R1",
  "ip": "10.1.1.1",
  "interfaces": ["Gig0/0", "Gig0/1"]
}
```

JSON supports:  <br>

* Strings
* Numbers
* Booleans
* Lists
* Objects (Python dictionaries)

---

## 6.2.2 Working with JSON in Python

### Load JSON from a string:

```python
import json

data = '{"hostname": "R1", "ip": "10.1.1.1"}'
parsed = json.loads(data)
print(parsed["hostname"])
```

### Load JSON from a file:

```python
with open("device.json") as f:
    data = json.load(f)
```

### Convert Python dict → JSON:

```python
python_dict = {"a": 1, "b": 2}
json_string = json.dumps(python_dict, indent=4)
print(json_string)
```

---

## 6.2.3 Network Example — RESTCONF JSON Output

Cisco IOS-XE returns RESTCONF responses like:  <br>

```json
{
  "ietf-interfaces:interface": {
    "name": "GigabitEthernet1",
    "enabled": true,
    "ipv4": {
      "address": [
        { "ip": "10.10.20.1", "netmask": "255.255.255.0" }
      ]
    }
  }
}
```

Parse the IP:  <br>

```python
ip = data["ietf-interfaces:interface"]["ipv4"]["address"][0]["ip"]
```

---
## **6.3 YAML (YAML Ain't Markup Language)**

YAML is used in:  <br>

* Nornir inventory
* Ansible playbooks
* Network automation configuration files
* Jinja2 templates

It is simpler and more human-readable than JSON.  <br>

---

## 6.3.1 YAML Structure

```
hostname: R1
ip: 10.1.1.1
interfaces:
  - Gig0/0
  - Gig0/1
```

### Compared to JSON:

```
JSON → strict, machine-focused
YAML → flexible, human-friendly
```

---

## 6.3.2 Load YAML in Python

Install PyYAML:  <br>

```bash
pip install pyyaml
```

Parse YAML:  <br>

```python
import yaml

with open("device.yaml") as f:
    data = yaml.safe_load(f)

print(data["hostname"])
```

---

## 6.3.3 YAML Device Inventory Example (Nornir)

`hosts.yaml`:  <br>

```yaml
R1:
  hostname: 10.1.1.1
  platform: ios
  groups:
    - core

R2:
  hostname: 10.1.1.2
  platform: ios
  groups:
    - core
```

---
## **6.4 XML (eXtensible Markup Language)**

XML is used heavily in:  <br>

* **NETCONF**
* Older network APIs
* IOS-XE YANG models

---

## 6.4.1 XML Example

```
<interface>
  <name>GigabitEthernet1</name>
  <enabled>true</enabled>
</interface>
```

---

## 6.4.2 Parsing XML in Python

```python
import xml.etree.ElementTree as ET

xml_data = """<root><name>R1</name></root>"""
tree = ET.fromstring(xml_data)
print(tree.find("name").text)
```

---

## 6.4.3 XML Example — NETCONF `<get-config>` RPC Response

```
<rpc-reply>
 <data>
  <interfaces>
   <interface>
    <name>GigabitEthernet1</name>
    <enabled>true</enabled>
   </interface>
  </interfaces>
 </data>
</rpc-reply>
```

Parse interface name:  <br>

```python
name = tree.find(".//interface/name").text
```

---
## **6.5 YANG — The MOST Important Model**

YANG is a **data modeling language** used with:  <br>

* NETCONF
* RESTCONF
* gNMI
* Model-driven programmability

YANG defines **how data should be structured**, not the data itself.  <br>

---

## 6.5.1 Why YANG Is Important for Network Engineers?

✔ It defines **vendor-neutral models**  <br>
✔ RESTCONF and NETCONF depend on YANG  <br>
✔ Tools like pyang validate YANG models  <br>
✔ Each feature on a device has a YANG schema  <br>

---

## 6.5.2 YANG Example (Simple)

```
module example-interface {
  container interface {
    leaf name {
      type string;
    }
    leaf enabled {
      type boolean;
    }
  }
}
```

---

## 6.5.3 Cisco Interface YANG Tree (ASCII Diagram)

```
interface
 ├── name (string)
 ├── type (string)
 ├── enabled (bool)
 └── ipv4
      └── address
          ├── ip (string)
          └── netmask (string)
```

---
## **6.6 How JSON, YAML, XML, and YANG Work Together**

```
+-------------------+
|      YANG         |  (model definition)
+-------------------+
         |
         v
+------------------------------------+
| NETCONF → XML structured data      |
| RESTCONF → JSON structured data    |
+------------------------------------+
         |
         v
+----------------------------+
| Python Script (uses data) |
+----------------------------+
```

---
## **6.7 Real Automation Example — RESTCONF GET Request**

```python
import requests
import json

url = "https://10.10.20.50/restconf/data/ietf-interfaces:interfaces"

headers = {
  "Content-Type": "application/yang-data+json",
  "Accept": "application/yang-data+json"
}

response = requests.get(url, headers=headers, auth=("cisco", "cisco"), verify=False)
data = response.json()

print(json.dumps(data, indent=2))
```

---
## **6.8 Real Automation Example — NETCONF with ncclient**

```python
from ncclient import manager

conn = manager.connect(
    host="10.1.1.1",
    port=830,
    username="admin",
    password="admin",
    hostkey_verify=False
)

config = conn.get_config(source="running").data_xml
print(config)
```

This returns **XML**, but structure is based on **YANG**.  <br>

---
## **6.9 When to Use Which Data Model?**

```
+----------+--------------------------------------------+
| Format   | Best Use Case                              |
+----------+--------------------------------------------+
| JSON     | RESTCONF, REST APIs, telemetry             |
| YAML     | Inventories, templates, automation config  |
| XML      | NETCONF RPC, gNMI, structured device cfg   |
| YANG     | Defines the schema for XML/JSON data       |
+----------+--------------------------------------------+
```

---
## **6.10 Chapter Summary**

You now understand:  <br>

✔ JSON → RESTCONF/API  <br>
✔ YAML → inventories & playbooks  <br>
✔ XML → NETCONF RPC  <br>
✔ YANG → data modeling language behind APIs  <br>
✔ How Python parses JSON/YAML/XML  <br>
✔ How RESTCONF & NETCONF return structured data  <br>
✔ How these models integrate in automation workflows  <br>

These formats will be used heavily in later chapters (NETCONF, RESTCONF, Nornir, Jinja2).  <br>

---

# 🎉 **Chapter 6 Completed**

---

# ▶️ Ready for Chapter 7?

Next:  <br>

# **Chapter 7 — Working with Files (Read, Write, Append) and Network Use Cases**

Reply: **“Next chapter”** to continue.  <br>


<div style="page-break-after: always;"></div>
# 📘 **Chapter 7 — Working With Files (Read, Write, Append) for Network Automation**

*Markdown + ASCII diagrams + networking examples + Jupyter-ready*

Network automation scripts often need to:  <br>

✔ Read device lists from files  <br>
✔ Store command outputs  <br>
✔ Write logs  <br>
✔ Save configurations  <br>
✔ Load YAML/JSON inventories  <br>

This chapter teaches everything about file operations in Python.  <br>

---
# **Chapter 7 — Working With Files**

Python uses the built-in function `open()` to work with files.  <br>

---
## **7.1 File Modes**

| Mode   | Meaning                           |
| ------ | --------------------------------- |
| `"r"`  | Read (default)                    |
| `"w"`  | Write (overwrite)                 |
| `"a"`  | Append                            |
| `"x"`  | Create new file (error if exists) |
| `"r+"` | Read + Write                      |
| `"b"`  | Binary mode                       |

Examples:  <br>

```python
open("file.txt", "r")   # read
open("file.txt", "w")   # write (delete old content)
open("file.txt", "a")   # append
```

---
## **7.2 ALWAYS Use `with open()` — Best Practice**

### Why?

✔ automatically closes file  <br>
✔ safer  <br>
✔ avoids memory leaks  <br>

Example:  <br>

```python
with open("devices.txt") as f:
    data = f.read()
```

---
## **7.3 Reading Files**

### 7.3.1 Read whole file:

```python
with open("devices.txt", "r") as f:
    data = f.read()

print(data)
```

---

### 7.3.2 Read line by line:

```python
with open("devices.txt") as f:
    for line in f:
        print(line.strip())
```

---

### 7.3.3 Read into a list:

```python
with open("devices.txt") as f:
    devices = f.readlines()

print(devices)
```

---
## **7.4 Writing Files**

Overwrite existing file:  <br>

```python
with open("output.txt", "w") as f:
    f.write("Automation successful\n")
```

---
## **7.5 Appending to Files**

Append new data:  <br>

```python
with open("log.txt", "a") as f:
    f.write("New run completed\n")
```

---
## **7.6 Network Automation Examples**

---

## 7.6.1 Example 1 — Store Device IPs in a File

`devices.txt`:  <br>

```
10.1.1.1
10.1.1.2
10.1.1.3
```

Read it:  <br>

```python
with open("devices.txt") as f:
    ips = [ip.strip() for ip in f]

for ip in ips:
    print(ip)
```

---

## 7.6.2 Example 2 — Save "show run" output to a file

```python
with open("R1_config.txt", "w") as f:
    f.write(output)
```

Used with Netmiko later.  <br>

---

## 7.6.3 Example 3 — Append logs

```python
with open("log.txt", "a") as f:
    f.write(f"Connected to {device}\n")
```

---

## 7.6.4 Example 4 — Read YAML Inventory File

`inventory.yaml`:  <br>

```yaml
R1:
  hostname: 10.1.1.1
  platform: ios
```

Parse:  <br>

```python
import yaml

with open("inventory.yaml") as f:
    data = yaml.safe_load(f)

print(data)
```

---

## 7.6.5 Example 5 — Write JSON File

```python
import json

device = {"host": "R1", "ip": "10.1.1.1"}

with open("device.json", "w") as f:
    json.dump(device, f, indent=4)
```

---
## **7.7 Reading Configuration Files**

### Example — Read a config output:

```
interface Gig0/0
 description Uplink
 ip address 10.1.1.1 255.255.255.0
```

Parse file:  <br>

```python
with open("running-config.txt") as f:
    for line in f:
        if "ip address" in line:
            print(line.strip())
```

---
## **7.8 Checking If File Exists**

```python
import os

if os.path.exists("devices.txt"):
    print("File found")
else:
    print("File missing")
```

---
## **7.9 Create Directory If Not Exists**

Used for log folders, config backups, etc.  <br>

```python
import os

if not os.path.exists("backups"):
    os.makedirs("backups")
```

---
## **7.10 Delete a File**

```python
os.remove("old_config.txt")
```

---
## **7.11 ASCII Diagram — File Operations Flow**

```
 +---------------------------+
 |       Python Script       |
 +---------------------------+
               |
               v
       open("file.txt")
               |
   +-----------------------+
   |  Read  | Write | Append |
   +-----------------------+
               |
               v
          Close (auto with 'with')
```

---
## **7.12 Real-World Use Case — Backup Router Configs**

```python
from netmiko import ConnectHandler

device = {
    "device_type": "cisco_ios",
    "host": "10.1.1.1",
    "username": "admin",
    "password": "admin123",
}

with ConnectHandler(**device) as conn:
    config = conn.send_command("show run")

with open("backups/R1_config.txt", "w") as f:
    f.write(config)
```

---
## **7.13 Chapter Summary**

You learned:  <br>

✔ How to read files (single/multiple lines)  <br>
✔ How to write & append to files  <br>
✔ How to work with JSON/YAML  <br>
✔ How to create/delete folders  <br>
✔ Best practices using `with open()`  <br>
✔ Real network automation examples  <br>

These skills are essential for logs, inventories, templates, and config backups.  <br>

---

# 🎉 **Chapter 7 Completed**

---

# ▶️ Ready for Chapter 8?

Next:  <br>

# **Chapter 8 — User Input, getpass, and CLI Arguments (argparse)**

Includes:  <br>

* input()
* getpass()
* argparse (VERY important for making real CLI tools)
* Network automation examples

Reply: **“Next chapter”** to continue.  <br>

<div style="page-break-after: always;"></div>

# 📘 **Chapter 8 — User Input, getpass, and CLI Arguments (argparse)**

*Markdown + ASCII diagrams + networking examples + Jupyter-ready*

In network automation, scripts often need to accept:  <br>

✔ Device IPs  <br>
✔ Credentials  <br>
✔ Commands  <br>
✔ File names  <br>
✔ Options (e.g., ping vs show commands)  <br>

Python provides multiple input mechanisms:  <br>

1. `input()` — user keyboard input  <br>
2. `getpass()` — secure password entry  <br>
3. `argparse` — CLI arguments (`python script.py --ip 10.1.1.1`)  <br>

Let’s cover each in detail.  <br>

---
# **Chapter 8 — User Input & CLI Arguments**

---
## **8.1 Using `input()`**

`input()` takes user input as a **string**.  <br>

### Example:

```python
hostname = input("Enter device hostname: ")
print(f"You entered: {hostname}")
```

---

## Network Example — Input Device IP

```python
ip = input("Enter device IP: ")
print(f"Pinging {ip}...")
```

---
## **8.2 Using `getpass()` — Secure Password Entry**

Used to prevent passwords from appearing on the console.  <br>

### First install on Windows (optional):

```bash
pip install getpass4
```

### Example:

```python
from getpass import getpass

username = input("Username: ")
password = getpass("Password: ")

print("Credentials collected.")
```

---
## **8.3 ASCII Diagram — Input Flow**

```
+-------------------------+
|    Python Script        |
+-------------------------+
           |
           v
 input()  → Get username/IP
 getpass() → Get password
           |
           v
 Use credentials in Netmiko/RESTCONF
```

---
## **8.4 Why Use CLI Arguments?**

Using `input()` is fine for beginners, BUT…  <br>

Real automation tools must:  <br>

✔ Run from terminal  <br>
✔ Accept multiple options  <br>
✔ Work in pipelines  <br>
✔ Be automated by cron, Jenkins, Ansible  <br>

Examples:  <br>

```bash
python backup.py --device R1 --ip 10.1.1.1
python config_push.py --file bgp.j2
```

This requires **argparse**.  <br>

---
## **8.5 Using `argparse` — Professional CLI Scripts**

`argparse` allows your script to behave like Linux commands:  <br>

```
python script.py --ip 10.1.1.1 --cmd "show version"
```

---

## 8.5.1 Basic `argparse` Example

```python
import argparse

parser = argparse.ArgumentParser()

parser.add_argument("--name", help="Enter your name")

args = parser.parse_args()

print(f"Hello {args.name}")
```

Run:  <br>

```
python script.py --name john
```

---
## **8.6 Mandatory Arguments**

```python
parser.add_argument("--ip", required=True)
```

---
## **8.7 Network Example — CLI Tool to Run a Show Command**

### `show.py`

```python
import argparse

parser = argparse.ArgumentParser(description="Run show command on a device")

parser.add_argument("--ip", required=True, help="Device IP")
parser.add_argument("--cmd", required=True, help="Command to run")

args = parser.parse_args()

print(f"Connecting to {args.ip}")
print(f"Running: {args.cmd}")
```

Run:  <br>

```
python show.py --ip 10.1.1.1 --cmd "show ip int brief"
```

(This script will later be expanded with Netmiko.)  <br>

---
## **8.8 Network Example — Full Netmiko With argparse**

```python
import argparse
from netmiko import ConnectHandler
from getpass import getpass

parser = argparse.ArgumentParser(description="Run command on device")

parser.add_argument("--ip", required=True)
parser.add_argument("--cmd", required=True)

args = parser.parse_args()

device = {
    "device_type": "cisco_ios",
    "host": args.ip,
    "username": input("Username: "),
    "password": getpass("Password: ")
}

with ConnectHandler(**device) as conn:
    output = conn.send_command(args.cmd)

print(output)
```

Run:  <br>

```bash
python run_cmd.py --ip 10.1.1.1 --cmd "show version"
```

---
## **8.9 Multiple Arguments & Lists**

```python
parser.add_argument("--devices", nargs="+", help="List of IPs")
```

Run:  <br>

```bash
python ping.py --devices 10.1.1.1 10.1.1.2 10.1.1.3
```

---
## **8.10 Choice Arguments**

Allow only specific values:  <br>

```python
parser.add_argument("--protocol", choices=["netconf", "restconf"])
```

---
## **8.11 Boolean Flags**

Flags like `--verbose`:  <br>

```python
parser.add_argument("--verbose", action="store_true")
```

Run:  <br>

```bash
python script.py --verbose
```

---
## **8.12 ASCII Diagram — argparse Flow**

```
python script.py --ip 10.1.1.1 --cmd "show version"
                       |
                       v
               argparse parses arguments
                       |
                       v
         Script gets ip="10.1.1.1", cmd="show version"
                       |
                       v
           Netmiko connects → executes command
```

---
## **8.13 Best Practices**

✔ Use argparse instead of input() for real tools  <br>
✔ Use getpass() for passwords  <br>
✔ Use descriptions/help  <br>
✔ Validate IP addresses (later chapter: `ipaddress` module)  <br>
✔ Use `--verbose` for debugging  <br>

---
## **8.14 Chapter Summary**

You learned:  <br>

✔ input() — keyboard input  <br>
✔ getpass() — hide passwords  <br>
✔ argparse — PROPER CLI tool building  <br>
✔ How arguments pass into Netmiko scripts  <br>
✔ How to create flags, required params, choices, lists  <br>

You can now build **professional, secure, user-friendly automation tools**.  <br>

---

# 🎉 **Chapter 8 Completed**

---

# ▶️ Ready for Chapter 9?

Next:  <br>

# **Chapter 9 — Functions in Python (Parameters, Return Values, *args, **kwargs)**

Some topics:  <br>

* Defining functions
* Positional/keyword arguments
* Default parameters
* Returning values
* Network automation use cases
* Function design best practices
* ASCII diagrams

Reply: **“Next chapter”** to continue.  <br>

<div style="page-break-after: always;"></div>

# 📘 **Chapter 9 — Functions in Python (Parameters, Return Values, *args, **kwargs)**

*Markdown + ASCII diagrams + network automation examples*

Functions are reusable blocks of code.  <br>
In network automation, **EVERY script uses functions** for:  <br>

✔ Connecting to devices  <br>
✔ Running show commands  <br>
✔ Backing up configs  <br>
✔ Parsing outputs  <br>
✔ Generating templates  <br>

This chapter builds your foundation for later chapters (classes, Nornir, Netmiko).  <br>

---

# Chapter 9 — Python Functions

---

## 9.1 What Is a Function?

A function is a block of code that runs **only when called**.  <br>

Syntax:  <br>

```python
def function_name():
    # code here
```

---

## 9.2 Creating Your First Function

```python
def greet():
    print("Hello Network Engineer!")

greet()
```

Output:  <br>

```
Hello Network Engineer!
```

---

## 9.3 Function With Parameters

Parameters = variables passed into a function.  <br>

```python
def show_ip(ip):
    print(f"Device IP is {ip}")

show_ip("10.1.1.1")
```

---

## 9.4 Multiple Parameters

```python
def device_info(name, ip):
    print(f"{name} has IP {ip}")

device_info("R1", "10.1.1.1")
```

---

## 9.5 Return Values

Functions can return data.  <br>

```python
def add(a, b):
    return a + b

result = add(5, 10)
print(result)
```

---

## ### Network Example — Return Show Output

```python
def format_interface(name):
    return f"Interface {name} is up"

msg = format_interface("Gig0/1")
print(msg)
```

---

## 9.6 Default Parameter Values

Used to avoid passing common values repeatedly.  <br>

```python
def connect(device="R1"):
    print(f"Connecting to {device}")

connect()       # uses default R1
connect("R2")   # override
```

---

## 9.7 Keyword Arguments

```python
def connect(host, username):
    print(f"Host={host}, User={username}")

connect(username="admin", host="R1")
```

---

## 9.8 Positional vs Keyword Arguments

### Positional:

```python
show("R1", "10.1.1.1")
```

### Keyword:

```python
show(device="R1", ip="10.1.1.1")
```

---

## 9.9 Variable-Length Arguments — `*args`

Used when you don’t know how many arguments will be passed.  <br>

```python
def add_all(*args):
    return sum(args)

print(add_all(1, 2, 3, 4))
```

---

## ### Network Example — Multiple Commands

```python
def send_commands(*cmds):
    for c in cmds:
        print(f"Running: {c}")

send_commands("show ip int brief", "show version", "show run")
```

---

## 9.10 Keyword Variable-Length Arguments — `**kwargs`

Useful for dictionaries.  <br>

```python
def print_dict(**kwargs):
    for k, v in kwargs.items():
        print(k, v)

print_dict(host="R1", ip="10.1.1.1")
```

---

## ### Network Example — Device Dictionary

```python
def connect_device(**device):
    print(device)

connect_device(host="R1", ip="10.1.1.1", os="iosxe")
```

---

## 9.11 Returning Multiple Values

Python can return tuples:  <br>

```python
def get_values():
    return 10, 20, 30

a, b, c = get_values()
print(a, b, c)
```

---

## ### Network Example — Interface Details

```python
def get_int_details():
    return "Gig0/1", "up", "up"

name, line, protocol = get_int_details()
```

---

## 9.12 Docstrings — Documenting Functions

```python
def show_version():
    """Returns device version"""
    return "17.3"
```

Accessible with:  <br>

```python
print(show_version.__doc__)
```

---

## 9.13 Function Scope (Local vs Global)

### Local variable:

```python
def test():
    x = 10
    print(x)
```

### Global variable:

```python
x = 50

def test():
    print(x)
```

---

## 9.14 ASCII Diagram — Function Execution Flow

```
              call function
                    |
                    v
+----------------------------------------+
| def function():                        |
|    step1                               |
|    step2                               |
|    return result                       |
+----------------------------------------+
                    |
                    v
                result returned
```

---

## 9.15 Network Automation Best Practices for Functions

✔ One function = one task  <br>
✔ Always return data instead of printing  <br>
✔ Use meaningful names (`run_show`, `backup_config`)  <br>
✔ Use `**device` for Netmiko dictionaries  <br>
✔ Avoid global variables  <br>

---

## 9.16 Real Network Example — Function with Netmiko

```python
from netmiko import ConnectHandler

def run_show(device, command):
    with ConnectHandler(**device) as conn:
        return conn.send_command(command)

device = {
    "device_type": "cisco_ios",
    "host": "10.1.1.1",
    "username": "admin",
    "password": "admin123"
}

output = run_show(device, "show ip int brief")
print(output)
```

---

## 9.17 Real Network Example — Backup Config Function

```python
def backup_config(device, filename):
    with ConnectHandler(**device) as conn:
        config = conn.send_command("show run")

    with open(filename, "w") as f:
        f.write(config)

backup_config(device, "R1_config.txt")
```

---

## 9.18 Chapter Summary

You learned:  <br>

✔ Function creation  <br>
✔ Parameters & return values  <br>
✔ `*args` and `**kwargs`  <br>
✔ Scope & docstrings  <br>
✔ Networking use-cases  <br>
✔ Functions in Netmiko automation  <br>

Functions are ESSENTIAL — they form the building blocks for scripts, classes, Nornir tasks, and automation workflows.  <br>

---

# 🎉 **Chapter 9 Completed**

---

# ▶️ Ready for Chapter 10?

Next:  <br>

# Chapter 10 — Python Script Structure (imports → functions → classes → main → `__main__`)

Reply: **“Next chapter”** and we continue.  <br>

<div style="page-break-after: always;"></div>

# 📘 **Chapter 10 — Python Script Structure (Imports → Functions → Classes → main() → `__main__`)**

*Markdown + ASCII diagrams + networking examples + best practices*

This is one of the MOST IMPORTANT chapters in the entire course.  <br>

Python scripts used for automation must follow a **clean, organized structure**.  <br>

Without structure:  <br>

* Scripts become messy
* Functions become hard to reuse
* Debugging becomes painful
* Scaling automation becomes impossible

This chapter teaches the **professional way** to structure a Python automation script.  <br>

---
# Chapter 10 — Python Script Structure

A Python script should follow this **standard layout**:  <br>

```
1. Import modules
2. Define global constants
3. Define functions
4. Define classes
5. Define main()
6. Entry point: if __name__ == "__main__": main()
```

Let’s go step-by-step.  <br>

---
## 10.1 Imports (Step 1)

Imports bring external libraries into your script.  <br>

Examples:  <br>

```python
import os
import json
from netmiko import ConnectHandler
```

---
## 10.2 Constants (Step 2)

Uppercase variables that won't change.  <br>

```python
TIMEOUT = 10
LOG_FILE = "automation.log"
```

---
## 10.3 Functions (Step 3)

Reusable blocks of logic.  <br>

Example:  <br>

```python
def get_interfaces(device):
    with ConnectHandler(**device) as conn:
        return conn.send_command("show ip int brief")
```

---
## 10.4 Classes (Step 4)

Classes allow OOP (Object-Oriented Programming).  <br>

Example simple class:  <br>

```python
class NetworkDevice:
    def __init__(self, name, ip):
        self.name = name
        self.ip = ip
```

Classes will be fully explained in next chapter.  <br>

---
## 10.5 The main() Function (Step 5)

ALL real automation scripts should have a main function.  <br>

Example:  <br>

```python
def main():
    print("Starting automation...")
```

Why use main?  <br>

✔ Clear script flow  <br>
✔ Easy debugging  <br>
✔ Functions/classes stay logically separated  <br>
✔ Other Python programs can import your script  <br>

---
## 10.6 Execution Entry Point (Step 6)

This is where the script starts running:  <br>

```python
if __name__ == "__main__":
    main()
```

Meaning:  <br>

* If script is RUN directly → call main()
* If script is IMPORTED → do NOT run main()

---
## 10.7 ASCII Diagram — Script Structure

```
+-------------------------------------------+
|                my_script.py               |
+-------------------------------------------+
| 1. import modules                         |
| 2. define constants                       |
| 3. define functions                       |
| 4. define classes                         |
| 5. define main()                          |
| 6. if __name__ == "__main__": main()      |
+-------------------------------------------+
```

---
## 10.8 Full Example — Professional Automation Script Structure

This script:  <br>

* Reads device list
* Connects to devices
* Runs a command
* Saves output

---

### `automation.py`

```python
#!/usr/bin/env python3

# 1. Import modules
import json
from netmiko import ConnectHandler
from getpass import getpass


# 2. Constants
COMMAND = "show ip interface brief"


# 3. Functions
def load_devices(file):
    """Load device list from JSON file."""
    with open(file) as f:
        return json.load(f)


def run_command(device, command):
    """Run show command on a single device."""
    with ConnectHandler(**device) as conn:
        return conn.send_command(command)


def save_output(hostname, output):
    """Save command output to file."""
    filename = f"{hostname}_output.txt"
    with open(filename, "w") as f:
        f.write(output)
    print(f"Saved: {filename}")


# 4. Classes (optional)
class Device:
    def __init__(self, hostname, ip, os):
        self.hostname = hostname
        self.ip = ip
        self.os = os


# 5. main() function
def main():
    print("=== Network Automation Script ===")
    devices = load_devices("devices.json")

    username = input("Username: ")
    password = getpass("Password: ")

    for dev in devices:
        dev["username"] = username
        dev["password"] = password

        output = run_command(dev, COMMAND)
        save_output(dev["host"], output)


# 6. Script entry point
if __name__ == "__main__":
    main()
```

---
## 10.9 Example devices.json

```json
[
  {
    "device_type": "cisco_ios",
    "host": "10.1.1.1"
  },
  {
    "device_type": "cisco_ios",
    "host": "10.1.1.2"
  }
]
```

---
## 10.10 Why This Structure Is Perfect for Network Automation

✔ Easy to maintain  <br>
✔ Easy to test  <br>
✔ Easy to expand  <br>
✔ Easy to reuse functions  <br>
✔ Makes scripts production-ready  <br>
✔ Works well with Nornir, Netmiko, RESTCONF, NETCONF  <br>

---
## 10.11 ASCII Diagram — Execution Flow

```
Start
  |
  v
Imports → Constants → Functions → Classes
  |
  v
Call main()
  |
  v
Load devices
  |
  v
Connect → Run Command → Save Output
  |
  v
Finish
```

---
## 10.12 Chapter Summary

You now know:  <br>

✔ How to structure Python scripts professionally  <br>
✔ How `import`, functions, classes, and main() fit together  <br>
✔ Why `if __name__ == "__main__":` is CRITICAL  <br>
✔ How to organize Netmiko scripts  <br>
✔ How real automation scripts flow  <br>

This knowledge prepares you for the next chapter: **Object-Oriented Programming (OOP)**.  <br>

---

# 🎉 **Chapter 10 Completed**

---

# ▶️ Ready for Chapter 11?

Next chapter:  <br>

# Chapter 11 — Classes & Object-Oriented Programming (Python OOP) for Network Engineers

Includes:  <br>

* Classes
* Objects
* Methods
* Attributes
* Constructors
* Inheritance
* OOP network automation examples
* ASCII diagrams

Reply: **“Next chapter”** to continue.  <br>

<div style="page-break-after: always;"></div>

# 📘 **Chapter 11 — Classes & Object-Oriented Programming (OOP) for Network Engineers**

*Markdown + ASCII diagrams + deep explanations + network automation examples*

Object-Oriented Programming (OOP) is extremely powerful for network automation when creating:  <br>

✔ Device objects  <br>
✔ Connection managers  <br>
✔ Inventory models  <br>
✔ API wrappers  <br>
✔ Reusable libraries  <br>

In professional automation frameworks (like Nornir, Netmiko, Scrapli), **everything is based on classes**.  <br>

This chapter makes OOP simple and practical.  <br>

---

## Chapter 11 — Classes & Object-Oriented Programming

---

### 11.1 What Is a Class?

A **class** is a blueprint for creating objects.  <br>

Example:  <br>

```python
class NetworkDevice:
    pass
```

It defines how a device should look and behave.  <br>

---

### 11.2 What Is an Object?

An **object** is an instance of a class.  <br>

```
Class → Blueprint
Object → Actual device created
```

Example:  <br>

```python
r1 = NetworkDevice()
```

---

### 11.3 What Is a Method?

A **method** is a function inside a class.  <br>

Example:  <br>

```python
class NetworkDevice:
    def show(self):
        print("Showing info...")
```

---

### 11.4 Attributes

Attributes store data inside the class (variables inside an object).  <br>

Example:  <br>

```python
class NetworkDevice:
    def __init__(self, name, ip):
        self.name = name
        self.ip = ip
```

---

## 11.5 The `__init__()` Constructor (VERY IMPORTANT)

`__init__()` runs automatically when creating an object.  <br>

Example:  <br>

```python
class NetworkDevice:
    def __init__(self, name, ip):
        self.name = name
        self.ip = ip
```

Create object:  <br>

```python
r1 = NetworkDevice("R1", "10.1.1.1")
```

---

### 11.6 Example: Basic Device Class

```python
class NetworkDevice:
    def __init__(self, hostname, ip):
        self.hostname = hostname
        self.ip = ip

    def info(self):
        print(f"{self.hostname} → {self.ip}")
```

Usage:  <br>

```python
d1 = NetworkDevice("R1", "10.1.1.1")
d1.info()
```

---

### 11.7 ASCII Diagram — Object Creation

```
Class: NetworkDevice
   |
   v
 r1 = NetworkDevice("R1", "10.1.1.1")
   |
   v
Object r1 created with:
   hostname = "R1"
   ip = "10.1.1.1"
```

---

### 11.8 Instance Methods vs Class Methods

### Instance method → works with object

```python
def show(self):
    print(self.hostname)
```

### Class method → works with class

```python
@classmethod
def from_dict(cls, data):
    return cls(data["name"], data["ip"])
```

---

### 11.9 Example — Create Device from Dictionary

```python
device_dict = {"hostname": "R2", "ip": "10.1.1.2"}

class NetworkDevice:
    def __init__(self, hostname, ip):
        self.hostname = hostname
        self.ip = ip

    @classmethod
    def from_dict(cls, d):
        return cls(d["hostname"], d["ip"])

d2 = NetworkDevice.from_dict(device_dict)
```

---

### 11.10 Adding Behavior (Methods)

```python
class NetworkDevice:
    def __init__(self, name, ip):
        self.name = name
        self.ip = ip

    def ping(self):
        print(f"Pinging {self.ip}")
```

Usage:  <br>

```python
d1 = NetworkDevice("R1", "10.1.1.1")
d1.ping()
```

---

### 11.11 OOP With Netmiko (Very Useful)

### Build a reusable automation class

```python
from netmiko import ConnectHandler

class Device:
    def __init__(self, host, username, password):
        self.conn = ConnectHandler(
            device_type="cisco_ios",
            host=host,
            username=username,
            password=password
        )

    def run_cmd(self, cmd):
        return self.conn.send_command(cmd)

    def close(self):
        self.conn.disconnect()
```

Usage:  <br>

```python
r1 = Device("10.1.1.1", "admin", "admin123")
print(r1.run_cmd("show ip int brief"))
r1.close()
```

---

### 11.12 Encapsulation (Hiding Internal Details)

Hide details inside the class.  <br>

```python
class Router:
    def __init__(self, ip):
        self._secret = "12345"   # protected attribute
```

---

### 11.13 Inheritance — One Class Extends Another

Used when devices share common behavior.  <br>

```
Parent Class → Device
Child Class → CiscoDevice, JuniperDevice
```

---

### 11.14 Inheritance Example

```python
class Device:
    def connect(self):
        print("Connected")

class Cisco(Device):
    def ios_version(self):
        print("Cisco IOS-XE")
```

Usage:  <br>

```python
d = Cisco()
d.connect()
d.ios_version()
```

---

### 11.15 Multiple Inheritance (Advanced)

A class can inherit from multiple classes.  <br>

```python
class A: pass
class B: pass

class C(A, B): pass
```

---

### 11.16 Overriding Methods

Child class replaces parent method.  <br>

```python
class Device:
    def connect(self):
        print("Connecting to generic device")

class Cisco(Device):
    def connect(self):
        print("Connecting to Cisco device")
```

Usage:  <br>

```python
Cisco().connect()
```

---

### 11.17 Polymorphism

Same method name, different behavior.  <br>

```python
for dev in [Cisco(), Juniper()]:
    dev.connect()    # different implementations
```

---

### 11.18 Special Methods (Magic / Dunder Methods)

Examples:  <br>

| Method     | Description              |
| ---------- | ------------------------ |
| `__init__` | constructor              |
| `__str__`  | string representation    |
| `__repr__` | debugging representation |
| `__eq__`   | equals ==                |

---

##### Example: `__str__` for NetworkDevice

```python
class NetworkDevice:
    def __str__(self):
        return f"Device({self.hostname}, {self.ip})"
```

Usage:  <br>

```python
print(d1)
```

---

### 11.19 ASCII Diagram — OOP in Network Automation

```
+--------------------------+
|      Device (parent)     |
+--------------------------+
| attributes: ip, vendor   |
| methods: connect(), run()|
+-----------+--------------+
            |
            v
+-----------+---------------+
|   CiscoDevice (child)     |
+---------------------------+
| overrides connect()       |
| adds ios_version()        |
+---------------------------+
```

---

### 11.20 Real-World Example — OOP for Automation Framework

```python
class BaseDevice:
    def __init__(self, host, username, password):
        self.host = host
        self.username = username
        self.password = password

    def connect(self):
        raise NotImplementedError


class CiscoDevice(BaseDevice):
    def connect(self):
        print(f"Connecting to Cisco device {self.host}")


class JuniperDevice(BaseDevice):
    def connect(self):
        print(f"Connecting to Juniper device {self.host}")
```

Usage:  <br>

```python
devices = [
    CiscoDevice("10.1.1.1", "admin", "pass"),
    JuniperDevice("10.1.1.2", "admin", "pass")
]

for dev in devices:
    dev.connect()
```

---

### 11.21 How Nornir, Netmiko, and Scrapli Use OOP

### Netmiko:

* Each vendor is a **class**
* Every device object stores connection attributes
* Methods execute commands

### Nornir:

* Inventory objects
* Task objects
* Runner classes

### Scrapli:

* Transport classes (SSH/HTTP)
* Device classes (IOS, NXOS, Junos)

Understanding OOP makes these frameworks easy.  <br>

---

### 11.22 Chapter Summary

You learned:  <br>

✔ Classes  <br>
✔ Objects  <br>
✔ Methods  <br>
✔ Attributes  <br>
✔ Constructors  <br>
✔ Inheritance  <br>
✔ Polymorphism  <br>
✔ Real-world Netmiko OOP examples  <br>
✔ How automation frameworks use OOP  <br>

OOP allows you to:  <br>

* Build cleaner automation scripts
* Reuse code
* Create scalable automation tools
* Understand frameworks like Nornir and Scrapli

---

# 🎉 **Chapter 11 Completed**

---

# ▶️ Ready for Chapter 12?

Next:  <br>

# Chapter 12 — Error & Exception Handling (try/except) for Network Automation

Includes:  <br>

* try/except
* Exception types
* Logging errors
* Network timeout handling
* Netmiko, RESTCONF, and file errors

Reply: **“Next chapter”** to continue.  <br>

<div style="page-break-after: always;"></div>

# 📘 **Chapter 12 — Error & Exception Handling (try/except) for Network Automation**

*Markdown + ASCII diagrams + network automation error examples*

In real-world network automation, **errors happen constantly**:  <br>

✔ Device unreachable  <br>
✔ Wrong password  <br>
✔ SSH timeout  <br>
✔ File missing  <br>
✔ RESTCONF server not responding  <br>
✔ NETCONF RPC failure  <br>

Proper **exception handling** is CRITICAL for reliable automation.  <br>

This chapter teaches you how to handle errors safely and professionally.  <br>

---

# Chapter 12 — Error Handling in Python

---

# 12.1 What Are Exceptions?

Exceptions are errors that stop normal program execution.  <br>

Example:  <br>

```python
print(10 / 0)  # ZeroDivisionError
```

Example:  <br>

```python
open("missing.txt")  # FileNotFoundError
```

---

# 12.2 Basic try/except Syntax

```python
try:
    # risky code
except:
    # handle error
```

Example:  <br>

```python
try:
    print(10 / 0)
except:
    print("Error occurred!")
```

---

# 12.3 Catching Specific Exceptions

Better practice:  <br>

```python
try:
    print(10/0)
except ZeroDivisionError:
    print("Cannot divide by zero!")
```

---

# 12.4 Multiple Excepts

```python
try:
    x = int("abc")
except ValueError:
    print("Invalid number")
except TypeError:
    print("Type mismatch")
```

---

# 12.5 finally — Always Executes

Used for cleanup (disconnect sessions, close files).  <br>

```python
try:
    f = open("data.txt")
finally:
    f.close()
```

---

# 12.6 else — Executes Only When No Error

```python
try:
    print("No error")
except:
    print("Error")
else:
    print("Success!")
```

---

# 12.7 ASCII Diagram — try/except Flow

```
try:
   risky operation
      |
      +-------- success --------+
      |                         |
     except                   else
      |                         |
   handle error           run if no error
                             |
                          finally
                (runs no matter what)
```

---

# 12.8 Error Handling for Network Automation

Network automation often deals with unpredictable network conditions.  <br>

Here are common exceptions and how to handle them.  <br>

---

# 12.9 Netmiko Error Handling

Netmiko raises many useful exceptions:  <br>

### Common ones:

| Error                            | Meaning            |
| -------------------------------- | ------------------ |
| `NetMikoTimeoutException`        | Device unreachable |
| `NetMikoAuthenticationException` | Wrong credentials  |
| `SSHException`                   | SSH failure        |

### Example:

```python
from netmiko import ConnectHandler
from netmiko.ssh_exception import (
    NetMikoTimeoutException,
    NetMikoAuthenticationException
)

device = {
    "device_type": "cisco_ios",
    "host": "10.1.1.1",
    "username": "admin",
    "password": "admin123"
}

try:
    conn = ConnectHandler(**device)
    print(conn.send_command("show version"))
except NetMikoTimeoutException:
    print("Timeout: Device unreachable")
except NetMikoAuthenticationException:
    print("Authentication failed")
except Exception as e:
    print(f"General error: {e}")
```

---

# 12.10 RESTCONF Error Handling

Typical errors:  <br>

* Connection timeout
* SSL certificate error
* Invalid URL
* Unauthorized (401)

Example:  <br>

```python
import requests

try:
    r = requests.get(url, verify=False, timeout=5)
    r.raise_for_status()
except requests.exceptions.Timeout:
    print("RESTCONF server timeout")
except requests.exceptions.HTTPError as e:
    print("HTTP error:", e)
except requests.exceptions.ConnectionError:
    print("Connection failed")
```

---

# 12.11 NETCONF Error Handling

Using ncclient:  <br>

```python
from ncclient import manager
from ncclient.operations import RPCError

try:
    conn = manager.connect(...)

    result = conn.get_config(source="running")
except RPCError as e:
    print("NETCONF RPC error:", e)
except Exception as e:
    print("General NETCONF error:", e)
```

---

# 12.12 File Handling Errors

```python
try:
    with open("devices.txt") as f:
        data = f.read()
except FileNotFoundError:
    print("Inventory file missing")
```

---

# 12.13 Logging Errors to a File

Logging is critical for production scripts.  <br>

```python
import logging

logging.basicConfig(
    filename="error.log",
    level=logging.ERROR
)

try:
    10 / 0
except Exception as e:
    logging.error(f"Error: {e}")
```

---

# 12.14 Raising Your Own Error

```python
def check_ip(ip):
    if not ip.startswith("10."):
        raise ValueError("Invalid IP range")

check_ip("172.16.1.1")
```

---

# 12.15 Retry Logic (Very Important)

Retry commands if they fail.  <br>

```python
import time

def retry(func, attempts=3):
    for _ in range(attempts):
        try:
            return func()
        except:
            time.sleep(2)
    print("Failed after retries")
```

---

# 12.16 Network Example — Retry SSH Until Device Reboots

```python
for _ in range(5):
    try:
        conn = ConnectHandler(**device)
        break
    except:
        print("Retrying in 10 seconds...")
        time.sleep(10)
```

---

# 12.17 ASCII Diagram — Error Handling in Automation

```
Connect to device
     |
     v
[ Success? ]
  /     \
Yes     No
 |       |
Run     try again? ---> No → Log Error
command          |
                 v
              retry
```

---

# 12.18 Best Practices for Error Handling

✔ Catch specific exceptions  <br>
✔ Use try/except around **network calls**  <br>
✔ Log errors instead of printing  <br>
✔ Retry failed operations  <br>
✔ Never crash the script due to one device  <br>
✔ Use `finally` to close connections  <br>

---

# 12.19 Chapter Summary

You learned:  <br>

✔ try/except/else/finally  <br>
✔ Handling Netmiko, RESTCONF, NETCONF errors  <br>
✔ File handling errors  <br>
✔ Logging  <br>
✔ Retry logic  <br>
✔ Best practices for stable automation  <br>

This knowledge is CRUCIAL for building enterprise-grade automation.  <br>

---

# 🎉 **Chapter 12 Completed**

---

# ▶️ Ready for Chapter 13?

Next chapter:  <br>

# Chapter 13 — Netmiko for Network Automation (SSH, show commands, configs)

Reply: **“Next chapter”** to continue.  <br>

<div style="page-break-after: always;"></div>

# 📘 **Chapter 13 — Netmiko for Network Automation (SSH, Show Commands, Config Push)**

*Markdown + ASCII diagrams + real network examples + beginner-friendly*

**Netmiko** is the MOST commonly used Python library for CLI-based network automation.
It simplifies SSH connections to routers, switches, firewalls, and more.  <br>

This chapter teaches:  <br>

✔ Installing Netmiko  <br>
✔ Connecting to devices  <br>
✔ Running show commands  <br>
✔ Running configuration commands  <br>
✔ Saving backups  <br>
✔ Handling errors  <br>
✔ Real-world use cases  <br>

---

# Chapter 13 — Netmiko

---

# 13.1 What Is Netmiko?

Netmiko is a Python library built on top of Paramiko that simplifies SSH automation.  <br>

### Why network engineers love Netmiko?

✔ Easy to connect  <br>
✔ Vendor-neutral  <br>
✔ Handles SSH quirks  <br>
✔ Supports 50+ vendor platforms  <br>
✔ Makes command execution simple  <br>
✔ Stable and well-supported  <br>

---

# 13.2 Supported Vendors (Examples)

* Cisco IOS / IOS-XE / NX-OS / ASA
* Juniper Junos
* Arista EOS
* HP, Dell, Huawei, Nokia
* Palo Alto
* Ciena, Extreme

Full list here: [https://github.com/ktbyers/netmiko](https://github.com/ktbyers/netmiko)  <br>

---

# 13.3 Installing Netmiko

```bash
pip install netmiko
```

---

# 13.4 Basic Netmiko Connection

```python
from netmiko import ConnectHandler

device = {
    "device_type": "cisco_ios",
    "host": "10.1.1.1",
    "username": "admin",
    "password": "admin123"
}

conn = ConnectHandler(**device)
output = conn.send_command("show version")
print(output)
conn.disconnect()
```

---

# 13.5 Using `with` (Best Practice)

Automatically closes connection:  <br>

```python
with ConnectHandler(**device) as conn:
    output = conn.send_command("show ip int brief")
    print(output)
```

---

# 13.6 ASCII Diagram — Netmiko Flow

```
Python Script
     |
     v
ConnectHandler(**device)
     |
     v
SSH Connection Established
     |
     v
send_command("show ip int brief")
     |
     v
Receive Output → Print/Save
```

---

# 13.7 Running Show Commands

```python
output = conn.send_command("show run")
print(output)
```

---

# 13.8 Running Multiple Show Commands

```python
commands = ["show version", "show ip int brief", "show run | i hostname"]

for cmd in commands:
    print(f"Running: {cmd}")
    print(conn.send_command(cmd))
```

---

# 13.9 Send Configuration Commands

Use `send_config_set()`:  <br>

```python
config_commands = [
    "interface loopback 10",
    "ip address 10.10.10.1 255.255.255.0",
]

conn.send_config_set(config_commands)
```

---

# 13.10 Entering Configuration Mode Automatically

Netmiko handles it:  <br>

```
send_config_set() → enters config mode → runs commands → exits config mode
```

---

# 13.11 Save (Write) Configuration

```python
conn.save_config()
```

If the platform does not support this method, you can send:  <br>

```python
conn.send_command("write memory")
```

---

# 13.12 Backup Running Configuration

```python
output = conn.send_command("show run")

with open("R1_backup.txt", "w") as f:
    f.write(output)
```

---

# 13.13 Running Commands on Multiple Devices

```python
devices = [
    {"device_type": "cisco_ios", "host": "10.1.1.1", "username": "admin", "password": "admin"},
    {"device_type": "cisco_ios", "host": "10.1.1.2", "username": "admin", "password": "admin"}
]

for dev in devices:
    with ConnectHandler(**dev) as conn:
        print(conn.send_command("show ip int brief"))
```

---

# 13.14 Enable Mode

If your device uses `enable` mode:  <br>

```python
device = {
    "device_type": "cisco_ios",
    "host": "10.1.1.1",
    "username": "admin",
    "password": "admin123",
    "secret": "enablepass"
}

conn = ConnectHandler(**device)
conn.enable()
```

---

# 13.15 Delay Factor (for slow devices)

```python
conn.send_command("show run", delay_factor=2)
```

---

# 13.16 Error Handling with Netmiko

```python
from netmiko.ssh_exception import (
    NetMikoTimeoutException,
    NetMikoAuthenticationException
)

try:
    conn = ConnectHandler(**device)
except NetMikoTimeoutException:
    print("Device unreachable")
except NetMikoAuthenticationException:
    print("Wrong username/password")
```

---

# 13.17 Real-World Use Case — IP Reachability Check

```python
def check_ip(ip):
    device = {
        "device_type": "cisco_ios",
        "host": ip,
        "username": "admin",
        "password": "admin123"
    }

    try:
        with ConnectHandler(**device) as conn:
            print(f"{ip}: OK")
    except:
        print(f"{ip}: FAILED")
```

---

# 13.18 Real-World Use Case — Create VLAN

```python
def create_vlan(conn, vlan):
    cmds = [
        f"vlan {vlan}",
        f"name VLAN_{vlan}"
    ]
    conn.send_config_set(cmds)
```

---

# 13.19 Real-World Use Case — Configure Interface

```python
def configure_interface(conn, name, desc, ip):
    cmds = [
        f"interface {name}",
        f"description {desc}",
        f"ip address {ip} 255.255.255.0"
    ]
    conn.send_config_set(cmds)
```

---

# 13.20 Real-World Use Case — Bulk Backup Script

```python
for dev in devices:
    with ConnectHandler(**dev) as conn:
        output = conn.send_command("show run")
    with open(f"{dev['host']}_backup.txt", "w") as f:
        f.write(output)
```

---

# 13.21 ASCII Diagram — Multi-Device Automation

```
Device List
   |
   +---> Device #1 → Connect → Commands → Save Output
   |
   +---> Device #2 → Connect → Commands → Save Output
   |
   +---> Device #3 → Connect → Commands → Save Output
```

This is the basis of multithreading (covered later).  <br>

---

# 13.22 Best Practices for Netmiko Automation

✔ Use `with ConnectHandler()`  <br>
✔ Use dictionaries for devices  <br>
✔ Always handle exceptions  <br>
✔ Use separate functions for commands  <br>
✔ Save backup configs  <br>
✔ Use `secret` for enable mode  <br>
✔ Use logging for large deployments  <br>

---

# 13.23 Chapter Summary

You learned:  <br>

✔ Netmiko basics  <br>
✔ Connect, show commands, config push  <br>
✔ Handle errors  <br>
✔ Work with lists of devices  <br>
✔ Real-world use cases (backup, VLANs, interfaces)  <br>
✔ Best practices  <br>

Netmiko is your foundation before moving to RESTCONF, NETCONF, NAPALM, and Nornir.  <br>

---

# 🎉 **Chapter 13 Completed**

---

# ▶️ Ready for Chapter 14?

Next chapter:  <br>

# Chapter 14 — Model-Driven Automation: NETCONF & RESTCONF

Reply: **“Next chapter”** to continue.  <br>

<div style="page-break-after: always;"></div>
# 📘 **Chapter 14 — Model-Driven Automation: NETCONF & RESTCONF**

*Markdown + ASCII diagrams + practical examples + beginner-friendly*

Model-driven automation is the **future of network configuration**.  <br>
Instead of sending CLI commands, devices expose **API-based configuration interfaces** using **standard data models (YANG)**.  <br>

This chapter covers:  <br>

* What is model-driven automation?
* YANG recap
* NETCONF with ncclient
* RESTCONF with requests
* GET/POST/PATCH/DELETE
* Real Cisco examples
* Parsing XML/JSON
* ASCII diagrams

---

# Chapter 14 — Model-Driven Automation (NETCONF & RESTCONF)

---

# 14.1 What Is Model-Driven Automation?

Traditional automation uses CLI:  <br>

```
send_command("show ip int brief")
send_config_set(...)
```

Model-driven automation uses APIs:  <br>

✔ Structured data (XML/JSON)  <br>
✔ YANG models  <br>
✔ Vendor-neutral  <br>
✔ Transaction-based  <br>
✔ Safer updates  <br>

---

# 14.2 RESTCONF vs NETCONF

| Feature     | RESTCONF                  | NETCONF                        |
| ----------- | ------------------------- | ------------------------------ |
| Transport   | HTTPS                     | SSH                            |
| Data format | JSON or XML               | XML                            |
| Ideal for   | Monitoring, simple config | Deep config, RPC, transactions |
| API style   | REST                      | RPC                            |
| Based on    | REST + YANG               | YANG fully                     |

---

# 14.3 YANG Recap

YANG defines:  <br>

✔ what data exists  <br>
✔ data types  <br>
✔ containers/lists/leaves  <br>
✔ API structure  <br>

Example YANG tree (Cisco interface):  <br>

```
interfaces
 └── interface
       ├── name (string)
       ├── enabled (boolean)
       └── ipv4
            └── address
                  ├── ip
                  └── netmask
```

Both RESTCONF and NETCONF use this structure.  <br>

---

# Part A — NETCONF

---

# 14.4 What Is NETCONF?

NETCONF = Network Configuration Protocol  <br>
Runs over **SSH port 830**  <br>

It uses:  <br>

✔ YANG data models  <br>
✔ XML for data  <br>
✔ RPC operations  <br>

---

# 14.5 Install ncclient

```bash
pip install ncclient
```

---

# 14.6 NETCONF Basic Connection

```python
from ncclient import manager

conn = manager.connect(
    host="10.1.1.1",
    port=830,
    username="admin",
    password="admin",
    hostkey_verify=False
)

print("Connected!")
```

---

# 14.7 NETCONF Get Running Config

```python
config = conn.get_config(source="running")
print(config.xml)
```

Returns **XML result**.  <br>

---

# 14.8 Filtering Data (Very Important)

NETCONF allows filtering only the part you want.  <br>

Example filter:  <br>

```xml
<filter>
  <interfaces xmlns="urn:ietf:params:xml:ns:yang:ietf-interfaces"/>
</filter>
```

Python:  <br>

```python
filter = """
<filter>
  <interfaces xmlns="urn:ietf:params:xml:ns:yang:ietf-interfaces"/>
</filter>
"""

result = conn.get(filter=filter)
print(result.xml)
```

---

# 14.9 NETCONF Edit Config (Push Configuration)

Example: Enable interface Loopback10  <br>

```python
config = """
<config>
  <interfaces xmlns="urn:ietf:params:xml:ns:yang:ietf-interfaces">
    <interface>
      <name>Loopback10</name>
      <enabled>true</enabled>
      <ipv4>
        <address>
          <ip>10.10.10.1</ip>
          <netmask>255.255.255.0</netmask>
        </address>
      </ipv4>
    </interface>
  </interfaces>
</config>
"""

conn.edit_config(target="running", config=config)
```

---

# 14.10 ASCII Diagram — NETCONF Flow

```
Python → ncclient → SSH (port 830)
      → RPC (XML requests)
      → Device (YANG models)
      ← RPC Reply (XML response)
```

---

# Part B — RESTCONF

---

# 14.11 What Is RESTCONF?

RESTCONF = REST API + YANG  <br>
Runs over **HTTPS port 443**  <br>

Uses:  <br>

✔ REST methods (GET, POST, PUT, PATCH, DELETE)  <br>
✔ JSON or XML  <br>

---

# 14.12 Enable RESTCONF on Cisco IOS-XE

On router:  <br>

```
conf t
restconf
netconf-yang
```

RESTCONF endpoint example:  <br>

```
https://<device-ip>/restconf/data/ietf-interfaces:interfaces
```

---

# 14.13 Python RESTCONF GET Request

```python
import requests
import json

url = "https://10.1.1.1/restconf/data/ietf-interfaces:interfaces"

headers = {
    "Accept": "application/yang-data+json"
}

response = requests.get(url, auth=("admin", "admin"), headers=headers, verify=False)

data = response.json()

print(json.dumps(data, indent=2))
```

---

# 14.14 RESTCONF GET Interface IP

```python
ip = data["ietf-interfaces:interfaces"]["interface"][0]["ipv4"]["address"][0]["ip"]
print(ip)
```

---

# 14.15 RESTCONF PATCH (Modify Existing Config)

```python
payload = {
  "ietf-interfaces:interface": {
    "name": "Loopback20",
    "enabled": True,
    "ipv4": {
      "address": [
        { "ip": "20.20.20.1", "netmask": "255.255.255.0" }
      ]
    }
  }
}

requests.patch(
    url + "/interface=Loopback20",
    json=payload,
    auth=("admin", "admin"),
    headers={"Content-Type": "application/yang-data+json"},
    verify=False
)
```

---

# 14.16 RESTCONF POST (Create New Config)

```python
requests.post(
    url,
    json=payload,
    auth=("admin", "admin"),
    headers={"Content-Type": "application/yang-data+json"},
    verify=False
)
```

---

# 14.17 RESTCONF DELETE

```python
requests.delete(
    url + "/interface=Loopback20",
    auth=("admin", "admin"),
    headers={"Accept": "application/yang-data+json"},
    verify=False
)
```

---

# 14.18 ASCII Diagram — RESTCONF Flow

```
Python
  |
  v
HTTPS Request (GET/POST/PATCH/DELETE)
  |
  v
RESTCONF Endpoint
  |
  v
Device returns JSON → Python parses
```

---

# 14.19 Comparison: NETCONF vs RESTCONF

```
+-----------------------+-----------------------+
| NETCONF               | RESTCONF              |
+-----------------------+-----------------------+
| SSH                   | HTTPS                 |
| XML                   | JSON / XML            |
| RPC operations        | CRUD operations       |
| Best for full config  | Best for monitoring   |
| Transaction-based     | Lighter               |
+-----------------------+-----------------------+
```

---

# 14.20 Real-World Use Cases

### ✔ NETCONF

* Configure interfaces
* Configure routing
* Edit BGP
* Replace large configuration blocks
* Rollback supported

### ✔ RESTCONF

* Retrieve operational data
* Get interface statistics
* Get telemetry
* Lightweight config changes

---

# 14.21 Best Practices

✔ Always disable SSL warnings (for learning)  <br>
✔ Validate schemas if possible  <br>
✔ Use YANG tree to find data paths  <br>
✔ Use JSON for RESTCONF (simpler)  <br>
✔ Use XML filters for NETCONF  <br>

---

# 14.22 Chapter Summary

You learned:  <br>

✔ YANG-based automation  <br>
✔ NETCONF with ncclient  <br>
✔ RESTCONF with requests  <br>
✔ How to GET/POST/PATCH/DELETE config  <br>
✔ Parsing JSON and XML  <br>
✔ Real Cisco API workflows  <br>
✔ ASCII diagrams  <br>

This chapter unlocks true modern automation power.  <br>

---

# 🎉 **Chapter 14 Completed**

---

# ▶️ Ready for Chapter 15?

Next chapter:  <br>

# Chapter 15 — Jinja2 Templates for Network Configuration

(Referenced in your provided URLs)  <br>

Reply: **“Next chapter”** to continue.  <br>
<div style="page-break-after: always;"></div>

# 📘 **Chapter 15 — Jinja2 Templates for Network Configuration**

*Markdown + ASCII diagrams + examples + beginner-friendly + based on your reference URLs*

Jinja2 is one of the MOST important tools in network automation.  <br>

It allows us to generate **dynamic configuration templates** using variables, loops, and logic — similar to Ansible templates but directly in Python.  <br>

This chapter explains:  <br>

✔ What Jinja2 is  <br>
✔ Why network engineers use it  <br>
✔ Template syntax  <br>
✔ Variables, loops, conditions  <br>
✔ Render templates in Python  <br>
✔ Build router configs dynamically  <br>
✔ Real-world automation examples  <br>

---

# Chapter 15 — Jinja2 for Network Configuration

---

# 15.1 What Is Jinja2?

Jinja2 is a **template engine** that takes:  <br>

1. A **template** (text with placeholders)  <br>
2. A **data dictionary** (variables)  <br>

It produces:  <br>

✔ Complete configuration text  <br>
✔ Ready to push using Netmiko, RESTCONF, or NETCONF  <br>

---

# 15.2 Why Use Jinja2?

Because manual config generation is:  <br>

* Slow
* Error-prone
* Not scalable

Instead, use Jinja2 to create **clean, reusable templates**.  <br>

#### Example Use Cases:

✔ Interface configurations  <br>
✔ BGP configs  <br>
✔ VLANs  <br>
✔ OSPF neighbors  <br>
✔ Router banners  <br>
✔ Nornir tasks  <br>

---

# 15.3 Install Jinja2

```bash
pip install jinja2
```

---

# 15.4 First Template Example

### Template file: `interface.j2`

```
interface {{ interface }}
 description Connected to {{ desc }}
 ip address {{ ip }} {{ mask }}
 no shutdown
```

### Python script to render:

```python
from jinja2 import Template

template = Template(open("interface.j2").read())

data = {
    "interface": "Gig0/1",
    "desc": "Uplink",
    "ip": "10.1.1.1",
    "mask": "255.255.255.0"
}

print(template.render(data))
```

### Output:

```
interface Gig0/1
 description Connected to Uplink
 ip address 10.1.1.1 255.255.255.0
 no shutdown
```

---

# 15.5 Variables in Jinja2

Syntax:  <br>

```
{{ variable }}
```

Example:  <br>

```
hostname {{ name }}
```

---

# 15.6 Conditions (if/else)

```
{% if ospf %}
 router ospf 1
  network {{ ospf.network }} {{ ospf.mask }} area 0
{% endif %}
```

Python:  <br>

```python
data = {
  "ospf": {
     "network": "10.1.1.0",
     "mask": "0.0.0.255"
  }
}
```

---

# 15.7 Loops (for)

Template:  <br>

```
{% for vlan in vlans %}
vlan {{ vlan.id }}
 name {{ vlan.name }}
{% endfor %}
```

Python data:  <br>

```python
VLANS = [
  {"id": 10, "name": "USERS"},
  {"id": 20, "name": "SERVERS"},
]
```

Output:  <br>

```
vlan 10
 name USERS
vlan 20
 name SERVERS
```

---

# 15.8 Comments

```
{# This is a comment #}
```

---

# 15.9 Include Another Template

```
{% include "banner.j2" %}
```

---

# 15.10 Filters

Filters modify variable values.  <br>

Example:  <br>

```
hostname {{ name | upper }}
```

Common filters:  <br>

| Filter    | Description   |
| --------- | ------------- |
| `upper`   | uppercase     |
| `lower`   | lowercase     |
| `replace` | replace text  |
| `default` | default value |

---

# 15.11 Full Example — Router Configuration Template

### Template: `router.j2`

```
hostname {{ hostname }}

{% for intf in interfaces %}
interface {{ intf.name }}
 description {{ intf.desc }}
 ip address {{ intf.ip }} {{ intf.mask }}
{% endfor %}

router bgp {{ bgp.asn }}
{% for n in bgp.neighbors %}
 neighbor {{ n.ip }} remote-as {{ n.asn }}
{% endfor %}
```

### Python code:

```python
from jinja2 import Environment, FileSystemLoader

env = Environment(loader=FileSystemLoader("templates"))
template = env.get_template("router.j2")

data = {
    "hostname": "R1",
    "interfaces": [
        {"name": "Gig0/0", "desc": "ISP", "ip": "10.0.0.1", "mask": "255.255.255.252"},
        {"name": "Gig0/1", "desc": "LAN", "ip": "10.1.1.1", "mask": "255.255.255.0"}
    ],
    "bgp": {
        "asn": 65001,
        "neighbors": [
            {"ip": "10.0.0.2", "asn": 65002},
            {"ip": "10.0.1.2", "asn": 65003}
        ]
    }
}

output = template.render(data)

print(output)
```

---

# 15.12 ASCII Diagram — Jinja2 Flow

```
Data (Python dict)
       |
       v
+--------------------+       +----------------------+
| Jinja2 Environment | ----> | Template (router.j2) |
+--------------------+       +----------------------+
       |                                  |
       +------------- RENDER -------------+
                       |
                       v
            Final Device Configuration
```

---

# 15.13 Use Jinja2 With Netmiko

```python
config = template.render(data)

with ConnectHandler(**device) as conn:
    print(conn.send_config_set(config.splitlines()))
```

---

# 15.14 Build Configurations for Multiple Devices

```python
for device in devices:
    config = template.render(device)
    with open(f"{device['hostname']}.cfg", "w") as f:
        f.write(config)
```

---

# 15.15 Jinja2 in Nornir (Preview)

Nornir uses Jinja2 templates:  <br>

```python
from nornir_jinja2.plugins.tasks import template_file

def generate_config(task):
    output = task.run(
        task=template_file,
        template="router.j2",
        path="./templates"
    )
```

---

# 15.16 Best Practices

✔ Use consistent folder structure  <br>
✔ Use templates for repeatable configs  <br>
✔ Keep logic minimal inside templates  <br>
✔ Use Python dictionaries from YAML inventories  <br>
✔ Validate rendered configs before pushing  <br>

---

# 15.17 Chapter Summary

You learned:  <br>

✔ What Jinja2 is  <br>
✔ How templates work  <br>
✔ Variables, loops, conditions  <br>
✔ Rendering templates in Python  <br>
✔ Generating full router configurations  <br>
✔ Pushing templates using Netmiko  <br>
✔ Real-world automation examples  <br>

This chapter is essential before learning Nornir.  <br>

---

# 🎉 **Chapter 15 Completed**

---

# ▶️ Ready for Chapter 16?

Next chapter:  <br>

# Chapter 16 — NAPALM (Multi-Vendor Network Automation Library)

Reply: **“Next chapter”** to continue.  <br>

<div style="page-break-after: always;"></div>

# 📘 **Chapter 16 — NAPALM (Multi-Vendor Network Automation Library)**

*Markdown + ASCII diagrams + beginner-friendly + real lab examples*

**NAPALM (Network Automation and Programmability Abstraction Layer with Multivendor support)**
is a Python library that provides a **unified API** for interacting with many different network vendors.  <br>

This means:  <br>

✔ Same Python code  <br>
✔ Works on Cisco, Arista, Juniper, Nokia, Huawei, etc  <br>
✔ Multi-vendor automation  <br>
✔ Consistent methods (`get_facts`, `load_merge_candidate`, `compare_config`, `commit_config`)  <br>

NAPALM is heavily used in real enterprise automation and frameworks like **StackStorm, Salt, Ansible plugins, and Nornir**.  <br>

---

# Chapter 16 — NAPALM (Multi-Vendor Automation)

---

# 16.1 Why Use NAPALM?

NAPALM solves one big problem:  <br>

**"Every vendor CLI and API is different."**

NAPALM gives a consistent interface:  <br>

```
driver = get_network_driver("ios")
device.get_facts()
device.load_merge_candidate()
device.commit_config()
```

This works across multiple vendors without code changes.  <br>

---

# 16.2 Install NAPALM

```bash
pip install napalm
```

For Cisco IOS:  <br>

```bash
pip install napalm-ios
```

---

# 16.3 Vendors Supported

* Cisco IOS, IOS-XE
* Cisco NX-OS
* Juniper Junos
* Arista EOS
* FortiOS
* Nokia SR Linux
* Huawei VRP
* And many others

---

# 16.4 NAPALM Driver Basics

Each vendor uses a specific driver:  <br>

```python
from napalm import get_network_driver

driver = get_network_driver("ios")
```

Other examples:  <br>

```
get_network_driver("eos")
get_network_driver("junos")
get_network_driver("nxos")
```

---

# 16.5 Connect to a Device

```python
from napalm import get_network_driver

driver = get_network_driver("ios")
device = driver(
    hostname="10.1.1.1",
    username="admin",
    password="admin123"
)

device.open()
print("Connected!")
```

---

# 16.6 Get Device Facts

```python
facts = device.get_facts()
print(facts)
```

Example output:  <br>

```python
{
  'hostname': 'R1',
  'fqdn': 'R1.lab.local',
  'os_version': 'IOS-XE 17.3',
  'uptime': 5400,
  'vendor': 'Cisco',
  'model': 'CSR1000v',
  'serial_number': '9ABC123',
  'interfaces': ['Gig0/0', 'Gig0/1']
}
```

---

# 16.7 Get Interfaces

```python
interfaces = device.get_interfaces()
print(interfaces)
```

---

# 16.8 Get IP Interface Information

```python
ip_info = device.get_interfaces_ip()
print(ip_info)
```

Example:  <br>

```python
{
  "GigabitEthernet1": {
    "ipv4": {
      "10.1.1.1": {
        "prefix_length": 24
      }
    }
  }
}
```

---

# 16.9 Get ARP Table

```python
arp = device.get_arp_table()
print(arp)
```

---

# 16.10 Get MAC Table

```python
macs = device.get_mac_address_table()
```

---

# 16.11 Configuration Management with NAPALM

NAPALM is excellent for:  <br>

✔ Pushing configuration safely  <br>
✔ Performing diffs  <br>
✔ Validating before deploying  <br>
✔ Transaction-based operations  <br>

---

# 16.12 Merge Configuration (Recommended)

### Step 1 — Load config from file

`loopback.cfg`:  <br>

```
interface Loopback10
 description TEST
 ip address 10.10.10.1 255.255.255.0
```

Python:  <br>

```python
device.load_merge_candidate(filename="loopback.cfg")
```

---

# 16.13 Compare Config Before Commit

```python
diff = device.compare_config()
print(diff)
```

Example output:  <br>

```
+interface Loopback10
+ description TEST
+ ip address 10.10.10.1 255.255.255.0
```

---

# 16.14 Commit the Configuration

```python
device.commit_config()
```

---

# 16.15 Rollback (in case of error)

```python
device.rollback()
```

---

# 16.16 Replace Running Configuration

Load the new full configuration:  <br>

```python
device.load_replace_candidate(filename="base_config.cfg")
device.commit_config()
```

This replaces the entire config, similar to:  <br>

```
copy startup-config running-config
```

---

# 16.17 ASCII Diagram — NAPALM Config Workflow

```
Load Candidate Config (from file)
              |
              v
       Compare Config (diff)
              |
     +--------+--------+
     |                 |
 Commit Changes     Rollback
```

---

# 16.18 Real-World Automation Examples

---

## Example 1 — Backup Running Config

```python
device.open()
config = device.get_config()["running"]

with open("R1_backup.cfg", "w") as f:
    f.write(config)

device.close()
```

---

## Example 2 — Bulk Get Facts for Multiple Devices

```python
devices = ["10.1.1.1", "10.1.1.2"]

for ip in devices:
    driver = get_network_driver("ios")
    dev = driver(hostname=ip, username="admin", password="admin")
    dev.open()
    print(dev.get_facts())
    dev.close()
```

---

## Example 3 — Bulk VLAN Deployment

`vlan_template.j2`:  <br>

```
vlan {{ id }}
 name {{ name }}
```

Python:  <br>

```python
config = template.render({"id": 10, "name": "USERS"})

with open("vlan.cfg", "w") as f:
    f.write(config)

device.load_merge_candidate("vlan.cfg")
device.commit_config()
```

---

## Example 4 — Validate Configuration Before Push

```python
device.load_merge_candidate(config="hostname R1")

diff = device.compare_config()
if diff:
    print(diff)
    device.commit_config()
else:
    print("No changes required.")
```

---

# 16.19 NAPALM — Strengths vs Limitations

### ✔ Strengths:

* Multi-vendor
* Unified API
* Config diff + commit
* Built-in rollback
* Very safe

### ✘ Limitations:

* Requires netconf/SSH backend
* Limited feature coverage on some platforms
* Not as fast as RESTCONF for telemetry

---

# 16.20 ASCII Diagram — Where NAPALM Fits in Automation

```
                    +---------------------+
                    |   Python Script     |
                    +---------------------+
                          |     ^
                          v     |
                    +---------------------+
                    |       NAPALM        |
                    +---------------------+
                    | get_facts()         |
                    | get_config()        |
                    | compare_config()    |
                    | commit_config()     |
                    +---------------------+
                          |
                          v
                  Multi-Vendor Devices
```

---

# 16.21 Chapter Summary

You learned:  <br>

✔ What NAPALM is  <br>
✔ Multi-vendor drivers  <br>
✔ Connect to devices  <br>
✔ Get facts, interface info, ARP, MAC tables  <br>
✔ Backup configurations  <br>
✔ Safe config push with diff + commit  <br>
✔ Rollback functionality  <br>
✔ Real examples for Cisco IOS/XE  <br>
✔ Merged/replace configs  <br>
✔ Template integration  <br>

NAPALM is a major tool for large-scale infrastructure.  <br>

---

# 🎉 **Chapter 16 Completed**

---

# ▶️ Ready for Chapter 17?

Next chapter:  <br>

# Chapter 17 — Multithreading & Parallel Execution for Network Automation

Includes:  <br>

* threading
* concurrent.futures
* parallel Netmiko
* speeding up multi-device scripts
* ASCII diagrams

Reply: **“Next chapter”** to continue.  <br>

<div style="page-break-after: always;"></div>

# 📘 **Chapter 17 — Multithreading & Parallel Execution for Network Automation**

*Markdown + ASCII diagrams + real Netmiko examples + beginner friendly*

Network automation often needs to run commands on **10, 100, or 1000+ devices**.  <br>
Running sequentially is *slow*:  <br>

```
Device 1 → 5 sec
Device 2 → 5 sec
Device 3 → 5 sec
...
Total time = number_of_devices × per_device_time
```

To speed this up, we use:  <br>

* **threading**
* **concurrent.futures.ThreadPoolExecutor** (recommended)
* **multiprocessing** (not needed for most network tasks)

This chapter focuses on safe, fast, and reliable parallel execution.  <br>

---

# Chapter 17 — Multithreading & Parallel Execution

---

# 17.1 Why Parallel Execution?

Example:  <br>

* 50 devices
* Each device takes 3 seconds per command
* Sequential: 150 seconds
* Parallel (10 threads): 15 seconds

This is CRITICAL for large networks.  <br>

---

# 17.2 Threading Basics

Python threads allow running tasks in parallel.  <br>

Simple example:  <br>

```python
import threading

def task():
    print("Working...")

t = threading.Thread(target=task)
t.start()
t.join()
```

---

# 17.3 Problems With Raw Threading

❌ Hard to manage  <br>
❌ Hard to collect results  <br>
❌ Hard to limit number of threads  <br>
❌ Hard to handle errors  <br>

Better approach:  <br>

# Use `concurrent.futures.ThreadPoolExecutor`

---

# 17.4 ThreadPoolExecutor — BEST PRACTICE

```python
from concurrent.futures import ThreadPoolExecutor

def task(name):
    print(f"Task {name} started")

with ThreadPoolExecutor(max_workers=10) as executor:
    executor.submit(task, "A")
    executor.submit(task, "B")
```

---

# 17.5 ASCII Diagram — ThreadPoolExecutor

```
ThreadPoolExecutor(max_workers=5)
          |
          +-- Thread 1 → device1
          +-- Thread 2 → device2
          +-- Thread 3 → device3
          +-- Thread 4 → device4
          +-- Thread 5 → device5
```

Tasks run simultaneously.  <br>

---

# 17.6 Parallel Netmiko Example (Core Example)

```python
from netmiko import ConnectHandler
from concurrent.futures import ThreadPoolExecutor

devices = [
    {"device_type": "cisco_ios", "host": "10.1.1.1", "username": "admin", "password": "admin"},
    {"device_type": "cisco_ios", "host": "10.1.1.2", "username": "admin", "password": "admin"},
    {"device_type": "cisco_ios", "host": "10.1.1.3", "username": "admin", "password": "admin"},
]

def run_show(device):
    with ConnectHandler(**device) as conn:
        return conn.host, conn.send_command("show ip int brief")

with ThreadPoolExecutor(max_workers=5) as executor:
    results = executor.map(run_show, devices)

for host, output in results:
    print(f"--- {host} ---")
    print(output)
```

---

# 17.7 Save Parallel Results to Files

```python
for host, output in results:
    with open(f"{host}_intbrief.txt", "w") as f:
        f.write(output)
```

---

# 17.8 Handle Errors in Threads

```python
def run_show(device):
    try:
        with ConnectHandler(**device) as conn:
            return conn.host, conn.send_command("show version")
    except Exception as e:
        return device["host"], f"ERROR: {e}"
```

---

# 17.9 Real-World Example — Ping Multiple Devices in Parallel

```python
import subprocess
from concurrent.futures import ThreadPoolExecutor

def ping(ip):
    result = subprocess.call(["ping", "-c", "1", ip])
    return ip, "UP" if result == 0 else "DOWN"

ips = ["10.1.1.1", "10.1.1.2", "10.1.1.3"]

with ThreadPoolExecutor(max_workers=10) as executor:
    results = executor.map(ping, ips)

for ip, status in results:
    print(ip, status)
```

---

# 17.10 Why Not multiprocessing?

Because:  <br>

✔ SSH I/O operations → threads are ideal  <br>
✔ CPU-heavy work → multiprocessing  <br>
✔ Networking tasks are I/O-heavy  <br>

Thus **ThreadPoolExecutor is the best choice**.  <br>

---

# 17.11 Parallel Config Deployment (Real Automation)

Deploying VLANs to 50 switches:  <br>

```python
def deploy_config(device):
    cmds = [
        "vlan 20",
        "name USERS"
    ]
    with ConnectHandler(**device) as conn:
        return conn.host, conn.send_config_set(cmds)
```

Parallel:  <br>

```python
with ThreadPoolExecutor(max_workers=20) as executor:
    results = executor.map(deploy_config, devices)
```

---

# 17.12 ASCII Diagram — Parallel Config Push

```
Devices (List)
   |
   v
ThreadPoolExecutor(max_workers=10)
   |
   +-- Thread 1 → config switch1
   +-- Thread 2 → config switch2
   +-- Thread 3 → config switch3
   +-- ...
   |
   v
Results collected and saved
```

---

# 17.13 Best Practices

✔ Use **ThreadPoolExecutor**  <br>
✔ Keep threads ≤ 50 (to avoid SSH overload)  <br>
✔ Always use error handling inside threads  <br>
✔ Return structured output (tuples/dicts)  <br>
✔ Do NOT print inside threads → collect results  <br>
✔ Close SSH sessions cleanly  <br>

---

# 17.14 Thread Safety Tips

Avoid global variables.  <br>

Use:  <br>

✔ return values  <br>
✔ thread-local storage  <br>

---

# 17.15 Chapter Summary

You learned:  <br>

✔ Why parallel execution is needed  <br>
✔ How threading works  <br>
✔ How ThreadPoolExecutor simplifies automation  <br>
✔ Parallel Netmiko scripts  <br>
✔ Parallel ping scripts  <br>
✔ Error handling in threads  <br>
✔ Parallel configuration deployment  <br>
✔ Best practices  <br>

This is a major step toward building **high-speed automation tools**.  <br>

---

# 🎉 **Chapter 17 Completed**

---

# ▶️ Ready for Chapter 18?

Next chapter:  <br>

# Chapter 18 — Nornir Automation Framework

Reply: **“Next chapter”** to continue.  <br>

<div style="page-break-after: always;"></div>

# 📘 **Chapter 18 — Nornir Automation Framework**

*Markdown + ASCII diagrams + practical network examples + beginner-friendly*

Nornir is a **powerful Python automation framework** designed specifically for **multi-device, parallel network automation**.  <br>

Unlike Ansible (YAML-driven),  <br>
**Nornir is Python-driven**, giving engineers full control.

✔ Inventory management  <br>
✔ Task orchestration  <br>
✔ Multithreading built-in  <br>
✔ Plugins for Netmiko, Napalm, Scrapli, Jinja2, and more  <br>
✔ Vendor-neutral  <br>

This chapter will teach you how to use Nornir effectively.  <br>

---

# Chapter 18 — Nornir Automation Framework

---

# 18.1 Why Use Nornir?

* Written entirely in Python
* Extremely fast
* Designed for network automation
* Works with any Python libraries (Netmiko, NAPALM, Jinja2, RESTCONF, etc.)
* Fully supports multithreading
* Uses YAML inventory (simple!)
* Excellent with templating (Jinja2)

---

# 18.2 Install Nornir

Latest:  <br>

```bash
pip install nornir
pip install nornir_utils
pip install nornir_jinja2
pip install nornir_netmiko
pip install nornir_napalm
```

---

# 18.3 Nornir Folder Structure

```
project/
│
├── inventory/
│     ├── hosts.yaml
│     ├── groups.yaml
│     └── defaults.yaml
│
├── tasks/
│     └── my_task.py
│
├── templates/
│     └── router.j2
│
└── script.py
```

---

# 18.4 Inventory Files (YAML)

---

## hosts.yaml

```yaml
R1:
  hostname: 10.1.1.1
  groups:
    - cisco
  data:
    location: HQ

R2:
  hostname: 10.1.1.2
  groups:
    - cisco
```

---

## groups.yaml

```yaml
cisco:
  platform: ios
  username: admin
  password: admin123
```

---

## defaults.yaml

```yaml
platform: ios
data:
  domain: lab.local
```

---

# 18.5 Initialize Nornir

```python
from nornir import InitNornir

nr = InitNornir(config_file="config.yaml")
```

---

# 18.6 config.yaml

```yaml
inventory:
  plugin: SimpleInventory
  options:
    host_file: "inventory/hosts.yaml"
    group_file: "inventory/groups.yaml"
    defaults_file: "inventory/defaults.yaml"

runner:
  plugin: threaded
  options:
    num_workers: 20
```

This enables **parallel execution**.  <br>

---

# 18.7 Nornir Tasks

Tasks are Python functions executed on each host.  <br>

Example:  <br>

```python
from nornir_utils.plugins.functions import print_result

def test_task(task):
    return "Hello from " + task.host.name

result = nr.run(task=test_task)
print_result(result)
```

---

# 18.8 Run Netmiko Commands with Nornir

```python
from nornir_netmiko.tasks import netmiko_send_command
from nornir_utils.plugins.functions import print_result

result = nr.run(
    task=netmiko_send_command,
    command_string="show ip int brief"
)

print_result(result)
```

---

# 18.9 Save Output Per Device

```python
for host in result:
    output = result[host].result
    with open(f"{host}.txt", "w") as f:
        f.write(output)
```

---

# 18.10 Run Netmiko Config Commands

```python
from nornir_netmiko.tasks import netmiko_send_config

cmds = ["hostname R1"]

result = nr.run(
    task=netmiko_send_config,
    config_commands=cmds
)
```

---

# 18.11 Using Jinja2 Templates in Nornir

**router.j2**

```
hostname {{ hostname }}
interface {{ interface }}
 ip address {{ ip }} {{ mask }}
```

### Nornir Task:

```python
from nornir_jinja2.plugins.tasks import template_file
from nornir_netmiko.tasks import netmiko_send_config

def deploy_config(task):
    config = task.run(
        task=template_file,
        template="router.j2",
        path="templates"
    )
    task.run(
        task=netmiko_send_config,
        config_commands=config.result.splitlines()
    )

nr.run(task=deploy_config)
```

---

# 18.12 NAPALM + Nornir Example

```python
from nornir_napalm.plugins.tasks import napalm_get
from nornir_utils.plugins.functions import print_result

result = nr.run(task=napalm_get, getters=["facts", "interfaces"])
print_result(result)
```

---

# 18.13 Filtering Hosts

### By hostname:

```python
single = nr.filter(name="R1")
```

### By group:

```python
cisco_devices = nr.filter(groups__contains="cisco")
```

### By custom data variable:

```python
hq_devices = nr.filter(data__location="HQ")
```

---

# 18.14 ASCII Diagram — Nornir Execution Flow

```
+----------------------------------+
|          Nornir Runner           |
+----------------------------------+
             |
    Inventory Loads (YAML)
             |
    Threads Created (20 workers)
             |
      Each device runs task()
             |
     Results collected & returned
```

---

# 18.15 Real-World Use Case — Backup All Devices

```python
from nornir_netmiko.tasks import netmiko_send_command

def backup(task):
    result = task.run(task=netmiko_send_command, command_string="show run")
    config = result.result
    with open(f"backups/{task.host}.cfg", "w") as f:
        f.write(config)

nr.run(task=backup)
```

---

# 18.16 Real-World Use Case — Push VLAN to All Switches

```python
def deploy_vlan(task):
    cmds = [
        "vlan 20",
        "name USERS"
    ]
    task.run(task=netmiko_send_config, config_commands=cmds)

nr.run(task=deploy_vlan)
```

---

# 18.17 Enterprise Use — Pre/Post Validation

Example:  <br>

✔ Before changes → collect show outputs  <br>
✔ Apply changes  <br>
✔ After changes → validate configuration  <br>

---

# 18.18 Why Use Nornir Instead of Ansible?

| Feature      | Nornir    | Ansible         |
| ------------ | --------- | --------------- |
| Language     | Python    | YAML            |
| Speed        | Faster    | Slower          |
| Flexibility  | High      | Medium          |
| Parallelism  | Built in  | Requires tuning |
| Multi-vendor | Yes       | Yes             |
| Code reuse   | Excellent | Moderate        |

---

# 18.19 Best Practices

✔ Store inventory in YAML  <br>
✔ Keep tasks in separate files  <br>
✔ Use Jinja2 for config generation  <br>
✔ Use Nornir filters for dynamic selection  <br>
✔ Use threaded runner for speed  <br>
✔ Use logging for large deployments  <br>

---

# 18.20 Chapter Summary

You learned:  <br>

✔ What Nornir is  <br>
✔ Inventory structure (hosts, groups, defaults)  <br>
✔ Running tasks  <br>
✔ Netmiko + NAPALM + Jinja2 integration  <br>
✔ Parallel device execution  <br>
✔ Filtering hosts  <br>
✔ Real-world use cases (backup, config push)  <br>

Nornir is a powerful framework for **scalable, Python-native network automation**.  <br>

---

# 🎉 **Chapter 18 Completed**

---

# ▶️ Ready for Chapter 19?

Next chapter:  <br>

# Chapter 19 — Useful Python Modules for Network Engineers (regex, ipaddress, textfsm, logging, etc.)

Reply: **“Next chapter”** to continue.  <br>

<div style="page-break-after: always;"></div>
# 📘 **Chapter 19 — pyATS + Genie (Test Automation) & Scrapli (Modern SSH)**

*Markdown + ASCII diagrams + beginner-friendly + Jupyter-ready*

This chapter introduces **pyATS** and **Genie** — Cisco’s professional test automation and parsing frameworks — and the **Scrapli** library, a modern, fast alternative to Netmiko for SSH/Netconf.  <br>
These tools are widely used in production test labs and automation pipelines: **pyATS + Genie** for structured testing and parsing; **Scrapli** for fast, reliable device connectivity (including async).  <br>

---

# Chapter 19 — pyATS + Genie & Scrapli

---

## 19.1 Overview — when to use what

* **pyATS**: test framework (job orchestration, testcases, reporting).
* **Genie**: parsing library + device feature models (works with pyATS; provides parsers for many vendors).
* **Scrapli**: modern SSH/NETCONF/HTTP client (sync + async), fast and feature-rich — often used instead of Netmiko or Paramiko.

Use cases:  <br>

* Routine regression tests, CI pipelines, and device validation → **pyATS + Genie**.
* Fast command execution, structured output (with Scrapli parsing) → **Scrapli**.
* Use **Genie** parsers to convert raw show output into structured dicts for assertions in pyATS tests.

---

## 19.2 Installations

```bash
# virtualenv activated
pip install pyats[full]        # sets up pyATS + common extras (may be large)
pip install genie              # if not included
# or install minimal:
pip install pyats
pip install genieconf genie.libs.parser

# Scrapli
pip install scrapli
# for async or SSH+NETCONF extras:
pip install scrapli[networking] scrapli-netconf
```

> Note: pyATS full installation can pull many dependencies. Use a virtual environment.  <br>

---

## 19.3 Basic Concepts (pyATS)

* **Testbed**: YAML describing devices, credentials, roles, connections.
* **Testcase / Testscript**: Python class/functions implementing tests.
* **Job**: execution unit (run testcases against the testbed).
* **Reports**: HTML/JSON reports produced after run.
* **Learn**: pyATS can learn device state and save it for comparisons.

---

## 19.4 Testbed (YAML) — Example

`testbed.yaml`:  <br>

```yaml
testbed:
  name: lab
  devices:
    R1:
      os: ios
      type: router
      connections:
        cli:
          protocol: ssh
          ip: 10.1.1.1
      credentials:
        default:
          username: admin
          password: admin123

    SW1:
      os: ios
      type: switch
      connections:
        cli:
          protocol: ssh
          ip: 10.1.1.2
      credentials:
        default:
          username: admin
          password: admin123
```

pyATS loads this testbed and uses connection info for test execution.  <br>

---

## 19.5 Simple pyATS Script (connect + show)

```python
from pyats.topology import loader

testbed = loader.load('testbed.yaml')

device = testbed.devices['R1']
device.connect(log_stdout=False)

output = device.execute('show ip interface brief')
print(output)

device.disconnect()
```

* `device.execute()` uses the appropriate underlying connection plugin (Paramiko/Netmiko-like).
* `log_stdout=False` prevents spamming console; pyATS logs to files by default.

---

## 19.6 Using Genie Parsers (Structured Data)

Genie parses vendor `show` outputs into dictionaries.  <br>

```python
from pyats.topology import loader
from genie.libs.parser.utils import get_parser

testbed = loader.load('testbed.yaml')
dev = testbed.devices['R1']
dev.connect()

raw = dev.execute('show ip interface brief')

# Genie parser usage (simpler with device.parse)
parsed = dev.parse('show ip interface brief')
# 'parsed' is a nested dict you can assert on
print(parsed)
```

Example parsed structure (conceptual):  <br>

```python
{
  "GigabitEthernet0/0": {
    "ip_address": "10.1.1.1",
    "status": "up",
    "protocol": "up"
  },
  ...
}
```

You can now write tests like:  <br>

```python
assert parsed['GigabitEthernet0/0']['status'] == 'up'
```

---

## 19.7 Writing a Simple pyATS Testcase

`test_interface_up.py`:  <br>

```python
from pyats import aetest
from pyats.topology import loader

class CommonSetup(aetest.CommonSetup):
    @aetest.subsection
    def connect(self, testbed_yaml):
        self.testbed = loader.load(testbed_yaml)
        self.r1 = self.testbed.devices['R1']
        self.r1.connect()

class InterfaceTests(aetest.Testcase):
    @aetest.test
    def interface_up(self, steps):
        parsed = self.r1.parse('show ip interface brief')
        # example assertion
        assert parsed['GigabitEthernet0/0']['status'] == 'up'

class CommonCleanup(aetest.CommonCleanup):
    @aetest.subsection
    def disconnect(self):
        self.r1.disconnect()
```

Run:  <br>

```bash
pyats run job test_interface_up.py --testbed-file testbed.yaml
```

pyATS will produce structured logs and HTML reports.  <br>

---

## 19.8 pyATS Features Worth Knowing

* **Built-in reporting** (HTML + JSON) for CI integration.
* **Parameterized tests**: run same testcase across many devices.
* **Testbed import/export**: convert inventories.
* **Learn/Save**: capture baseline state for future comparison.
* **Integration with Genie parsers**: means you get structured data without writing regex.

---

## 19.9 Genie Parser Examples

Genie can be used standalone to parse text:  <br>

```python
from genie.conf import Genie
from genie.libs.parser.utils import get_parser

# Parse text without device object:
from genie.parser import parse
parsed = parse('show ip interface brief', output=raw_text, device_os='ios')
```

Or with a device (preferred):  <br>

```python
parsed = device.parse('show ip route')
# then use parsed as dict
```

Genie offers many parsers (show route, show bgp, show interfaces, etc.) for multiple vendors.  <br>

---

## 19.10 Real pyATS+Genie Use Cases

* Regression tests after code/config change.
* CI pipelines validating config templates before pushing to PROD.
* Nightly validation (configuration drift detection).
* Parsing complex outputs for downstream processing (e.g., TTL, BGP next-hop).

---

## 19.11 Scrapli — Modern SSH Client

### Why Scrapli?

* Faster and well-maintained.
* Sync + Async APIs.
* Supports Netconf and many transports.
* Cleaner channel management than raw Paramiko.
* Integrates with `textfsm` and `genie` for parsing (via scrapli-ssh and converters).

---

## 19.12 Scrapli Basic Example (sync)

```python
from scrapli import Scrapli

conn = Scrapli(
    host="10.1.1.1",
    auth_username="admin",
    auth_password="admin123",
    platform="cisco_ios"
)

conn.open()
response = conn.send_command("show ip interface brief")
print(response.result)   # raw text
conn.close()
```

---

## 19.13 Scrapli Async Example

```python
import asyncio
from scrapli import AsyncScrapli

async def main():
    conn = AsyncScrapli(host="10.1.1.1", auth_username="admin", auth_password="admin123", platform="cisco_ios")
    await conn.open()
    r = await conn.send_command("show ip int brief")
    print(r.result)
    await conn.close()

asyncio.run(main())
```

Async is useful when running many devices concurrently with `asyncio`.  <br>

---

## 19.14 Scrapli vs Netmiko — Quick Comparison

* **Performance**: Scrapli often faster and more modern.
* **API**: Scrapli offers both sync and async; Netmiko is sync.
* **Parsing**: Use Scrapli + `textfsm` or convert to Genie for parsing.
* **Ecosystem**: Netmiko has long history; Scrapli is rapidly growing and used in Nornir plugins.

---

## 19.15 Using Scrapli with TextFSM (structured parsing)

```python
from scrapli.driver.core import IOSXEDriver

conn = IOSXEDriver(**device_params)
conn.open()
resp = conn.send_command("show ip int brief", parse=True)  # if parse plugin configured
print(resp.textfsm_parse_output)  # parsed list/dict if plugin available
```

Note: enabling `parse=True` requires integrating Scrapli with a parsing plugin or converting output to Genie structures.  <br>

---

## 19.16 Integrating Scrapli into Nornir

Nornir has plugins for Scrapli — use `nornir_scrapli` to leverage Scrapli's speed in Nornir tasks.  <br>

Example task:  <br>

```python
from nornir_scrapli.tasks import send_command

def get_int_brief(task):
    r = task.run(task=send_command, command="show ip int brief")
    print(r.result)
```

---

## 19.17 Example Workflow — Pre-check with pyATS, Live Run with Scrapli

1. Use **pyATS** to run smoke tests and parse outputs with Genie.  <br>
2. If tests pass, render configs with **Jinja2**.  <br>
3. Use **Scrapli** (fast clients) to push configs or Netconf changes.  <br>
4. Re-run pyATS tests to validate changes and generate report.  <br>

ASCII:  <br>

```
[pyATS tests] ---> PASS? ---yes---> [render Jinja2] ---> [Scrapli push]
                                                   |
                                                   v
                                              [pyATS verify]
```

---

## 19.18 Best Practices & Tips

* Keep **testbeds** separate from production inventories (use staging/testbed).
* Use **pyATS reporting** for audits & compliance.
* Use **Genie** parsers for reliable structured data — avoid writing fragile regex.
* Use **Scrapli** for high-performance connections (especially async).
* For CI: run pyATS jobs in pipelines (Jenkins/GitHub Actions) and publish HTML reports.
* Use virtualenvs to isolate pyATS and Scrapli dependencies.

---

## 19.19 Troubleshooting Common Issues

* **Genie parser fails**: ensure correct `device.os`/`platform` and that the device output version matches supported parser.
* **pyATS connection issues**: verify credentials in testbed, network reachability, and that required CLI transport is available.
* **Scrapli SSL/SSH issues**: check supported platform strings (e.g., `cisco_ios`, `cisco_xe`, `juniper_junos`).
* **Permissions / paths**: pyATS writes logs/reports — ensure the running user can write to workspace directory.

---

## 19.20 Chapter Summary

* **pyATS** + **Genie** = powerful test automation + parsing framework (ideal for validation, CI).
* **Genie** provides robust, vendor-aware parsers that return structured dictionaries you can assert on.
* **Scrapli** is a modern, high-performance SSH/NETCONF client (sync & async) and integrates well with Nornir.
* These tools complement Netmiko, NAPALM, and Nornir to form a mature automation stack suitable for labs and production pipelines.

---

# 🎉 **Chapter 19 Completed**

---

When you’re ready, tell me **“Next chapter”** and I’ll continue with the next item in your original TOC (e.g., *Useful Python Modules* or whichever you prefer).  <br>

<div style="page-break-after: always;"></div>

# 📘 **Chapter 20 — Useful Python Modules for Network Engineers**

*Markdown + ASCII diagrams + beginner-friendly + practical automation examples*

Python comes with dozens of standard libraries that are **extremely useful** for network automation.  <br>
In this chapter, we cover the most important modules and show how each one is used in a real-world network automation scenario.  <br>

---

# Chapter 20 — Useful Python Modules for Network Engineers

We will cover:  <br>

1. **regex (re)**  <br>
2. **ipaddress**  <br>
3. **subprocess**  <br>
4. **textfsm**  <br>
5. **logging**  <br>
6. **csv**  <br>
7. **json**  <br>
8. **yaml**  <br>
9. **os / sys / pathlib**  <br>
10. **datetime / time**  <br>
11. **requests**  <br>
12. **ThreadPoolExecutor (already covered but included here)**  <br>
13. **pprint**  <br>
14. **tabulate**  <br>
15. **openpyxl (Excel)**  <br>
16. **rich / colorama** (CLI enhancements)  <br>

---

# 20.1 `re` — Regular Expressions (Regex)

Regex helps parse unstructured CLI text.  <br>

### Example: Extract IPs

```python
import re

text = "Interface Gig0/1 has IP 10.1.1.1"
ip = re.findall(r"\d+\.\d+\.\d+\.\d+", text)
print(ip)
```

---

# Network Example — Extract Interface Status

```python
output = "Gig0/1 is up, line protocol is up"
match = re.search(r"(Gig\d+/\d+).*?(up|down)", output)
print(match.group(1), match.group(2))
```

---

# 20.2 `ipaddress` — Handle IP Subnets

Very useful for:  <br>

✔ subnet math  <br>
✔ validation  <br>
✔ network summaries  <br>

### Example:

```python
import ipaddress

ip = ipaddress.ip_interface("10.1.1.1/24")
print(ip.network)
```

---

# Network Example — Validate IP

```python
def valid_ip(ip):
    try:
        ipaddress.ip_address(ip)
        return True
    except:
        return False
```

---

# 20.3 `subprocess` — Run OS Commands (ping, traceroute)

### Example: ping test

```python
import subprocess

result = subprocess.call(["ping", "-c", "1", "10.1.1.1"])
print(result)
```

---

# 20.4 `textfsm` — Structured Parsing of CLI Output

TextFSM uses templates to convert output → structured data.  <br>

Install:  <br>

```bash
pip install textfsm ntc_templates
```

### Example:

```python
import textfsm

template = open("templates/cisco_show_ip_int_brief.template")
re_table = textfsm.TextFSM(template)

parsed_output = re_table.ParseText(raw_output)
print(parsed_output)
```

---

# 20.5 `logging` — Logging Automation Scripts

Better than print.  <br>

```python
import logging

logging.basicConfig(filename="audit.log", level=logging.INFO)
logging.info("Starting config backup")
```

---

# 20.6 `csv` — Read/Write CSV Inventories

### Read CSV

```python
import csv

with open("devices.csv") as f:
    for r in csv.DictReader(f):
        print(r["hostname"], r["ip"])
```

---

### Write CSV

```python
with open("results.csv", "w") as f:
    writer = csv.writer(f)
    writer.writerow(["host", "status"])
    writer.writerow(["R1", "up"])
```

---

# 20.7 `json` — Already Used for APIs, Inventories, Configs

### Load JSON

```python
import json

with open("device.json") as f:
    data = json.load(f)
```

---

# 20.8 `yaml` — YAML Configuration & Inventory Handling

```python
import yaml

with open("devices.yaml") as f:
    devices = yaml.safe_load(f)
```

---

# 20.9 `os` / `sys` / `pathlib`

### `os` — environment and files

```python
import os

os.makedirs("backups", exist_ok=True)
```

### `sys` — arguments and exit

```python
import sys

if len(sys.argv) < 2:
    sys.exit("Missing arguments")
```

### `pathlib` — modern path handling

```python
from pathlib import Path

Path("outputs").mkdir(exist_ok=True)
```

---

# 20.10 `datetime` & `time`

Useful for:  <br>

✔ timestamped logs  <br>
✔ maintenance windows  <br>
✔ config backups  <br>

```python
from datetime import datetime

timestamp = datetime.now().strftime("%Y%m%d_%H%M")
print(timestamp)
```

---

# 20.11 `requests` — REST API / RESTCONF / Webhooks

```python
import requests

r = requests.get("https://httpbin.org/get")
print(r.json())
```

Used in RESTCONF, monitoring, NAC APIs, controller APIs.  <br>

---

# 20.12 `ThreadPoolExecutor` (from concurrent.futures)

Already covered in Chapter 17  <br>
But here’s quick reference:  <br>

```python
from concurrent.futures import ThreadPoolExecutor
```

Use this for fast multi-device execution.  <br>

---

# 20.13 `pprint` — Pretty Printing Dicts

```python
from pprint import pprint

pprint(parsed_json)
```

---

# 20.14 `tabulate` — Nice Tables

Install:  <br>

```bash
pip install tabulate
```

```python
from tabulate import tabulate

data = [["Gig0/0", "up"], ["Gig0/1", "down"]]
print(tabulate(data, headers=["Interface", "Status"]))
```

---

# 20.15 `openpyxl` — Excel Automation

```bash
pip install openpyxl
```

Write Excel file:  <br>

```python
from openpyxl import Workbook

wb = Workbook()
ws = wb.active
ws.append(["Host", "Status"])
ws.append(["R1", "UP"])
wb.save("results.xlsx")
```

---

# 20.16 `rich` & `colorama` — Beautify CLI Output

Rich example:  <br>

```bash
pip install rich
```

```python
from rich.console import Console
console = Console()

console.print("[green]Automation Success[/green]")
```

---

# 20.17 ASCII Diagram — Where These Modules Fit

```
+-------------------------+------------------------------+
| Purpose                | Python Module                 |
+-------------------------+------------------------------+
| Parsing CLI            | re, textfsm, genie           |
| IP calculations        | ipaddress                    |
| API calls              | requests                     |
| File handling          | os, csv, json, yaml          |
| Logging                | logging                      |
| Excel reports          | openpyxl                     |
| Pretty output          | pprint, tabulate, rich       |
| Parallel execution     | ThreadPoolExecutor           |
+--------------------------------------------------------+
```

---

# 20.18 Real-World Example — Combine Modules

### Goal:

Read IPs → validate → ping → save results → Excel.  <br>

```python
import csv, ipaddress, subprocess
from openpyxl import Workbook

# Read IPs
ips = []
with open("ips.csv") as f:
    for r in csv.DictReader(f):
        ips.append(r["ip"])

results = []
for ip in ips:
    # validate
    try:
        ipaddress.ip_address(ip)
        valid = True
    except:
        valid = False

    # ping
    if valid:
        resp = subprocess.call(["ping", "-c", "1", ip])
        status = "UP" if resp == 0 else "DOWN"
    else:
        status = "INVALID"

    results.append([ip, status])

# Save to Excel
wb = Workbook()
ws = wb.active
ws.append(["IP", "Status"])
for row in results:
    ws.append(row)
wb.save("results.xlsx")
```

---

# 20.19 Chapter Summary

You learned:  <br>

✔ Regex, parsing, CLI processing  <br>
✔ IP validation and subnet math  <br>
✔ Running OS commands  <br>
✔ Logging  <br>
✔ CSV/JSON/YAML processing  <br>
✔ Pretty output  <br>
✔ Excel automation  <br>
✔ REST APIs  <br>
✔ Multithreading reference  <br>
✔ Real-world combined example  <br>

These modules are used DAILY in modern network automation workflows.  <br>

---

# 🎉 **Chapter 20 Completed**

---

When you're ready, tell me **“Next chapter”** and I will proceed to:  <br>

# Chapter 21 — Network Automation Use Cases (Real Scenarios, End-to-End Workflows)

<div style="page-break-after: always;"></div>

# 📘 **Chapter 21 — Network Automation Use Cases (Real Scenarios, End-to-End Workflows)**

*Markdown + diagrams + complete workflows + real-world examples*

This chapter ties everything together.  <br>
You will see how Python, Netmiko, NAPALM, Nornir, Jinja2, RESTCONF/NETCONF, pyATS, Scrapli, multithreading, and modules from previous chapters are used in **real production automation workflows**.  <br>

We cover **practical, ready-to-use use cases** that appear in enterprises, service providers, and data centers.  <br>

---

# Chapter 21 — Network Automation Use Cases

---

# 21.1 Backup All Device Configurations (Netmiko / Nornir)

### Using Netmiko

```python
from netmiko import ConnectHandler

devices = [
    {"device_type": "cisco_ios", "host": "10.1.1.1", "username": "admin", "password": "admin"},
    {"device_type": "cisco_ios", "host": "10.1.1.2", "username": "admin", "password": "admin"},
]

for dev in devices:
    with ConnectHandler(**dev) as conn:
        cfg = conn.send_command("show run")
    with open(f"backups/{dev['host']}.cfg", "w") as f:
        f.write(cfg)
```

### Using Nornir (parallel)

```python
def backup(task):
    r = task.run(task=netmiko_send_command, command_string="show run")
    with open(f"{task.host}.cfg", "w") as f:
        f.write(r.result)

nr.run(task=backup)
```

---

# 21.2 Generate Device Config Using Jinja2 + YAML

### inventory YAML

```yaml
hostname: R1
loopbacks:
  - {id: 10, ip: "10.10.10.1", mask: "255.255.255.255"}
  - {id: 20, ip: "20.20.20.1", mask: "255.255.255.255"}
```

### Template

```
hostname {{ hostname }}
{% for lo in loopbacks %}
interface Loopback{{ lo.id }}
 ip address {{ lo.ip }} {{ lo.mask }}
{% endfor %}
```

### Python

```python
env = Environment(loader=FileSystemLoader("./templates"))
template = env.get_template("loopbacks.j2")

print(template.render(data))
```

---

# 21.3 Push VLANs to 100+ Switches (Netmiko + Threads)

```python
from concurrent.futures import ThreadPoolExecutor

def deploy_vlan(device):
    cmds = ["vlan 20", "name USERS"]
    with ConnectHandler(**device) as conn:
        return conn.host, conn.send_config_set(cmds)

with ThreadPoolExecutor(max_workers=50) as ex:
    results = ex.map(deploy_vlan, devices)
```

---

# 21.4 Validate Pre-Change and Post-Change State (pyATS + Genie)

### Pre-check

```python
pre = dev.parse("show ip interface brief")
```

### Apply change

Netmiko / Nornir / NAPALM  <br>

### Post-check

```python
post = dev.parse("show ip interface brief")
```

### Compare

```python
assert pre["Gig0/0"]["status"] == post["Gig0/0"]["status"]
```

Used in CI/CD production pipelines.  <br>

---

# 21.5 Automate Interface IP Assignments (Python + ipaddress)

```python
import ipaddress

net = ipaddress.ip_network("10.1.1.0/24")

for i, host in enumerate(net.hosts()):
    print(f"Device {i+1} gets IP {host}")
```

---

# 21.6 Bulk Ping Tests (subprocess + threads)

```python
def ping(ip):
    res = subprocess.call(["ping", "-c", "1", ip])
    return ip, "UP" if res == 0 else "DOWN"
```

---

# 21.7 RESTCONF API: Get Interface Details

```python
import requests

url = "https://10.1.1.1/restconf/data/ietf-interfaces:interfaces"
headers = {"Accept": "application/yang-data+json"}

resp = requests.get(url, auth=("admin","admin"), headers=headers, verify=False)
print(resp.json())
```

---

# 21.8 NETCONF: Create Loopback Interface

```python
config = """
<config>
 <interfaces xmlns="urn:ietf:params:xml:ns:yang:ietf-interfaces">
  <interface>
   <name>Loopback100</name>
   <enabled>true</enabled>
   <ipv4>
    <address>
     <ip>100.100.100.1</ip>
     <netmask>255.255.255.0</netmask>
    </address>
   </ipv4>
  </interface>
 </interfaces>
</config>
"""

conn.edit_config(target="running", config=config)
```

---

# 21.9 Compliance Checking (Genie / NAPALM)

### Example: Verify NTP servers

```python
cfg = dev.parse("show run")
assert "ntp server 10.10.10.10" in cfg["ntp"]["servers"]
```

Or using NAPALM compliance files.  <br>

---

# 21.10 Automatic Network Documentation (Python + NAPALM)

NAPALM:  <br>

```python
facts = dev.get_facts()
interfaces = dev.get_interfaces()
```

Store into Excel/CSV for documentation.  <br>

---

# 21.11 Using Scrapli to Pull State Fast

```python
from scrapli import Scrapli

with Scrapli(**device) as conn:
    out = conn.send_command("show cdp neighbors")
print(out.result)
```

Scrapli is especially good for parallel execution with asyncio.  <br>

---

# 21.12 Real Use Case: Zero-Touch Provisioning (ZTP)

* Device boots
* Python server assigns IP/DHCP options
* Device pulls startup config template (Jinja2)
* Script injects device-specific variables
* RESTCONF or SSH pushes final config

ASCII:  <br>

```
[DHCP Server] → [Python Script] → [Jinja2 Template] → [Device Config]
```

---

# 21.13 Automate BGP Peering Across Many Routers

Using Jinja2 loops:  <br>

```
{% for n in neighbors %}
neighbor {{ n.ip }} remote-as {{ n.asn }}
{% endfor %}
```

Using Nornir to push to all routers.  <br>

---

# 21.14 Daily Device Health Check Script

Collect:  <br>

✔ CPU  <br>
✔ Memory  <br>
✔ Interface errors  <br>
✔ High utilization  <br>
✔ BGP neighbor status  <br>

Store in:  <br>

* CSV
* Excel
* Grafana
* Email report

Example:  <br>

```python
output = conn.send_command("show processes cpu")
```

---

# 21.15 Log and Audit All Changes (logging module + file writes)

```python
logging.info(f"Pushed changes to {hostname}")
```

---

# 21.16 Automated Rollback Using NAPALM

```python
device.load_merge_candidate("new.cfg")
diff = device.compare_config()
if diff:
    device.rollback()
```

---

# 21.17 BGP/OSPF Verification with Genie

```python
neighbors = dev.parse("show ip bgp summary")
assert neighbors["10.1.1.2"]["state"] == "Established"
```

---

# 21.18 API Automation — DNAC, NSO, ACI

REST API calls:  <br>

```python
resp = requests.post(url, json=payload, headers=headers, verify=False)
```

Combine with:  <br>

✔ JSON data  <br>
✔ Structured YAML  <br>
✔ Jinja2 templates  <br>

---

# 21.19 Network Inventory Discovery Script

1. Ping sweep  <br>
2. Check SSH port  <br>
3. Identify OS (send small commands)  <br>
4. Store results in CSV/Excel  <br>
5. Generate documentation  <br>

---

# 21.20 ASCII Diagram — End-to-End Automation Pipeline

```
           +-----------------------------+
           |   Source of Truth (YAML)    |
           +-----------------------------+
                         |
                 render with Jinja2
                         |
                         v
             +---------------------+
             |   Python Script     |
             |   Netmiko/Nornir    |
             +---------------------+
                         |
                 Push config changes
                         |
                         v
             +----------------------+
             | Post-change checks   |
             | pyATS + Genie        |
             +----------------------+
                         |
                 Validation / Report
```

---

# 21.21 Chapter Summary

In this chapter you learned **real-world use cases**, including:  <br>

✔ Backups  <br>
✔ Config push  <br>
✔ VLAN deployment  <br>
✔ Jinja2 templating  <br>
✔ RESTCONF & NETCONF use  <br>
✔ Scrapli, Nornir, NAPALM use  <br>
✔ Health checks  <br>
✔ Documentation automation  <br>
✔ Compliance checks  <br>
✔ CI/CD validation  <br>
✔ Full end-to-end workflow  <br>

---

# 🎉 **Chapter 21 Completed**

When you’re ready, say **“Next chapter”** and I’ll generate:  <br>

# Chapter 22 — References & Additional Reading

(Will include all URLs you shared + structured categories + best docs to follow).  <br>

<div style="page-break-after: always;"></div>

# 📘 **Chapter 22 — References & Additional Reading (Beginner → Advanced)**

*Markdown + organized categories + includes ALL references you provided + many more high-quality free Python & network automation resources.*

This chapter compiles a **complete reference library** for Python, network automation, model-driven programmability, DevNet, pyATS, Genie, Jinja2, Scrapli, NAPALM, Nornir, and more.  <br>

All links are **free**, high-quality, and suitable for beginners up to advanced automation engineers.  <br>

---

# Chapter 22 — References & Additional Reading

---

# 22.1 References

These references form an important part of existing study journey.  <br>

### Jinja2 References

* [https://www.packetcoders.io/an-introduction-to-jinja2-for-network-automation/](https://www.packetcoders.io/an-introduction-to-jinja2-for-network-automation/)
* [https://jinja.palletsprojects.com/en/stable/templates/](https://jinja.palletsprojects.com/en/stable/templates/)
* [https://pyneng.readthedocs.io/en/latest/book/20_jinja2/README.html](https://pyneng.readthedocs.io/en/latest/book/20_jinja2/README.html)
* [https://python-automation-book.readthedocs.io/en/stable/](https://python-automation-book.readthedocs.io/en/stable/)

### LinkedIn Technical Posts

(All are included as reference context)  <br>

* [https://www.linkedin.com/feed/update/urn:li:activity:7393685053848924161](https://www.linkedin.com/feed/update/urn:li:activity:7393685053848924161)
* [https://www.linkedin.com/feed/update/urn:li:activity:7392950186119098368](https://www.linkedin.com/feed/update/urn:li:activity:7392950186119098368)
* [https://www.linkedin.com/feed/update/urn:li:activity:7392156782778974208](https://www.linkedin.com/feed/update/urn:li:activity:7392156782778974208)
* [https://www.linkedin.com/feed/update/urn:li:activity:7390656573884420096](https://www.linkedin.com/feed/update/urn:li:activity:7390656573884420096)
* [https://www.linkedin.com/feed/update/urn:li:activity:7389975230171193344](https://www.linkedin.com/feed/update/urn:li:activity:7389975230171193344)
* [https://www.linkedin.com/feed/update/urn:li:activity:7389494086745083904](https://www.linkedin.com/feed/update/urn:li:activity:7389494086745083904)
* [https://www.linkedin.com/feed/update/urn:li:activity:7387373202118877184](https://www.linkedin.com/feed/update/urn:li:activity:7387373202118877184)
* [https://www.linkedin.com/feed/update/urn:li:activity:7386465080961392640](https://www.linkedin.com/feed/update/urn:li:activity:7386465080961392640)
* [https://www.linkedin.com/feed/update/urn:li:activity:7384872389114773504](https://www.linkedin.com/feed/update/urn:li:activity:7384872389114773504)
* [https://www.linkedin.com/feed/update/urn:li:activity:7384503867792756737](https://www.linkedin.com/feed/update/urn:li:activity:7384503867792756737)
* [https://www.linkedin.com/feed/update/urn:li:activity:7384080766558875648](https://www.linkedin.com/feed/update/urn:li:activity:7384080766558875648)

---

# 22.2 Python for Network Engineers — Dedicated Courses

### ⭐ **NetworkLessons – Python for Network Engineers (Free)**

[https://networklessons.com/python-programming/](https://networklessons.com/python-programming/)  <br>
Best free networking-focused Python intro course.  <br>

---

### ⭐ **ReadTheDocs: Python for Network Engineers (PyNEng)**

[https://pyneng.readthedocs.io/en/latest/](https://pyneng.readthedocs.io/en/latest/)  <br>
Highly recommended for beginners → intermediate.  <br>

---

### ⭐ **Arista Network Automation (EOS Automation)**

[https://pyneng.readthedocs.io/en/latest/book/27_ansible/](https://pyneng.readthedocs.io/en/latest/book/27_ansible/)  <br>
[https://pyneng.readthedocs.io/en/latest/book/28_restapi/](https://pyneng.readthedocs.io/en/latest/book/28_restapi/)  <br>
Includes:  <br>

* eAPI
* JSON-RPC
* REST APIs
* EOS automation examples

---

# 22.3 General Python Tutorials (Free & High Quality)

### 🎓 W3Schools — Python Tutorial (Free)

[https://www.w3schools.com/python/](https://www.w3schools.com/python/)  <br>
Best for absolute beginners.  <br>

---

### 🎓 JavaTpoint — Python Tutorial

[https://www.javatpoint.com/python-tutorial](https://www.javatpoint.com/python-tutorial)  <br>

---

### 🎓 Official Python Documentation

[https://docs.python.org/3/](https://docs.python.org/3/)  <br>

---

### 🎓 Programiz Python Tutorial

[https://www.programiz.com/python-programming](https://www.programiz.com/python-programming)  <br>

---

### 🎓 Real Python (Mixed Free + Paid)

[https://realpython.com/](https://realpython.com/)  <br>
Great for practical examples and advanced topics.  <br>

---

### 🎓 FreeCodeCamp Python Course

[https://www.freecodecamp.org/learn/scientific-computing-with-python/](https://www.freecodecamp.org/learn/scientific-computing-with-python/)  <br>
Interactive Python certification.  <br>

---

# 22.4 python automation & networking references

---

### ⭐ Python Automation Book (Free, ReadTheDocs)

[https://python-automation-book.readthedocs.io/en/stable/](https://python-automation-book.readthedocs.io/en/stable/)  <br>
Excellent automation-specific content.  <br>

---

### ⭐ PacketCoders – Network Automation Blog

[https://www.packetcoders.io/](https://www.packetcoders.io/)  <br>
Great deep-dives on Netmiko, Nornir, Jinja2, etc.  <br>

---

### ⭐ Kirk Byers — Python for Network Engineers

[https://pynet.twb-tech.com/](https://pynet.twb-tech.com/)  <br>
Author of Netmiko & NAPALM.  <br>

---

### ⭐ GNS3 Network Automation Lessons

[https://docs.gns3.com/docs/](https://docs.gns3.com/docs/)  <br>
Helps build automation labs.  <br>

---

### ⭐ Cisco DevNet (Model-Driven Automation)

[https://developer.cisco.com/](https://developer.cisco.com/)  <br>
Learn:  <br>

* RESTCONF
* NETCONF
* YANG
* pyATS
* DNAC APIs
* ACI APIs

---

# 22.5 pyATS & Genie References

### ⭐ Official pyATS Documentation

[https://pubhub.devnetcloud.com/media/pyats/docs/index.html](https://pubhub.devnetcloud.com/media/pyats/docs/index.html)  <br>

---

### ⭐ Genie Parser Reference

[https://pubhub.devnetcloud.com/media/genie-feature-browser/docs/#/parsers](https://pubhub.devnetcloud.com/media/genie-feature-browser/docs/#/parsers)  <br>

---

### ⭐ Cisco pyATS Tutorials (DevNet Learning Labs)

[https://developer.cisco.com/learning/search/?search=pyats](https://developer.cisco.com/learning/search/?search=pyats)  <br>

---

# 22.6 Scrapli References

### ⭐ Scrapli (SSH/NETCONF/Async)

[https://scrapli.github.io/scrapli/](https://scrapli.github.io/scrapli/)  <br>

---

### ⭐ Scrapli-Community Drivers

[https://scrapli.github.io/scrapli_community/](https://scrapli.github.io/scrapli_community/)  <br>
Supports many platforms (Cisco IOS, NXOS, Junos, EOS, etc.)  <br>

---

### ⭐ Scrapli NETCONF Documentation

[https://scrapli.github.io/scrapli_netconf/](https://scrapli.github.io/scrapli_netconf/)  <br>

---

# 22.7 Nornir References

### ⭐ Nornir Documentation

[https://nornir.readthedocs.io/](https://nornir.readthedocs.io/)  <br>

---

### ⭐ Nornir Plugins

[https://github.com/nornir-automation/](https://github.com/nornir-automation/)  <br>
Includes:  <br>

* nornir_netmiko
* nornir_scrapli
* nornir_napalm
* nornir_jinja2

---

# 22.8 NAPALM References

### ⭐ NAPALM Official Docs

[https://napalm.readthedocs.io/en/latest/](https://napalm.readthedocs.io/en/latest/)  <br>

---

### ⭐ NAPALM Supported Platforms

[https://napalm.readthedocs.io/en/latest/support/](https://napalm.readthedocs.io/en/latest/support/)  <br>

---

# 22.9 Jinja2 Template Engine

### ⭐ Jinja2 Official Docs

[https://jinja.palletsprojects.com/](https://jinja.palletsprojects.com/)  <br>

(You already provided excellent articles — included in beginning.)  <br>

---

# 22.10 RESTCONF & NETCONF References

### ⭐ Cisco Model-Driven Programmability

[https://developer.cisco.com/docs/modeling-and-automation/](https://developer.cisco.com/docs/modeling-and-automation/)  <br>

---

### ⭐ RFC 8040 — RESTCONF Standard

[https://datatracker.ietf.org/doc/html/rfc8040](https://datatracker.ietf.org/doc/html/rfc8040)  <br>

---

### ⭐ RFC 6241 — NETCONF Standard

[https://datatracker.ietf.org/doc/html/rfc6241](https://datatracker.ietf.org/doc/html/rfc6241)  <br>

---

### ⭐ YANG Models (Cisco GitHub)

[https://github.com/YangModels/yang](https://github.com/YangModels/yang)  <br>

---

# 22.11 TextFSM & NTC Templates

### ⭐ NTC Templates (Cisco, Juniper, Arista)

[https://github.com/networktocode/ntc-templates](https://github.com/networktocode/ntc-templates)  <br>

---

### ⭐ TextFSM Documentation

[https://github.com/google/textfsm](https://github.com/google/textfsm)  <br>

---

# 22.12 General Networking Automation Blogs & Resources

### Packet Pushers – Network Automation Series

[https://packetpushers.net/](https://packetpushers.net/)  <br>

### Network to Code Blog

[https://blog.networktocode.com/](https://blog.networktocode.com/)  <br>

### NetworkLessons (Network Automation)

[https://networklessons.com/network-automation/](https://networklessons.com/network-automation/)  <br>

### LabNIT (Python + Networking Blog)

[https://labnit.io/](https://labnit.io/)  <br>

### Arista EOS Central

[https://eos.arista.com/](https://eos.arista.com/)  <br>

---

# 22.13 YouTube Channels for Network Automation

✔ NetworkChuck (Python basics, APIs)  <br>
✔ David Bombal (network automation, DevNet)  <br>
✔ HutchTech (Cisco DevNet, pyATS, RESTCONF)  <br>
✔ Itential webinars  <br>
✔ Cisco Live recordings (free)  <br>

---

# 22.14 GitHub Repositories for Learning

### Netmiko Source

[https://github.com/ktbyers/netmiko](https://github.com/ktbyers/netmiko)  <br>

### NAPALM Source

[https://github.com/napalm-automation/napalm](https://github.com/napalm-automation/napalm)  <br>

### Nornir Source

[https://github.com/nornir-automation/nornir](https://github.com/nornir-automation/nornir)  <br>

### Scrapli

[https://github.com/scrapli/scrapli](https://github.com/scrapli/scrapli)  <br>

### pyATS Examples

[https://github.com/CiscoTestAutomation](https://github.com/CiscoTestAutomation)  <br>

---

# 22.15 Recommended Learning Path (Step-by-Step)

```
1. Learn Python basics (W3Schools, Programiz)
2. Learn automation-specific Python (NetworkLessons, PyNEng)
3. Learn Netmiko for CLI automation
4. Learn Jinja2 for config generation
5. Learn RESTCONF/NETCONF (Cisco DevNet)
6. Learn NAPALM and Nornir for scale
7. Learn pyATS/Genie for testing and parsing
8. Learn Scrapli for modern SSH/Netconf
9. Build real workflows: backup, push configs, monitoring
10. Build CI/CD pipelines with pyATS/Nornir
```

---

# 22.16 Final Summary

In this reference chapter, you received:  <br>

✔ ALL references you provided  <br>
✔ Best free Python learning resources  <br>
✔ Best network automation courses  <br>
✔ Vendor automation documentation  <br>
✔ API/model-driven resources  <br>
✔ Tool-specific references (Netmiko, Nornir, NAPALM, Scrapli, pyATS, Genie)  <br>
✔ Recommended learning path  <br>

This is a **complete learning library** for any network engineer moving from beginner → advanced → expert automation engineer.  <br>

---

<div style="page-break-after: always;"></div>

<div style="page-break-after: always;"></div>
