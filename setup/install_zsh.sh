echo "Installing zsh..."
sudo apt install zsh
echo "Changing shell to zsh..."
chsh -s $(which zsh)
echo "Now you need to restart the machine so the default shell opens correctly"



