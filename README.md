## Day 20 - Network Traffic Analysis (Port Scan Detection)

## Objective
Capture and anaylze traffic to detect a port scan using Wireshark and Nmap.

## Tools
- Wireshark
- Nmap

## Steps

### 1. Start capture
- Open Wireshark 
- Select interface
- Start

### 2. Run Scan
'''bash
nmap -sS localhost
nmap localhost

## Observations
* Multiple SYN packets sent to different ports
* RST responses form closed ports 
* SYN-ACK responses from open ports

## Analysis
- Pattern 
* SYN > SYN-ACK ( Open port) 
* SYN > RST ( Closed port)

## Conclusion 
I simulated and detected a port scan successfully using packet anaylsis.
Done as PRACTICAL using Ubuntu-Lab.
