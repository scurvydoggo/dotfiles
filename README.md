## To deploy

### Prerequisites

- `zsh` (not omz)
- [FiraCode](https://github.com/tonsky/FiraCode)

### Steps

```bash
git clone http://github.com/andynygard/dotfiles.git ~/.dotfiles
cd ~/.dotfiles && ./bootstrap
```

## Updating bundles

```bash
git submodule foreach git remote set-head origin -a
git submodule foreach git pull origin HEAD
```
