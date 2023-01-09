# global

## ssh

```sh
ssh-keygen
cat ~/.ssh/id_rsa.pub | pbcopy

rm ~/.ssh/config && ln -s ~/Develop/global/dotfiles/config ~/.ssh/config
```

<https://github.com/settings/ssh/new>

## dotfiles

```sh
mkdir ~/Develop && cd ~/Develop && git clone git@github.com:KoheiKanagu/global.git
```

## Homebrew

<https://brew.sh/index_ja>

## zsh

```sh
rm ~/.zshrc && ln -s ~/Develop/global/dotfiles/zshrc ~/.zshrc
```

## brew install

```sh
brewpull
```

## [macOS install \- Flutter](https://flutter.dev/docs/get-started/install/macos)

1. Download the latest version of Flutter.
2. Install

```sh
flutter/bin/flutter pub global activate fvm
fvm global stable
flutter doctor
```

## node

```sh
nvm install --lts && nvm alias default node
```

## global

```sh
./activate.sh
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
