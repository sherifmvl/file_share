

#Awesome Console Services Cheat Sheet

A curated list of HTTP/CLI services you can use directly from the terminal with tools like **curl**, **wget**, **nc**, or **ssh**.

Inspired by:
- GitHub: chubin/awesome-console-services
- Tools like asciinema, VHS, wttr.in, cheat.sh, rate.sx, etc.

---

## 1. IP Address & Network Info

### Public IP (single line)
curl ifconfig.me
curl ipinfo.io/ip
curl icanhazip.com
curl checkip.amazonaws.com
curl ifconfig.co

### Full IP details (JSON)
curl ipinfo.io
curl https://ipapi.co/json
curl httpbin.org/ip
curl https://ifconfig.co/json

### DNS / resolver tricks
dig @1.1.1.1 whoami.cloudflare ch txt +short        # your IP via Cloudflare DNS
dig @ns1.google.com o-o.myaddr.l.google.com TXT +short
curl https://dnsjson.com/resolver.dnscrypt.info/TXT.json
curl "https://edns.ip-api.com/json"

---

## 2. Geolocation

curl api.ip2location.io?ip=8.8.8.8
curl ipinfo.io/8.8.8.8
curl ip-api.com/8.8.8.8
curl ifconfig.co/country
curl ifconfig.co/city
curl ifconfig.es/geo
curl ifconfig.es/json

---

## 3. Text Sharing / Pastebin-like Services

echo "Hello world" | curl -F 'file=@-' 0x0.st
echo "Hello world" | curl -F 'clbin=<-' https://clbin.com
echo "Hello world" | nc termbin.com 9999
echo "Hello world" | curl -F 'sprunge=<-' sprunge.us

# textdb.dev – create simple text records
echo "Hello world" | curl -H "content-type: text/plain" \
  -d @- https://textdb.dev/api/data/my-text-id

# patchbay.pub – simple pub/sub style HTTP
curl https://patchbay.pub/my-channel -d "Hello world!"
curl -s https://patchbay.pub/my-channel

---

## 4. URL Shorteners

curl "https://tinyurl.com/api-create.php?url=https://example.com"
curl "https://is.gd/create.php?format=simple&url=https://example.com"

---

## 5. File Transfer from the CLI

# transfer.sh
curl --upload-file ./file.txt https://transfer.sh/file.txt

# 0x0.st
curl -F file=@./file.txt https://0x0.st

# oshi.at
nc oshi.at 7777 < file.txt
curl https://oshi.at -F f=@file.txt

# pixeldrain
curl -T ./file.txt https://pixeldrain.com/api/file/

---

## 6. QR Codes

# Quick QR in text mode
curl qrenco.de/https://example.com
echo "Hello from CLI" | curl -F-=\<- qrenco.de

# Image QR (PNG)
curl "https://api.qrserver.com/v1/create-qr-code/?size=200x200&data=HelloWorld" \
  --output qrcode.png

---

## 7. Weather & Moon

curl wttr.in
curl wttr.in/London
curl wttr.in/Bangalore?format=3
curl wttr.in/Moon       # moon phases

Some other fun weather sources:
finger oslo@graph.no
curl https://tgftp.nws.noaa.gov/data/observations/metar/stations/KJFK.TXT

---

## 8. News, Crypto & Finance

# General news
curl "https://getnews.tech/world+cup"

# Hacker News feed
curl hkkr.in

# Crypto rates (from author of wttr.in)
curl rate.sx

# Simple crypto price APIs
curl https://api.coindesk.com/v1/bpi/currentprice.json

# Fiat FX rates
curl https://open.er-api.com/v6/latest/USD

---

## 9. Documentation & Cheat Sheets

# The legendary cheat.sh
curl cheat.sh            # help/usage
curl cheat.sh/tar
curl cheat.sh/grep
curl cheat.sh/ipcalc
curl cheat.sh/python

# Subnet calc (Hackertarget)
curl "https://api.hackertarget.com/subnetcalc/?q=192.168.1.0/24"

---

## 10. Generators (Messages, Names, Random Stuff)

# Git commit messages
git commit -m "$(curl -s whatthecommit.com/index.txt)"

# Random integer
curl "https://www.random.org/integers/?num=1&min=1&max=100&col=1&base=10&format=plain&rnd=new"

# GUID / UUID
curl https://www.uuidtools.com/api/generate/v4

# Jokes
curl -H "Accept: text/plain" https://icanhazdadjoke.com
curl https://api.chucknorris.io/jokes/random

# Fake names
curl https://pseudorandom.name
curl https://names.drycodes.com/10

---

## 11. Fun & Entertainment

# Animated parrot
curl https://parrot.live

# Nyan cat
curl ascii.live/nyan
curl ascii.live/forrest
curl https://poptart.spinda.net

# Star Wars
curl https://asciitv.fr              # via curl
nc towel.blinkenlights.nl 23        # via netcat
ssh movie.gabe565.com               # with controls

# Emoji race
curl node-web-console.glitch.me

# Animated goodbye
curl https://byemck.atulr.com

### SSH / Telnet Games

ssh sshtron.zachlatta.com       # snake
ssh netris.rocketnine.space     # multiplayer tetris
ssh play@ascii.town             # 2048, snake, freecell
ssh gameroom@bitreich.org       # arcade games
telnet mtrek.com 1701           # Star Trek
telnet dungeon.name 20028       # infinite cave adventure
nc freechess.org 23             # chess (also telnet)

---

## 12. Scripts (One-liners That Fetch & Run)

# ⚠️ Always inspect scripts before piping into `bash` or `python`.

# Speedtest
curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -

# Neofetch
curl -sL https://raw.githubusercontent.com/dylanaraps/neofetch/master/neofetch | bash

# Rickroll
curl -sL https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash

---

## 13. HTTP Debugging / Echo Services

curl -I https://example.com
curl https://httpbin.org/get
curl https://httpbin.org/headers
curl https://postman-echo.com/get
curl https://ifconfig.co

---

## 14. IP / Subnet Tools Quick Examples

# Simple IP info
curl httpbin.org/ip
curl wtfismyip.com/json

# Whois, nmap, links, etc. (Hackertarget APIs)
curl "https://api.hackertarget.com/whois/?q=example.com"
curl "https://api.hackertarget.com/nmap/?q=93.184.216.34"
curl "https://api.hackertarget.com/pagelinks/?q=example.com"

---

## 15. Terminal Recording & GIFs (asciinema + VHS)

Sometimes you want those live terminal demo GIFs you’ve seen in READMEs.

### 15.1 asciinema – Record & Share Terminal Sessions

Install (examples):

# Debian/Ubuntu
sudo apt install asciinema

# Fedora/RHEL
sudo dnf install asciinema

# Arch
sudo pacman -S asciinema

Basic usage:

asciinema rec demo.cast    # start recording
# ... run your commands ...
exit                       # or Ctrl+D to stop

asciinema play demo.cast   # replay locally

You can upload to asciinema.org for a shareable embed.

### 15.2 VHS – Generate Terminal GIFs from Code

VHS lets you write GIFs as code using `.tape` files, and renders GIF/MP4/WebM.

Install (for many distros):

# Arch example
sudo pacman -S vhs

Example demo.tape:

Output demo.gif
Set FontSize 36
Set Width 1200
Set Height 600
Type "echo 'Hello from VHS!'" 
Enter
Sleep 3 s

Render the GIF:

vhs < demo.tape

You now have a demo.gif that you can drop into a README, wiki, or blog.

---

## 16. Clients You’ll Typically Use

Most of these are already installed on Linux/macOS:

- curl
- wget
- http (HTTPie)
- nc / netcat
- ssh
- telnet
- aria2
- rclone

---

## 17. Quick Copy-Paste Snippets

### Show weather + IP + location in one go

echo "IP:" && curl -s ifconfig.me && echo
echo "Location:" && curl -s ipinfo.io/city && echo
echo "Weather:" && curl -s wttr.in?format=3 && echo

### Random useful combo: joke + fortune-style quote

echo "Joke:" && curl -s https://icanhazdadjoke.com/ \
  -H "Accept: text/plain" && echo
echo "Quote:" && curl -s https://api.quotable.io/random | jq -r '.content'

---

Happy hacking from the terminal!
Feel free to extend this file with your own favorite console services.
