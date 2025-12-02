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
### Python Block Structure

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

✔ Can contain letters, numbers, underscore <br>
✔ Must **start with a letter or underscore** <br>
✔ Case-sensitive <br>
✔ Cannot use keywords (`if`, `else`, `class`, …) <br>

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
## **3.18 Memory & Variables**

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


Next:

### **Chapter 4 — Operators & Expressions (Beginner → Advanced)**

Covers: <br>

* Arithmetic
* Logical
* Comparison
* Bitwise
* Membership
* Identity
* Operator precedence
* Network-focused examples
