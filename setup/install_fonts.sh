git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
git clone --filter=blob:none https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
./install.sh
cd ..
rm -rf nerd-fonts


