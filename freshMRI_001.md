freshMRI 001: system tools
==========

These programs are essential to the freshMRI approach to setting up neuroimaging environments. Space saving tips will be provided where possible to keep the system lean and mean, but other than Sublime Text, these are all absolutely mandatory.

###[Xcode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12): command line tools

We don't need the whole package, just the Command Line Tools, which are now offered in a separate download.
```
$ xcode-select --install
```
A pop-up window will ask if you would like to install the tools. Select 'Install' ([here is a step-by-step guide with screenshots](http://www.computersnyou.com/2025/2013/06/install-command-line-tools-in-osx-10-9-mavericks-how-to/)).

###[Homebrew](brew.sh): package management

Homebrew

```
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew doctor
```
If everything is cool, it will return 'system ready to brew.' Otherwise, follow the instructions it gives.

Tap the caskroom, tap versions (so we can install ST3), install brew-cask
```
brew tap caskroom/cask
brew install brew-cask
```
All of the casks are installed by default to ~/Applications (well, they're symbolically linked there anyway). You can instead have brew-cask install to /Applications if you'd prefer with the following code:
```bash
brew cask --appdir=/Applications
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

###[Sublime Text](http://www.sublimetext.com/3): text editor (but an unstoppably awesome text editor indeed)

To install Sublime Text 3 (which is technically still in beta, but generally quite well supported), we first need to tap the caskroom/versions:
```bash
brew tap caskroom/versions
```
Then install Sublime Text 3
```bash
brew cask install sublime-text-3
```

###[XQuartz](http://xquartz.macosforge.org): X-11 interface
```
brew cask install xquartz
```
Before XQuartz will work, you need to log out and log back in (although if you want to be thorough, a hard reboot never hurts).
