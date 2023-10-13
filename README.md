# CaptureTheFlag

Script to setup initial folders on a new challenge:
```bash
curl -s https://raw.githubusercontent.com/huskyctf/CaptureTheFlag/main/start.sh | bash
```
All port TCP SYN scan:
```bash
sudo nmap -v -n -sS -T4 -p- $IP -oG nmap/allport-tcp-syn
```
