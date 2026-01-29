export PATH="$HOME/.local/bin:$PATH"

if [ -e "$HOME/.cargo" ]; then;
    . "$HOME/.cargo/env"
fi

if [ -e "$HOME/.zprofile_work" ]; then;
    . "$HOME/.zprofile_work"
fi
