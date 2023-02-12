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

## brew install

```sh
brew bundle install
```

## node

```sh
nvm install --lts && nvm alias default node
```

## global

```sh
brewpull
```

## Python

```sh
ln -s /usr/local/bin/python3 /usr/local/bin/python
```

## Git

```sh
gi macos > ~/.gitignore_global

rm ~/.gitconfig && ln -s ~/Develop/global/dotfiles/gitconfig ~/.gitconfig
```

## Finder

隠しファイルを表示

```sh
defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder
```

## warp

```sh
ln -s ~/Develop/global/warp/workflows ~/.warp/
```

## gh

```sh
# https://github.com/seachicken/gh-poi
gh extension install seachicken/gh-poi
```

## fvm

```sh
fvm install stable
brew unlink dart
```
