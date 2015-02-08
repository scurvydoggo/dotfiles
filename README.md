My Vim configs, works happily for both terminal and gvim.

## To deploy

```bash
git clone http://github.com/andynygard/vimrc.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd .vim
git submodule init
git submodule update
```

## Updating bundles

```bash
git submodule foreach git pull origin master
```
