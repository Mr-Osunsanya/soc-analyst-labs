# Day 15 - Automated Defense System

## Objective
Automatically detect and blocks brute force attackers.

## Tool
Python + iptables

## How It works
- Reads auth.log
- Detects failed login attempts
- Extracts attacker IP
- Blocks IP using firewall

## Features
- Real-time detection 
- Automated response
- Reduces manual monitoring

## Conclusion to Today's Task
Wrote a basic SOC automation tool to detect and block attackers

## NOTE
Running hydra -l root -P /usr/share/wordlists/rockyou.txt ssh://locahost as a test attack

