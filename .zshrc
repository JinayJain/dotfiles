# If you come from bash you might have to change your $PATH.  export PATH=$HOME/bin:/usr/local/bin:$PATH 
# Path to your oh-my-zsh installation.
  export ZSH=/home/jinay/.oh-my-zsh

 #Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="sobole"
SOBOLE_THEME_MODE=dark

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).  export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git 
    zsh-autosuggestions 
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export TERM="xterm-256color"
export PATH=$HOME/bin:$PATH
bindkey -s '^k' '^Ucd ..^M'
bindkey "^ " autosuggest-accept

function chpwd() {
    emulate -L zsh
    ls -a
}

bindkey -s '^o' '^Uranger^M'
# aliases
alias vi="nvim"
alias vim="nvim"
alias oldvim="/usr/bin/vim"
#alias comptonconf="vim ~/.config/compton.conf"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias i3conf="vim ~/.config/i3/config"
alias vimrc="vim ~/.config/nvim/init.vim"
alias zshrc="vim ~/.zshrc"
alias walr="wal -i $HOME/Pictures/Wallpapers"
#alias Xresources="vim ~/.Xresources"
#alias termiteconf="vim ~/.config/termite/config"
#alias Xdefaults="vim ~/.Xdefaults"
#alias killjobs="kill $(jobs)"
#alias docs="cd ~/Documents"
#alias down="cd ~/Downloads"
#alias dev="cd ~/Dev"
#alias c.="code ."
alias sp=". spv2"

#(wal -t -q &)
#cat /home/jinay/.cache/wal/sequences

setopt correct

# EXPORTS
export EDITOR=nvim

# DON'T INSERT ANYTHING AFTER THIS
# -------------------------------
# NO NO NO, UNLESS IT IS SOMETHING TO BE PRINTED
# -------------------------------

(cat ~/.cache/wal/sequences &)

zstyle ':completion:*' matcher-list '' \
  'm:{a-z\-}={A-Z\_}' \
  'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
  'r:|?=** m:{a-z\-}={A-Z\_}'
