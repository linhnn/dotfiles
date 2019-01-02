# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export GOPATH="$HOME/Projects/go"
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='nvim'
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vim="nvim"

# Node verion manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^ ' autosuggest-accept

# Customise the Powerlevel9k prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  custom_medium dir vcs newline status
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
## Add the custom Medium M icon prompt segment
POWERLEVEL9K_CUSTOM_MEDIUM="echo -n $'\uE711'"
POWERLEVEL9K_CUSTOM_MEDIUM_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_MEDIUM_BACKGROUND="white"
## Add the custom freeCodeCamp prompt segment
POWERLEVEL9K_CUSTOM_FREECODECAMP="echo Vita"
POWERLEVEL9K_CUSTOM_FREECODECAMP_FOREGROUND="white"
POWERLEVEL9K_CUSTOM_FREECODECAMP_BACKGROUND="cyan"
## Load Nerd Fonts with Powerlevel9k theme for Zsh
ddPOWERLEVEL9K_MODE='nerdfont-complete'
source ~/powerlevel9k/powerlevel9k.zsh-theme

# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
#   if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
