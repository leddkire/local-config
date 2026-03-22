echo "Installing fzf..."
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
echo "Installing ripgrep..."
sudo apt-get install ripgrep
echo "Installing fd..."
sudo apt-get install fd-find
echo 'Add to your .*rc: alias fd="fdfind"'
echo "Installing tmux..."
sudo apt-get install tmux
echo "Installing vim..."
sudo apt install vim
