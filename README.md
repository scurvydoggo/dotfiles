## To deploy

### Prerequisites

- Use `zsh` (not omz)

### Steps

```bash
git clone http://github.com/andynygard/dotfiles.git ~/.dotfiles
cd ~/.dotfiles && ./bootstrap
```

## Updating bundles

```bash
git submodule foreach git pull origin HEAD
```
