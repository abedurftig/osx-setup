# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

echo "Installing Developer tools (XCode)"
xcode-select --install

# Check for Homebrew, install if required
if test ! $(which brew); then
  echo "Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing applications with Homebrew"
brew install git

echo "Installing apps with Homebrew Cask"

# Apps
apps=(
  visual-studio-code
  firefox
  dashlane
  iterm2
  google-chrome
  dropbox
  spectacle
  java8
  java
)

brew tap caskroom/cask
brew tap caskroom/versions

brew cask install --appdir="/Applications" ${apps[@]}

echo "Installing applications with Homebrew"
brew install jenv
eval "$(jenv init -)"

echo "Clean up Homebrew"
brew cleanup

#Install Zsh & Oh My Zsh
echo "Installing Oh My ZSH"
curl -L http://install.ohmyz.sh | sh

echo "Done"