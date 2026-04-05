# Day 18 - Netwrk Monitoring

# Objective
Generate a network traffic and analyze and detect rejected request all using the network security tool Wireshark and tcpdump.

# Tools 
- tcpdump
- wireshark
- curl/ping(Traffic generation)

## What I Did
- Generated traffic
- Captured traffic
- Analyzed Packets

## Key Observations
- Normal Traffic: SYN→ SYN,ACK
- Suspicious Traffic: SYN→ SYN,ACK→ RST

## Conclusion
Wireshark only caputred the traffic from the command ping 127.0.0.1. Identfying a normal traffic because it was communicating with itself. Unforunately, HYDRA script could not run due to the absence of wordlists. 
