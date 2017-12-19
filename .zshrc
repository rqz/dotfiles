# load zgen
source "${HOME}/.zgen/zgen.zsh"
 
# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"
 
    zgen oh-my-zsh
 
    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/history-substring-search
    zgen oh-my-zsh plugins/colored-man-pages
    zgen load zsh-users/zsh-syntax-highlighting
 
    # completions
    zgen load zsh-users/zsh-completions src
 
    # theme
    zgen oh-my-zsh themes/arrow
 
    # save all to init script
    zgen save
fi
 
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Appends every command to the history file once it is executed
setopt inc_append_history
# Reloads the history whenever you use it
setopt share_history

# Keychain 
eval `keychain -q --agents ssh --eval id_ed25519_git`

# Aliases
alias v='vim'
alias c='clear'
alias q='exit'
alias df='df -H'
alias du='du -ch'
alias update='yaourt -Suya --noconfirm'
alias ci3='vim ~/.i3/config'
alias czsh='vim ~/.zshrc'
alias cvim='vim ~/.vimrc'
alias cxres='vim ~/.extend.Xresources'
alias cranger='vim ~/.config/ranger/rc.conf'
#alias mirrors='sudo pacman-mirrors -g'
#EOF
