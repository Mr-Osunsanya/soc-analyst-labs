## Day 5 Brute Force Attack Detection (Complete Deep Version)

## Objective 
- Scanning for any suspicious brute force attack
^ Running sudo cat /var/log/auth.log | grep "Failed password"
{cat: Read File}
{grep: Search for text}
{Failed password: login failure} 
* Many login failures
* Repeated username attempts
* Login attempts at high speed 

- Automate Detection
!! Instead of manually reading logs, automating detection would make it easier by:
* reading authentication log
* search for the failed password
* extract IP addresses
* counts attempts
* alerts if attempts(>number of times)

## ACTIVITY
- Today's task was to practically investigate SSH brute force attacks by analyzing authenticated logs.

- Using grep, I filtered failed login attempts in /var/log/auth.log

- I created a Python script that automatically detects repeated login attempts from the same IP address.

- This allows us to practicalize how SOC analyst detect brute-force attacks in real environment.

