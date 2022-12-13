# ANDY: Install Antibody: https://getantibody.github.io/install/, then run
#   antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
source ~/.zsh_plugins.sh

SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL=⚡
SPACESHIP_CHAR_SUFFIX=" "

# Move all of the status prompts to the right, leaving only the minimum on the left
SPACESHIP_RPROMPT_ORDER=(${SPACESHIP_PROMPT_ORDER})
SPACESHIP_PROMPT_ORDER=(
  dir           # Current directory
  exit_code     # Exit code section
  char          # Prompt character
)
for del in ${SPACESHIP_PROMPT_ORDER[@]} # Remove the left-side prompt items from the right-side
do
  SPACESHIP_RPROMPT_ORDER=("${SPACESHIP_RPROMPT_ORDER[@]/$del}")
done

# Use vim
if [ -x "$(command -v vim)" ] ; then
    export EDITOR=$(which vim)
    export VISUAL=$(which vim)
fi

# Coloured ls
alias ls='ls -G'

# Increase the Ctrl+R history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

# the fuck
if [ -x "$(command -v thefuck)" ]; then; eval $(thefuck --alias); fi

# Launch tmux
if [ -z $TMUX ]; then; exec tmux; fi
