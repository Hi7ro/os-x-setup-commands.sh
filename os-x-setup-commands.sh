xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install --cask iterm2
# update iterm2 settings -> colors, keep directory open new shell, keyboard shortcuts
brew install bash # latest version of bash
# set brew bash as default shell
brew install htop
brew install neofetch 
brew install speedtest-cli
brew install vcprompt
# update bash_profile
brew install --cask lulu #better firewall
brew install --cask spectacle
brew install --cask alfred
# set CMD+space to launch alfred
brew install --cask firefox
brew install --cask istat
# install nvm/node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install stable
mkdir ~/workspace
npm install -g lite-server eslint
brew install --cask visual-studio-code
# update vscode settings
# install vscode extensions 
