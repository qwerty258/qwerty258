# Introduction

- 👋 Hi, I’m @qwerty258, yaofei zheng.
- 👀 I’m interested in C, embedded.
- 🌱 I’m currently learning nothing.
- 📫 You can reach me via email.

# Keywords that I understands

 * ABBYY
 * ADC
 * Adobe Acrobat
 * AM335x
 * ansible
 * apt
 * Arduino
 * C
 * C++
 * Calibre
 * CAN
 * CANOpen/CiA 401/CiA 402
 * Chrome
 * CMake
 * CMSIS-RTOS
 * cURL
 * Debian
 * debianrootfs
 * DeviceTree
 * DRAW.IO
 * DXVA
 * E-Prime
 * EPUB
 * ESP-IDF
 * ESP32
 * EXT2/3/4
 * F2FS
 * FAT12/16/32
 * FFmpeg
 * FileZilla
 * FreeRTOS
 * GB/T28181
 * GCC
 * GIT
 * GNU Autotools
 * GPIO
 * Graphviz
 * HTML
 * I2C
 * IBM SPSS
 * iOS
 * IP
 * JSON
 * KEIL
 * Libreoffice
 * linux
 * live555
 * macOS
 * mDNS
 * MFC
 * Microsoft Windows
 * Microsoft Word/Powerpoint/Excel/Visio
 * MQTT
 * mysql
 * nodejs
 * NVME
 * PCIe
 * phpmyadmin
 * pip
 * PWM
 * Python
 * QT
 * QUIC
 * RAID
 * RK3399
 * ROS
 * RTCP
 * RTI DDS
 * RTP
 * RTSP
 * Rust
 * SAS
 * SCSI
 * Serial Port/TTL/RS232/RS422/RS485
 * SIP
 * SPI
 * sqlite
 * ST-Link
 * STM32
 * STM32CubeMX
 * SVN
 * TCP
 * Thunderbird
 * u-boot
 * Ubuntu
 * UDP
 * Visual Studio
 * VLC
 * VSCode
 * WEB CGI
 * wget
 * Wireshark
 * youtube-dl
 * zephyr
 * Zigbee

# Personal configs

`.bashrc`:

```bash
# history
HISTSIZE=1000
HISTFILESIZE=2000
export HISTTIMEFORMAT="%Y-%m-%d %T "

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
```

`.bash_aliases`:

```bash
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -lh'
alias la='ls -A'
alias l='ls -CF'
alias rm='rm -v'
alias cp='cp -v --preserve=timestamps'
alias ..='cd ..'
alias q='exit'
alias mv='mv -vn'
alias rmdir='rmdir -v'
alias date='date -Iseconds'
alias rmeml='rm *.eml'
alias trash='gio trash'
```

`.vimrc`:

```vim
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

filetype on
filetype plugin off
filetype indent on

" Turn on syntax highlighting
syntax on

" Show line numbers
set number

" Color scheme
colorscheme elflord

" Show file stats
set ruler

" Blink cursor on error instead of beeping
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
```

`.gitconfig`:

```ini
[core]
	editor = vim
	autocrlf = false
[init]
	defaultBranch = main
```

`pip.conf`:

```ini
[global]
index-url = https://mirrors.aliyun.com/pypi/simple/

[install]
trusted-host=mirrors.aliyun.com
```

`.ssh/config`

```
Host github.com
     HostName github.com
     User git
     ProxyCommand connect -S 127.0.0.1:1080 %h %p
```

<!---
qwerty258/qwerty258 is a ✨ special ✨ repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->
