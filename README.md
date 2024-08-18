<h2 align=center> Rivalz Node v2 </h2>

---
## System Specifications

| Component        | Specification   |
|------------------|-----------------|
| **RAM**          | 4GB             |
| **Cores**        | 4 Cores (2.2GHz) |
| **Storage**      | 50GB SSD        |
| **Internet Speed**| 1Mbps           |
---
## Installation

- This node will not work on Gitpod/ Codespace
- Install `screen` using the below commands
```bash
sudo apt-get update
```
```bash
sudo apt-get install screen
```
- Create a screen session (Rivalz) using the below command
```bash
screen -S Rivalz
```
- Now paste the below command
```bash
wget https://raw.githubusercontent.com/dxzenith/rivalz-node-v2/main/rivalz.sh && chmod +x rivalz.sh && ./rivalz.sh
```
- Enter your EVM wallet address which you connected during Registration
- Allocate 95% stoarge to the node cli
- Detach from the screen session using `Ctrl` + `A` + `D`
- Done ✅, now you can close your terminal and can like this tweet 😁
