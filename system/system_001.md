freshMRI_001: system setup - basic tools
----------

These programs are essential to the freshMRI approach to setting up neuroimaging environments. Space saving tips will be provided where possible to help keep your system lean and mean, but other than Sublime Text, these are all absolutely mandatory.  

![system tools](https://github.com/wem3/freshMRI/raw/master/images/freshMRI_001.png "xcode (CLT) homebrew brew-cask sublime text 3")  
---
###[Xcode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12): command line tools

We don't need the whole package, just the Command Line Tools, which are now offered in a separate download.
```bash
xcode-select --install
```
A pop-up window will ask if you would like to install the tools. Select 'Install.' It's pretty straightforward, but ([here is a step-by-step walkthrough with screenshots](http://www.computersnyou.com/2025/2013/06/install-command-line-tools-in-osx-10-9-mavericks-how-to/)).  

---
###[Homebrew](brew.sh): package management for command line tools

There's a GUI-based front-end now called [Cakebrew](https://www.cakebrew.com/) if you absolutely detest the command line. I haven't tested Cakebrew extensively, but have always had bad experiences in the past with graphical interfaces to package management...  


To install Homebrew from the line (as of 15-01-14):
```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
```
If everything is cool, it will return 'system ready to brew.' Otherwise, do just what the doctor orders.  

---
###[Homebrew Cask](caskroom.io): package management for GUI-based tools
```bash
brew install caskroom/cask/brew-cask
```
All of the applications installed via casks are placed by default in ~/Applications (well, they're symbolically linked there). You can instead tell brew-cask to put the symlinks in /Applications if you'd rather:
```bash
brew cask --appdir=/Applications
```

to keep brews (and casks) up to date, you can do:
```bash
brew upgrade
```
to update Homebrew itself:
```bash
brew update
```
Things change pretty fast in brewland, so update frequently.  

---
###[Sublime Text](http://www.sublimetext.com/3): text editor (but an unstoppably awesome text editor indeed)

To install Sublime Text 3 (which is technically still in beta, but generally quite well supported), we first need to tap the caskroom/versions:
```bash
brew tap caskroom/versions
```
Then install Sublime Text 3
```bash
brew cask install sublime-text-3
```  
---
###[XQuartz](http://xquartz.macosforge.org): X-11 interface
```bash
brew cask install xquartz
```
Before XQuartz will work, you need to log out and log back in (although if you want to be thorough, a hard reboot never hurts).
