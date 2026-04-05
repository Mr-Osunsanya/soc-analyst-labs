# AUTO SIEM Defender

## Overview
This project simulates a Secuirty Operations Center (SOC) workflow by detecting SSH brute-force attacks from system logs and responding automatically.

## Features
- Log report from auth.log
- Attack detection(Failed SSH logins)
- Severity classifications i.e Low, Medium, High
- Automated blocking using ufw
- Markdown Report

## 🚨 Severity Levels Includes
- Low: <5 attempts
- MEDIUM: 5-9 attempts
- HIGH: >/= 10 attempts (auto-blocked)

## Tools Used
- Bash scripting
- UFW (Firewall)
- curl (ALERTS)

## RUN
chmod +x auto_siem.sh
sudo autom_siem.sh
