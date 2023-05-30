# PRE-REQUISITE: Run ~/.dotfiles/boostrap
source ~/.zsh_plugins.sh

# zsh: autocompletion
autoload -Uz compinit bashcompinit && compinit && bashcompinit

SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL=⚡
SPACESHIP_CHAR_SUFFIX=" "

# Move all of the status prompts to the right, leaving only the minimum on the left
SPACESHIP_RPROMPT_ORDER=""
SPACESHIP_PROMPT_ORDER=(
  dir           # Current directory
  exit_code     # Exit code section
  char          # Prompt character
)

# emacs keymap (e.g ctrl+a and ctrl+e)
bindkey -e

# Coloured ls
alias ls='ls -G'

# Git config
if [ -x "$(command -v git)" ]; then
    git config --global core.editor "vim" 
    git config --global alias.lg  "log --graph --pretty=tformat:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --decorate=full"
fi

# Increase the zsh Ctrl+R history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

# nvim
if [ -x "$(command -v nvim)" ]; then; alias vim='nvim'; fi

# pipx
if [ -x "$(command -v pipx)" ]; then;
    eval "$(register-python-argcomplete pipx)"
fi

# the fuck
if [ -x "$(command -v thefuck)" ]; then; eval $(thefuck --alias); fi

# Launch tmux if we are in alacritty
if [ -z "${TMUX}" ] && [ -n "${ALACRITTY_WINDOW_ID}" ]; then; exec tmux; fi
