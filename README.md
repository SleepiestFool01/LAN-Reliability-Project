# LAN Reliability Modeling Project

This project simulates the reliability of different network configurations using MATLAB.  
Each task models how network structure impacts the number of transmissions required to successfully send packets across links with varying probabilities of failure.

---

## Overview

The project is divided into five main simulation tasks:

| Task | Description |
|------|--------------|
| **1** | Single link reliability – baseline test using one connection |
| **2** | Two links in series – both links must succeed |
| **3** | Two links in parallel – packet succeeds if either link works |
| **4** | Compound network – parallel section followed by one final link |
| **5** | Compound network with unique link probabilities *(p₁, p₂, p₃)* |

Each task runs for **N = 1000 simulations** and plots the average number of transmissions needed for all packets (*K*) to arrive successfully.

---


