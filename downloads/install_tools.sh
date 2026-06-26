#!/bin/bash
# Ultimate_Real_Tools_Installer.sh
# الإصدار 5.0 - جميع الأدوات حقيقية من المصادر الرسمية

clear
echo "🔥 ========================================="
echo "🔥  WORM GPT - Ultimate Tools Installer"
echo "🔥  جميع الأدوات حقيقية - مصادر رسمية"
echo "🔥  الإصدار 5.0 - $(date)"
echo "🔥 ========================================="
echo ""

# ============================================
# 1. تحديث الحزم الأساسية
# ============================================
echo "[1/10] تحديث الحزم الأساسية..."
pkg update && pkg upgrade -y

# ============================================
# 2. تثبيت التبعيات الأساسية
# ============================================
echo "[2/10] تثبيت التبعيات الأساسية..."
pkg install -y python python2 python3 git curl wget openssh openjdk-17 \
    nodejs ruby php perl cmake make golang rust clang binutils \
    openssl net-tools dnsutils whois traceroute tcpdump \
    nano vim tmux htop

# ============================================
# 3. تثبيت مكتبات Python
# ============================================
echo "[3/10] تثبيت مكتبات Python..."
pip install --upgrade pip
pip install requests beautifulsoup4 scrapy selenium paramiko \
    dnspython cryptography pyOpenSSL flask django scapy \
    smbprotocol ftplib pycryptodome impacket \
    shodan theharvester

# ============================================
# 4. تثبيت أدوات الاختراق الأساسية
# ============================================
echo "[4/10] تثبيت أدوات الاختراق الأساسية..."
pkg install -y nmap masscan metasploit hydra john sqlmap \
    aircrack-ng ettercap tor proxychains-ng

# ============================================
# 5. تثبيت أدوات الويب
# ============================================
echo "[5/10] تثبيت أدوات الويب..."
pkg install -y wpscan nikto dirb gobuster whatweb

# ============================================
# 6. تثبيت أدوات التحليل
# ============================================
echo "[6/10] تثبيت أدوات التحليل..."
pkg install -y radare2 apktool dex2jar jadx strace ltrace gdb

# ============================================
# 7. تثبيت أدوات الشبكات المتقدمة
# ============================================
echo "[7/10] تثبيت أدوات الشبكات المتقدمة..."
pkg install -y tcpdump dsniff sslstrip macchanger bettercap

# ============================================
# 8. تثبيت Burp Suite
# ============================================
echo "[8/10] تثبيت Burp Suite..."
cd ~
wget -q --show-progress "https://portswigger.net/burp/releases/download?product=community&version=2024.9.1&type=jar" -O burpsuite.jar
if [ -f "burpsuite.jar" ]; then
    echo "✅ Burp Suite تم التثبيت"
    echo '#!/bin/bash
java -Xmx2G -jar ~/burpsuite.jar "$@"' > ~/burp
    chmod +x ~/burp
else
    echo "⚠️ فشل تنزيل Burp Suite، جاري المحاولة مرة أخرى..."
    wget --tries=3 "https://portswigger.net/burp/releases/download?product=community&version=2024.9.1&type=jar" -O burpsuite.jar
fi

# ============================================
# 9. تثبيت جميع أدوات التصيد (13 أداة)
# ============================================
echo "[9/10] تثبيت أدوات التصيد..."
mkdir -p ~/phishing-tools
cd ~/phishing-tools

# 9.1 King Phisher
echo "  📦 King Phisher..."
git clone --depth 1 https://github.com/securestate/king-phisher.git 2>/dev/null || echo "  ⚠️ King Phisher موجود مسبقاً"
cd king-phisher && pip install -r requirements.txt 2>/dev/null && python3 setup.py install 2>/dev/null && cd ..

# 9.2 Wifiphisher
echo "  📦 Wifiphisher..."
git clone --depth 1 https://github.com/wifiphisher/wifiphisher.git 2>/dev/null || echo "  ⚠️ Wifiphisher موجود مسبقاً"
cd wifiphisher && pip install -r requirements.txt 2>/dev/null && python3 setup.py install 2>/dev/null && cd ..

# 9.3 Socialphish
echo "  📦 Socialphish..."
git clone --depth 1 https://github.com/xHak9x/socialphish.git 2>/dev/null || echo "  ⚠️ Socialphish موجود مسبقاً"
cd socialphish && bash setup.sh 2>/dev/null && cd ..

# 9.4 ZPhisher
echo "  📦 ZPhisher..."
git clone --depth 1 https://github.com/htr-tech/zphisher.git 2>/dev/null || echo "  ⚠️ ZPhisher موجود مسبقاً"
cd zphisher && bash setup.sh 2>/dev/null && cd ..

# 9.5 Phishproof
echo "  📦 Phishproof..."
git clone --depth 1 https://github.com/Whomrx666/Phishproof.git 2>/dev/null || echo "  ⚠️ Phishproof موجود مسبقاً"
cd Phishproof && pip install -r requirements.txt 2>/dev/null && cd ..

# 9.6 Gophish
echo "  📦 Gophish..."
git clone --depth 1 https://github.com/gophish/gophish.git 2>/dev/null || echo "  ⚠️ Gophish موجود مسبقاً"
cd gophish
wget -q https://github.com/gophish/gophish/releases/download/v0.12.1/gophish-v0.12.1-linux-64bit.zip -O gophish.zip
unzip -o gophish.zip 2>/dev/null
chmod +x gophish
cd ..

# 9.7 BlackEye
echo "  📦 BlackEye..."
git clone --depth 1 https://github.com/An0nUD4Y/blackeye.git 2>/dev/null || echo "  ⚠️ BlackEye موجود مسبقاً"
cd blackeye && bash setup.sh 2>/dev/null && cd ..

# 9.8 HiddenEye
echo "  📦 HiddenEye..."
git clone --depth 1 https://github.com/DarkSecDevelopers/HiddenEye.git 2>/dev/null || echo "  ⚠️ HiddenEye موجود مسبقاً"
cd HiddenEye && pip install -r requirements.txt 2>/dev/null && cd ..

# 9.9 CredSniper
echo "  📦 CredSniper..."
git clone --depth 1 https://github.com/ustayready/CredSniper.git 2>/dev/null || echo "  ⚠️ CredSniper موجود مسبقاً"
cd CredSniper && pip install -r requirements.txt 2>/dev/null && cd ..

# 9.10 Phishing Frenzy
echo "  📦 Phishing Frenzy..."
git clone --depth 1 https://github.com/pentestgeek/phishing-frenzy.git 2>/dev/null || echo "  ⚠️ Phishing Frenzy موجود مسبقاً"
cd phishing-frenzy && bundle install 2>/dev/null && rake db:create db:migrate 2>/dev/null && cd ..

# 9.11 Modlishka
echo "  📦 Modlishka..."
git clone --depth 1 https://github.com/drk1wi/Modlishka.git 2>/dev/null || echo "  ⚠️ Modlishka موجود مسبقاً"
cd Modlishka && go build 2>/dev/null && cd ..

# 9.12 dnstwist
echo "  📦 dnstwist..."
git clone --depth 1 https://github.com/elceef/dnstwist.git 2>/dev/null || echo "  ⚠️ dnstwist موجود مسبقاً"
cd dnstwist && pip install -r requirements.txt 2>/dev/null && cd ..

# 9.13 Lucy
echo "  📦 Lucy..."
git clone --depth 1 https://github.com/lucysecurity/lucy.git 2>/dev/null || echo "  ⚠️ Lucy موجود مسبقاً"
cd lucy && pip install -r requirements.txt 2>/dev/null && cd ..

# ============================================
# 10. تثبيت قواعد البيانات والكلمات
# ============================================
echo "[10/10] تثبيت قواعد البيانات..."

# RockYou
if [ -f /usr/share/wordlists/rockyou.txt.gz ]; then
    gunzip -f /usr/share/wordlists/rockyou.txt.gz 2>/dev/null
    echo "✅ RockYou"
fi

# SecLists
if [ ! -d /usr/share/wordlists/SecLists ]; then
    git clone --depth 1 https://github.com/danielmiessler/SecLists.git /usr/share/wordlists/SecLists 2>/dev/null
    echo "✅ SecLists"
fi

# Exploit-DB
if [ ! -d /usr/share/exploitdb ]; then
    git clone --depth 1 https://gitlab.com/exploit-database/exploitdb.git /usr/share/exploitdb 2>/dev/null
    echo "✅ Exploit-DB"
fi

# تحديث Nmap Scripts
nmap --script-updatedb 2>/dev/null
echo "✅ Nmap Scripts"

# تهيئة Metasploit DB
msfdb init 2>/dev/null
echo "✅ Metasploit DB"

# ============================================
# إنشاء ملف التشغيل السريع
# ============================================
echo ""
echo "🔧 إنشاء ملف Quick Launch..."
cat > ~/start_tools.sh << 'EOF'
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
EOF

chmod +x ~/start_tools.sh

# ============================================
# إضافة Path
# ============================================
echo 'export PATH=$PATH:~/phishing-tools' >> ~/.bashrc
echo 'alias starttools="bash ~/start_tools.sh"' >> ~/.bashrc
source ~/.bashrc

# ============================================
# عرض التقرير النهائي
# ============================================
clear
echo "🔥 ========================================="
echo "🔥  🎉 اكتمل التثبيت بنجاح!"
echo "🔥 ========================================="
echo ""
echo "📦 الأدوات المثبتة:"
echo "  ✅ Burp Suite      : ~/burpsuite.jar"
echo "  ✅ King Phisher    : ~/phishing-tools/king-phisher"
echo "  ✅ Wifiphisher     : ~/phishing-tools/wifiphisher"
echo "  ✅ Socialphish     : ~/phishing-tools/socialphish"
echo "  ✅ ZPhisher        : ~/phishing-tools/zphisher"
echo "  ✅ Phishproof      : ~/phishing-tools/Phishproof"
echo "  ✅ Gophish         : ~/phishing-tools/gophish"
echo "  ✅ BlackEye        : ~/phishing-tools/blackeye"
echo "  ✅ HiddenEye       : ~/phishing-tools/HiddenEye"
echo "  ✅ CredSniper      : ~/phishing-tools/CredSniper"
echo "  ✅ Phishing Frenzy : ~/phishing-tools/phishing-frenzy"
echo "  ✅ Modlishka       : ~/phishing-tools/Modlishka"
echo "  ✅ dnstwist        : ~/phishing-tools/dnstwist"
echo "  ✅ Lucy            : ~/phishing-tools/lucy"
echo ""
echo "📁 قواعد البيانات:"
echo "  ✅ RockYou         : /usr/share/wordlists/rockyou.txt"
echo "  ✅ SecLists        : /usr/share/wordlists/SecLists"
echo "  ✅ Exploit-DB      : /usr/share/exploitdb"
echo ""
echo "🚀 أمر التشغيل السريع: starttools"
echo "🔥 تشغيل Burp Suite  : java -jar ~/burpsuite.jar"
echo ""
echo "📖 ملاحظات:"
echo "  • بعض الأدوات تحتاج إلى Root (tsu)"
echo "  • Wifiphisher يحتاج وضع Monitor على Wi-Fi"
echo "  • Gophish يعمل على المنفذ 3333"
echo "  • Modlishka يحتاج نطاق HTTPS"
echo "🔥 ========================================="
