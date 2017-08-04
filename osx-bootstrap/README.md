osx-bootstrap
=============

#### Bootstrap for new OS X installs

These files will install a bunch of great tools on your newly installed Mac. If it's not a brand new install of OS X you'll most probably be able to use these anyway :)

## Quick Start

Run the following command to do a proper install of Homebrew, cask, oh-my-zsh, and a bunch of great tools and apps:

```
curl --silent https://raw.githubusercontent.com/secfigo/dotfiles/master/osx-bootstrap/install.sh | sh
```

## Customize Install

Names and directories are hardcoded into this project right now, so it makes more sense to take a few steps before leveraging this tool. To make it yours be sure to:

* `git clone https://github.com/secfigo/dotfiles.git` to get these files locally
* Edit `install.sh` and define your `$dir` directory
* Edit `settings.sh` and name your computer
* Edit `symlink-dotfiles.sh` and define your `$dev` directory
* Review and customize the apps installed from Brewfile & Caskfile

When you're all set, run `bash bootstrap.sh` to let the games begin!

## Requirements

You'll need to have OS X Command Line Tools installed to use git, which will be installed automatically when you're trying to use git for the first time (during homebrew installation); you'll get a nice pop-up window asking you to install it, so let it do that for you. If you want to you can remove the OSX CLT afterwards as you'll probably install newer versions of these tools anyway.

## settings.sh

Some sane settings for me, use them at your own risk!

## Cask upgrades

You can use the `cask-upgrade.sh` script to upgrade your Casks!
