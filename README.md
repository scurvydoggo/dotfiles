## To deploy

### Prerequisites

- `zsh`
- [Font: Meslo NF](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#meslo-nerd-font-patched-for-powerlevel10k)

### Steps

```bash
git clone http://github.com/scurvydoggo/dotfiles.git ~/.dotfiles
cd ~/.dotfiles && ./bootstrap
```

## Updating bundles

```bash
git submodule foreach git remote set-head origin -a
git submodule foreach git pull origin HEAD
```
