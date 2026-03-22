Day 3 - SSH Brute Force Detection 

Objective
Simulate an SSH brute force attack and analyze how failed login attempts are recorded in system logs.
## Tool Used
- Hydra
- SSH
-  Auth Logs
## Observations
Hydra attempted multiple passwords against the SSH service. This helps us to visualize a scenario of a brute force attack.
Each failed login attempt was recorded in "/var/log/auth.log".
TIMESTAMP
2026-03-17:30:38(A)
2026-03-18:41:49(B)
2026-03-18:42:42(C)
2026-03-18:44:27(D)
2026-03-18:44:56(E)
SOURCE IP ADDRESS
33642(A)
59028(B)
55652(D)
46100(E)
Observing this timestamp of each login attempts shows that the time difference wasn't much, indicating that the user didn't have accurate knowledge of the password.
- All attempts were from "127.0.0.1"(Local-host)
- Repeated attempts indicate potential brute force behavior
- Ports changed dynamically for each attempt.
 ## MY ANALYST INSIGHTS
- Pattern Analysis: Multiple consecutive failed login attempts are a key indicator of brute force attacks.
- Threat Prioritization: If attacks exceed thresholds such as >9-15 attempts, automated alerting or immediate blocking should trigger.
 ## Conclusion
 This lab demonstrates allows us to visualize a brute force attack and how attempts appear in authentication logs and how SOC analysts can detect and analyze login attempts by an authorized users. Monitoring authentication logs is essential for early detection of unauthorized access attempts and proactive defense.

