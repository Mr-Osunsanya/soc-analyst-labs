
import time
import re
import os

LOG_FILE = "/var/log/auth.log"
THRESHOLD = 5
checked_lines = 0
ip_count = {}

def block_ip(ip):
    print(f"[ALERT] Blocking {ip}")
    os.system(f"sudo ufw deny from {ip}")

while True:
    with open(LOG_FILE, "r") as file:
        lines = file.readlines()

    new_lines = lines[checked_lines:]
    checked_lines = len(lines)

    for line in new_lines:
        if "Failed password" in lines:
            ip = re.findall(r"\d+\.\d+\.\d+\.\d+", line)
            if ip:
               ip = ip[0]
               ip_count[ip] = ip_count.get(ip, 0) +1

               print(f"[DETECTION] {IP} → {ip_count[ip]} attempts")

               if ip_count[ip] == THRESHOLD:
                  block_ip(ip)  
time.sleep(5)
