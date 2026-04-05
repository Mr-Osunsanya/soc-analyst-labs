# Day 17 - Continuous Monitoring System

# Objective 
Build a real-time attack detection and response system.

## FEATURES
- Monitors logs continuously
- Detects  brute force attempts instantly
- Track attackers IPs
- Automatically blocks attackers using UFW

## TOOLS
- Python
- LInux auth.log
- UFW Firewall
## Observations
There were alot of mistakes in the python script. Forunately the script was corrected and updated

## Outcome
Developing a live SOC-style monitoring system capable of detecting and stopping attacks in real-time

## Conclusion
This simulates how real Security operations takes place and how we respond to threats continuosly

## Note 
Unfortunately, installing wordlists wasn't available. Therefore running hydra script to allow a pratical view on how the defense script would respond to the attack would not be possible. Conclusively the python defense script allow a real-time detection and a immediate response to any suspicious login attempts.
