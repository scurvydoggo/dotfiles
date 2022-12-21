## To deploy

### Prerequisites

- Install `zsh` (not omz)
- Install [`antibody`](https://getantibody.github.io/install)
- Run `antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh`

### Steps

```bash
git clone http://github.com/andynygard/dotfiles.git ~/.dotfiles
ln -s ~/.dotfiles/.thymerc ~/.thymerc
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/.xbindkeysrc ~/.xbindkeysrc
ln -s ~/.dotfiles/.vim ~/.vim
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.zshenv ~/.zshenv
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.zsh_plugins.txt ~/.zsh_plugins.txt
cd .dotfiles
git submodule init
git submodule update
```

## Updating bundles

```bash
git submodule foreach git pull origin master
```
