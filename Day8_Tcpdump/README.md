## DAY 8
## NETWROK TRAFFIC CAPTURE & ANALYSIS(TCPDUMP)

##Objective

To capture and anaylze network traffic in real time and understand how sysytem communicate across network.

## TOOLS USED

* tcpdump
* Ubuntu Terminal

## ACTIVITIES PERFORMED

* Captured live packets across all interfaces
* Generated a traffic by creating fake request to login ssh using sshfakeuser@localhost
* Observed external communcation
* APplied filters to isolate specific traffic (SSH, HTTP)

## TRAFFIC OBSERVED

Localhost Coomunication

Traffic between 127.0.0.1(localhost) was observe.
Meaning: Internal processes communicationg within the system.

## TCP FLAGS ANALYSIS

Observed multiple TCP flags:

* SYN(S)-Connection Start
* SYN ACK(S.)-Acknowledgement
* RESET(R.)-Connection Refused
* PUSH(P.)-Push data(data transfer)

## SECURITY INSIGHTS

* Network traffic monitring helps detect suspicious activity early.
* TCP Flags are critical for identifying connection issues ot attacks.
* Continous monitoring is essential for securing exposed services.

##SKILLS DEMONSTRATED

* Packet capture using tcpdump
* Traffic filtering and isolation
* Basic packet anaylsis
* Identification of protocols, ports, and communication patterns.

## FILES INCLUDED

* capture.pcap: Raw packet capture file
* coomands.txt: Commands used during the lab
