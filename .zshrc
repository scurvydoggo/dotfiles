# Load plugins (antibody must be installed)
source <(antibody init)
antibody bundle denysdovhan/spaceship-prompt

SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_RPROMPT_ORDER=dir

# Move all of the status prompts to the right, leaving only the minimum on the left
SPACESHIP_RPROMPT_ORDER=(${SPACESHIP_PROMPT_ORDER})
SPACESHIP_PROMPT_ORDER=(
  dir           # Current directory
  exit_code     # Exit code section
  char          # Prompt character
)

for del in ${SPACESHIP_PROMPT_ORDER[@]} # Remove the left prompt items that are also in the rightfrom the right
do
  SPACESHIP_RPROMPT_ORDER=("${SPACESHIP_RPROMPT_ORDER[@]/$del}")
done

# Launch tmux
if [ -z $TMUX ]; then; exec tmux; fi

# the fuck
if [ -x $(which thefuck) 2>/dev/null ]; then; eval $(thefuck --alias); fi
