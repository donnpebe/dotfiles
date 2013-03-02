# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="wezm+"

# Example aliases
alias zshrc="v ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias sourcez="source ~/.zshrc"
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails brew bundler gem donnpebe)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin:/usr/local/share/npm/bin

PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#########
# Node
#########
export NVM_HOME="$HOME/.nvm"
if [[ -f "$NVM_HOME/nvm.sh" ]]; then
  source "$NVM_HOME/nvm.sh"
fi

if npm -v > /dev/null 2>&1; then
  . <(npm completion)
fi


function mcd() {
  mkdir -p "$1" && cd "$1";
}

alias lg='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
alias v="vim"
