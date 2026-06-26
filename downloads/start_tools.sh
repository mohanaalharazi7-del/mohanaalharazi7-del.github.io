#!/bin/bash
# Quick Launch - جميع الأدوات

echo "🔥 WORM GPT - Quick Launch"
echo "============================"
echo "1) Burp Suite"
echo "2) Metasploit"
echo "3) Nmap Scan"
echo "4) Hydra Attack"
echo "5) Sqlmap"
echo "6) Wifiphisher"
echo "7) ZPhisher"
echo "8) King Phisher"
echo "9) Socialphish"
echo "10) Gophish"
echo "11) BlackEye"
echo "12) HiddenEye"
echo "13) Modlishka"
echo "14) dnstwist"
echo "15) All Tools List"
echo "============================"
read -p "اختر رقم الأداة: " choice

case $choice in
    1) java -Xmx2G -jar ~/burpsuite.jar ;;
    2) msfconsole ;;
    3) read -p "الهدف: " target; nmap -sV -O $target ;;
    4) read -p "الهدف: " target; hydra -l root -P /usr/share/wordlists/rockyou.txt ssh://$target ;;
    5) read -p "الرابط: " url; sqlmap -u $url --dbs ;;
    6) sudo wifiphisher ;;
    7) cd ~/phishing-tools/zphisher && bash zphisher.sh ;;
    8) cd ~/phishing-tools/king-phisher && python3 king-phisher ;;
    9) cd ~/phishing-tools/socialphish && bash socialphish.sh ;;
    10) cd ~/phishing-tools/gophish && ./gophish ;;
    11) cd ~/phishing-tools/blackeye && bash blackeye.sh ;;
    12) cd ~/phishing-tools/HiddenEye && python3 HiddenEye.py ;;
    13) cd ~/phishing-tools/Modlishka && ./modlishka -domain example.com ;;
    14) cd ~/phishing-tools/dnstwist && python3 dnstwist.py example.com ;;
    15) echo "📦 جميع الأدوات موجودة في: ~/phishing-tools"
       echo "📦 Burp Suite: ~/burpsuite.jar"
       ls -la ~/phishing-tools/ ;;
    *) echo "❌ اختيار غير صحيح" ;;
esac
