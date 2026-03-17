# Day 18 
NETWORK BASICS(PORTS & SERVIICES)

OBJECTIVE
Identifying open ports and running serviices using Ubuntu-Lab
and understand security implications.

TOOLS USED
- ss(socket statistics)
- SSH service (sshd)

COMMANDS EXECUTED
- Checked SSH service status
- Listed all open ports and listening
- Filtered SSH-specific processes

ANALYSIS

Open ports act as entry points into s sysyem.
Each running service increases the attack surface.
SSH(PORT 22) is particularly sensitive because it allows remote access and it's commonly targeted by brute force attacks.

SECUITY INSIGHT
- Only necessary ports should be open
- SSH should be monitored and be priortize most above all.
- Unuesd services should be disabled to reduce risk

CONCLUSIVE ANALYST NOTE
Port 22(SSH) is a high value target in cybersecurity. Proper monitoring and protection mechanisms such as Fail2ban are recommended.
