# python libs
if [ -x "$(command -v pip3)" ] ; then
    PATH="$HOME/.local/lib/python3.10/site-packages:$PATH"
fi

# cpp packages
if [ -x "$(command -v conan)" ] ; then
    LD_LIBRARY_PATH="$HOME/.local/lib/python3.10/site-packages:$PATH"
fi
