# Diego's dotdir
> All my configuration files.

# Setup

## Configure the `~/`
```sh
cp ./bash/.bashrc ~/.bashrc
cp ./zsh/.zshenv ~/.zshenv
cp ./tmux/.tmux.conf ~/.tmux.conf
cp ./.xinitrc ~/.xinitrc
cp ./vim/.vimrc ~/.vimrc
cp ./zsh/.zshenv ~/.zshenv
```

## Configure the `~/.dotdir/`
```sh
mkdir ~/.dotdir
cp -r ./zsh ~/.dotdir/zsh
cp -r ./bash ~/.dotdir/bash
cp ./.aliasrc ~/.dotdir/.aliasrc
```

## Configure the `~/.config/`
```sh
cp -r ./alacritty ~/.config/alacritty
cp ./nvim/init.vim ~/.config/nvim/init.vim
cp ./fish/config.fish ~/.config/fish/config.fish
cp ./fish/fish_variables ~/.config/fish/fish_variables
cp ./fish/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish
```

## Configure the `~/.vim/`
```
cp -r ./vim/colors ~/.vim/colors
```

## Install Vim Dependencies
```sh
git clone https://github.com/olivierverdier/zsh-git-prompt.git ~/.dotdir/zsh/zsh-git-prompt/zshrc.sh
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.dotdir/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.dotdir/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```
