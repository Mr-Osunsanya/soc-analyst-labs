11
import re 
import os

LOG_FILE = "/var/log/auth.log"
THRESHOLD = 5

def extract_ips():
    with open(LOG_FILE, "r") as file:
        data = file.readlines()

    ip_count = {}

    for line in data:
        if "Failed password" in line:
            ip = re.findall(r"\d+\.\d+\.d+\.\d+", line)
            if ip:
                ip = ip[0]
                ip_count[ip] = ip_count.get(ip, 0) + 1

    return ip_count

def block_ip(ip):
    print(f"[+] Blocking {ip}")
    os.system(f"sudo iptables -A INPUT -s {ip} - j DROP")


def main():
    ips = extract_ips()

    for ip, count in  ips.items():
        if count >= THRESHOLD:
           block_ip(ip)


if  __name__ == "__main__":
     main()
