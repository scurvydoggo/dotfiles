# PREREQUISITE MANUAL STEP: Install Antibody: https://getantibody.github.io/install/, then
#   antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
source ~/.zsh_plugins.sh

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

# Swap caps/escape key
if [ -x "$(command -v setxkbmap)" ]; then; setxkbmap -option caps:swapescape; fi

# Coloured ls
alias ls='ls -G'

# Git aliases
if [ -x "$(command -v git)" ]; then
    git config --global alias.lg  'log --all --decorate --oneline --graph'
fi

# Increase the zsh Ctrl+R history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

# the fuck
if [ -x "$(command -v thefuck)" ]; then; eval $(thefuck --alias); fi

# Launch tmux
if [ -z $TMUX ]; then; exec tmux; fi
