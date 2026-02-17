# Self-Using Fish Shell Script

## Install Fish Shell

```bash
# For Debian/Ubuntu
sudo apt update
sudo apt install fish
# For Arch Linux
sudo pacman -S fish

chsh -s $(which fish)
```

## Install [Fisher](https://github.com/jorgebucaran/fisher)

```bash
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
```

## Install Extendions

```bash
fisher install jethrokuan/z
```

## Replace Files

```bash
cp fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish
cp fish_right_prompt.fish ~/.config/fish/functions/fish_right_prompt.fish
```
