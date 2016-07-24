## To deploy
```bash
git clone http://github.com/andynygard/dotfiles.git ~/.dotfiles
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.vim ~/.vim
cd .dotfiles
git submodule init
git submodule update
```

## Updating bundles
```bash
git submodule foreach git pull origin master
```
