export PATH="$PATH:$HOME/.local/bin"

if [ -x "$(command -v cargo)" ]; then;
    . "$HOME/.cargo/env"
fi
