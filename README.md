# global

## Homebrew

<https://brew.sh/index_ja>

## dotfiles

```sh
mkdir ~/Develop && cd ~/Develop && git clone git@github.com:KoheiKanagu/global.git
```

## ssh

```sh
ssh-keygen
cat ~/.ssh/id_rsa.pub | pbcopy

rm ~/.ssh/config && ln -s ~/Develop/global/global-private/dotfiles/config ~/.ssh/config
```

<https://github.com/settings/ssh/new>

## zsh

```sh
rm ~/.zshrc && ln -s ~/Develop/global/dotfiles/zshrc ~/.zshrc
```

## initialize

```sh
brewpull
```

## Ruby

```sh
brew install rbenv
rbenv install 3.2.2 && rbenv global 3.2.2
```

## Git

```sh
curl https://raw.githubusercontent.com/github/gitignore/refs/heads/main/Global/macOS.gitignore > ~/.gitignore_global

rm ~/.gitconfig && ln -s ~/Develop/global/dotfiles/gitconfig ~/.gitconfig
```

## Finder

隠しファイルを表示

```sh
defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder
```

## Font

<https://github.com/githubnext/monaspace>

## ccache

```sh
sudo ln -s $(which ccache) /usr/local/bin/gcc
sudo ln -s $(which ccache) /usr/local/bin/g++
sudo ln -s $(which ccache) /usr/local/bin/cc
sudo ln -s $(which ccache) /usr/local/bin/c++
sudo ln -s $(which ccache) /usr/local/bin/clang
sudo ln -s $(which ccache) /usr/local/bin/clang++
```
