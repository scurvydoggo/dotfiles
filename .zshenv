export PATH="$PATH:$HOME/.local/bin"

if [ -e "$HOME/.cargo" ]; then;
    . "$HOME/.cargo/env"
fi

if [ -e "$HOME/.zshenv_work" ]; then;
    . "$HOME/.zshenv_work"
fi
