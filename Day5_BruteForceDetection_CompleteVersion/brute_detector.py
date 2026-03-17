import re
from collections import Counter

logfile = open("/var/log/auth.log")

ips = []

for line in logfile:
    if "Failed password" in line:
        ip = re.search(r'\d+\.\d+\.\d+\.\d+', line)
        if ip:
            ips.append(ip.group())
count = Counter(ips)

for ip, attempts in count.items():
    if attempts > 5:
        print("ALERT:", ip, "failed", count, "times")
