# append global pip packages
if [ -x "$(command -v pip3)" ] ; then
    PATH="$HOME/.local/lib/python3.10/site-packages:$PATH"
fi
