#####################
# ZSH
#####################

source ~/.antidote/antidote.zsh
antidote load ~/.zsh_plugins.txt

# p10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Increase the zsh Ctrl+R history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

# Completions
if type brew &>/dev/null; then
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi
autoload -Uz compinit
compinit

#####################
# Apps
#####################

###########
# CLI tools
###########

mkdir -p ~/.local/bin

# git
if [ -x "$(command -v git)" ]; then
    # Editor
    if [ -x "$(command -v nvim)" ]; then
        git config --global core.editor "nvim";
    else
        git config --global core.editor "vim";
    fi

    # Global gitignore
    git config --global core.excludesfile '~/.config/git/ignore'

    # Pretty log
    git config --global alias.lg  "log --graph --pretty=tformat:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --decorate=full"

    # Worktree creation
    git config --global alias.wta '!f() { git worktree add -b "$1" "worktrees/$1"; }; f'
fi

# nvim
if [ -x "$(command -v nvim)" ]; then alias vim='nvim'; fi

# WezTerm
if [ "$TERM_PROGRAM" = "WezTerm" ]; then
    # Press 't' to set pane title
    t() {
        wezterm cli set-tab-title "$*"
    }
fi

# podman
if [ -x "$(command -v podman)" ] && [ ! -x "$(command -v docker)" ]; then
    ln -s $(which podman) ~/.local/bin/docker
fi

###########
# Languages
###########

# pipx
if [ -x "$(command -v pipx)" ]; then eval "$(register-python-argcomplete pipx)"; fi

# fnm
if [ -x "$(command -v fnm)" ]; then eval "$(fnm env --use-on-cd --shell zsh)"; fi

# Launch tmux if we are in a terminal program (except WezTerm which has its own panes)
if [ -x "$(command -v tmux)" ] && [ -z "${TMUX}" ] && [ "$TERM_PROGRAM" != "WezTerm" ] && \
    ( [ -n "${GNOME_TERMINAL_SCREEN}" ] || [ -n "${WAYLAND_DISPLAY}" ]); then
    exec tmux
fi

#####################
# Theme
#####################

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
