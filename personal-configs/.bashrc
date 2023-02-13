# history
HISTSIZE=1000
HISTFILESIZE=2000
export HISTTIMEFORMAT="%Y-%m-%d %T "

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

OS="$(uname)"
if [[ "${OS}" == "Darwin" ]]
then
    export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.aliyun.com/homebrew/homebrew-core.git"
    export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.aliyun.com/homebrew/brew.git"
    export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.aliyun.com/homebrew/homebrew-bottles"
    export PATH=/opt/homebrew/bin/:$PATH

    [[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
# else
    # echo "Not macOS, Homebrew disabled"
fi
