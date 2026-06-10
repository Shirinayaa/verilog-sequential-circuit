# Verilog Sequential Circuits

## Overview

This project implements fundamental sequential circuits in Verilog and verifies them using testbenches.

Unlike combinational circuits, sequential circuits have memory and their outputs depend on both the current inputs and previous states.

Implemented Circuits:

* D Latch

## Learning Objectives

* Understand the difference between combinational and sequential logic
* Learn how digital circuits store data
* Understand feedback and memory elements
* Learn Verilog `always` blocks
* Create and run testbenches for sequential circuits
* Simulate digital circuits using Icarus Verilog
* Analyze waveforms using GTKWave

---

# D Latch

### Description

A D (Data) Latch is a fundamental sequential circuit used to store one bit of binary information.

Inputs:

* D (Data)
* EN (Enable)

Outputs:

* Q

The D Latch operates in two modes:

### Transparent Mode

When:

```text
EN = 1
```

The output follows the input.

```text
Q = D
```

### Memory Mode

When:

```text
EN = 0
```

The latch stores the previously captured value and ignores changes on the D input.

### Truth Table

| EN | D | Q          |
| -- | - | ---------- |
| 0  | X | Previous Q |
| 1  | 0 | 0          |
| 1  | 1 | 1          |

### Example

```text
D = 1
EN = 1
Q = 1

EN = 0

D changes to 0

Q remains 1
```

This demonstrates the memory behavior of the latch.

---

# Files

* d_latch.v

Testbenches:

* d_latch_tb.v

---

## Waveform

D Latch simulation waveform generated using GTKWave.

[D Latch Waveform](screenshots/d_latch_waveform.png)

---

# Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave
* VS Code

---

# Concepts Learned

* Sequential Logic
* Memory Elements
* Feedback
* State Retention
* D Latch
* Transparent Mode
* Memory Mode
* `always` Blocks
* Sensitivity Lists
* `reg` Data Type
* Event-Driven Simulation
* Waveform Analysis

---

# Difference Between Combinational and Sequential Logic

### Combinational Logic

Output depends only on present inputs.

```text
Inputs
   ↓
Logic
   ↓
Output
```

Examples:

* Logic Gates
* Adders
* Multiplexers
* Decoders
* Encoders

### Sequential Logic

Output depends on present inputs and previous state.

```text
Inputs
   ↓
Logic
   ↓
Output
   ↑
Feedback
```

Examples:

* Latches
* Flip-Flops
* Registers
* Counters

---

# Future Work

* D Flip-Flop
* SR Flip-Flop
* JK Flip-Flop
* T Flip-Flop
* Registers
* Shift Registers
* Counters
* Finite State Machines (FSMs)
