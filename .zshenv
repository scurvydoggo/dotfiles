export PATH="$PATH:$HOME/.local/bin"

if [ -x "$(command -v cargo)" ]; then;
    . "$HOME/.cargo/env"
fi

if [ -e "$HOME/.zshenv_work" ]; then;
    . "$HOME/.zshenv_work"
fi
