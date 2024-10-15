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

#### Apps ####

# git
if [ -x "$(command -v git)" ]; then
    git config --global core.editor "vim" 
    git config --global alias.lg  "log --graph --pretty=tformat:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --decorate=full"
fi

# nvim
if [ -x "$(command -v nvim)" ]; then; alias vim='nvim'; fi

# pipx
if [ -x "$(command -v pipx)" ]; then;
    eval "$(register-python-argcomplete pipx)"
fi

# Launch tmux if we are in terminal/alacritty
if [ -x "$(command -v tmux)" ] && [ -z "${TMUX}" ] && \
    ( [ -n "${GNOME_TERMINAL_SCREEN}" ] || [ -n "${WAYLAND_DISPLAY}" ] || [ -n "${ALACRITTY_WINDOW_ID}" ]); then
    exec tmux
fi

# p10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
