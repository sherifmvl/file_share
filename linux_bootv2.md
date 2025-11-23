# Linux Kernel Boot Process: Complete Detailed Flow

This document provides a **full, detailed, expanded explanation** of every stage in the Linux kernel boot process, rewritten **strictly based on the attached image** and including **all specific kernel functions** shown (such as `mm_init()`, `vfs_caches_init()`, `kswapd`, etc.).
It contains **full descriptions, structured flow, sub‑steps, and technical clarity**, while keeping the original flow intact.

---

# 🟦 Stage 1: Hardware Detection

## 🔌 Power On
The system receives power, the CPU resets, and begins execution from a predefined firmware memory location.

## 🖥️ BIOS/UEFI (Firmware Initialization)
- Initializes CPU, chipset, and memory controllers
- Identifies attached hardware (keyboard, GPU, drives)
- Prepares system runtime services
- Selects a boot device using boot order

## 🧪 POST (Power‑On Self‑Test)
Performs diagnostic tests:
- RAM check
- CPU availability
- Keyboard and display checks
- Basic motherboard tests

If successful → Continue
If failed → Error beeps or hardware error screen

---

# 🟪 Stage 2: Bootloader

## 💽 MBR/GPT – Boot Sector
The firmware loads a boot sector:
- **MBR** for legacy BIOS
- **EFI System Partition** for UEFI

Its role is simply to load the bootloader.

## 🏁 GRUB – Load Kernel
GRUB loads:
- Linux kernel image (`vmlinuz`)
- Initial RAM filesystem (`initramfs`)
- Kernel parameters (e.g., `root=/dev/...`, `quiet`, etc.)

GRUB may also provide a menu for selecting OS or recovery modes.

## 📦 initramfs – Initial Ramdisk
Before the real root filesystem can be accessed, initramfs:
- Loads block‑device drivers (NVMe, SATA, USB storage)
- Loads filesystem drivers (ext4, xfs)
- Executes early userspace scripts
- Searches for root filesystem

If root filesystem is missing → **initramfs emergency shell**

---

# 🟧 Stage 3: start_kernel()

This is where the **core Linux kernel begins execution**.
The `start_kernel()` function orchestrates the initialization of all internal kernel subsystems.

---

## 🔹 Early Setup

### **setup_arch()**
Responsible for architecture‑specific initialization:
- CPU type, features, and capabilities
- Boot‑time page tables
- Parsing kernel command line
- Mapping physical → virtual memory layout

### **setup_memory()**
- Determines size and boundaries of RAM
- Reserves kernel text/data regions
- Initializes early memory structures

### **trap_init()**
Sets up low‑level CPU exception handlers:
- Page faults
- Illegal instructions
- Divide‑by‑zero
- General protection faults

This ensures the CPU can safely handle unexpected faults.

---

## 🔹 Memory Initialization

### **mm_init()**
Initializes the **virtual memory subsystem**:
- Page allocator setup
- Memory zones (DMA, Normal, HighMem)
- Kernel page table finalization

### **kmem_cache_init()**
Initializes the slab/slub allocator:
- Creates caches for frequently used kernel objects
- Provides fast memory allocation

### **Buddy Allocator Initialization**
Implements the primary **physical memory allocator**:
- Divides memory into power‑of‑two blocks
- Efficient merging and splitting of blocks

Essential for large contiguous allocations.

---

## 🔹 IRQ Subsystem Initialization

### **init_IRQ()**
Initializes interrupt controllers:
- APIC or IO‑APIC (x86)
- GIC (ARM)
- Registers interrupt descriptor tables

Allows hardware devices to trigger interrupts.

### **softirq_init()**
Initializes “bottom half” deferred interrupt handling:
- SoftIRQs
- Tasklets
- Network packet processing

This enables high‑performance interrupt workflows.

---

# 🟩 Stage 4: Subsystems Initialization

## 🕒 Scheduler Initialization – **sched_init()**
Sets up:
- CPU run queues
- Scheduler classes (CFS, RT, Deadline)
- Load balancing structures

Linux can now perform **multitasking**.

---

## 📁 VFS – Virtual Filesystem Initialization

### **vfs_caches_init()**
Initializes:
- Dentry cache
- Inode cache

### **dcache_init()**
Sets up directory entry cache for fast path lookups.

### **inode_init()**
Initializes inode cache for filesystem metadata.

Now Linux can interpret **filesystem structures** properly.

---

## 🔗 rest_init()
Creates:
- **kernel_init (PID 1)**
- **kthreadd (PID 2)**
- Per‑CPU idle threads

This transitions Linux from early boot (single‑threaded) into **multitasking mode**.

---

# 🟨 Stage 5: Threads

## 🧵 kernel_init (PID 1)
This is the kernel’s first process.
It performs:
- Loading additional kernel modules
- Preparing the system root filesystem
- Switching from initramfs → real root
- Finally launching `/sbin/init` (systemd)

---

## 🧵 kthreadd (PID 2)
The **kernel thread manager**:
- Creates all other worker kernel threads
- Manages background tasks

---

## 🧰 Worker Threads

### **kswapd**
Memory reclamation daemon:
- Frees unused pages
- Handles page‑out operations

### **ksoftirqd**
Processes deferred software interrupts.

### **kworker**
Generic background workers handling queued kernel jobs.

---

## 💽 Drivers

The kernel loads drivers for:
- **SATA**
- **NVMe**
- USB
- GPU
- Network interfaces
- Filesystems (ext4, xfs)

When all necessary block drivers are loaded → kernel can mount the real filesystem.

---

## 📌 Mount Root
Using filesystem drivers (ext4/xfs), the root partition is mounted.
If root fails → **Kernel panic: Unable to mount root FS**

---

# 🟦 Stage 6: systemd (PID 1 – Userspace Init)

Once the kernel hands control to userspace:

## 🧩 systemd (PID 1)
systemd initializes:

### 🔧 Mount Filesystems
- `/proc`
- `/sys`
- `/dev`

### 🔧 Essential Services
- **udev** (device management)
- **journald** (logging)
- **dbus** (IPC)
- **network** (network services)

### 👤 User Sessions
Starts:
- TTY login (getty)
- Display manager (GUI)

---

# ✅ Boot Complete

System is fully initialized.

### 🕒 Boot Time
Typically **5–30 seconds** depending on hardware and services.

### 🔍 Boot Analysis Tool
```
systemd-analyze
```

---

# 📟 ASCII Flow Overview

```
[Power On]
    |
[BIOS/UEFI]
    |
[POST]
    |
[MBR/GPT] --> [GRUB] --> [initramfs]
    |
[start_kernel()]
    |
[setup_arch → setup_memory → trap_init]
    |
[mm_init → kmem_cache_init → Buddy Allocator]
    |
[init_IRQ → softirq_init]
    |
[sched_init → VFS init → rest_init]
    |
[kernel_init + kthreadd]
    |
[kswapd, ksoftirqd, kworker]
    |
[Drivers: SATA/NVMe/ext4/xfs]
    |
[Mount Root]
    |
[systemd PID 1 → services]
    |
[GUI/getty]
    |
[BOOT COMPLETE]
```

---

# 📄 End of Document