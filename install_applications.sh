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

git config --global --replace-all user.name abedurftig
git config --global --replace-all user.email dasnervtdoch@googlemail.com

brew install awscli
brew install kubectl
brew install gradle
brew install maven

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
  1password
  java8
  java
  jetbrains-toolbox
  docker
  slack
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
