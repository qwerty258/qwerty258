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
