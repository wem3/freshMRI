freshMRI
==========

How to set up up a neuroimaging data analysis environment in OS X Mavericks using [Homebrew](brew.sh).

There are some truly excellent neuroimaging tools that are widely available and easy to use. Many neuroimagers are not (yet) computer scientists, however, and installing different software packages can be a bit of a challenge. This document is intended to make it a little bit easier to set up a Mac for neuroimaging data analysis.

Detailed explanations of each package can be found in the respective .md files. In the interest of keeping this even remotely short, current explanations are limited.

The code blocks are set up so that you can copy/paste them directly into a Terminal.app window (or whatever terminal you like to use). If you're not sure what that means, see [getting started](gettingstarted.md).

[Xcode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12): command line tools
==================

We don't need the whole package, just the Command Line Tools, which are now offered in a separate download.
```
$ xcode-select --install
```
A pop-up window will ask if you would like to install the tools. Select 'Install' ([here is a step-by-step guide with screenshots](http://www.computersnyou.com/2025/2013/06/install-command-line-tools-in-osx-10-9-mavericks-how-to/)).

[Homebrew](brew.sh): package management
==================

```
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew doctor
```
If everything is cool, it will return 'system ready to brew.' Otherwise, follow the instructions it gives.

Tap the caskroom, tap versions (so we can install ST3), install brew-cask
```
brew tap caskroom/cask
brew tap caskroom/versions
brew install brew-cask
```

To keep brews up to date, you can do
```
brew upgrade
```
To update Homebrew itself,
```
brew update
```
Things move pretty fast in brewworld, so update frequently.

[XQuartz](http://xquartz.macosforge.org): X-11 interface
==================
```
brew cask install xquartz
```
Before XQuartz will work, you need to log out and log back in (although if you want to be thorough, a hard reboot never hurts).

