sudo apt install git vim-gtk3 tmux lynx ripgrep fxf zoxide entr gimp inkscape blender krita rmlint rsync rclone ncdu btop exa bat mc flameshot p7zip-full mvp tilix alacritty kitty putty neofetch htop xclip pip3 curl wget build-essential qtcreator

git clone https://github.com/russuel/dotfiles /home/$USER/dotfiles
git clone https://githib.com/russuel/vimwiki /home/$USER/vimwiki
git clone https://github.com/VundelVim/Vundle.vim.git /home/$USER/.vim/bundle/Vundle.vim

mv /home/$USER/.bashrc /home/$USER/.bashrc_old
ln -s /home/$USER/dotfiles/.bashrc /home/$USER/.bashrc
ln -s /home/$USER/dotfiles/.vimrc /home/$USER/.vimrc
ln -s /home/$USER/dotfiles/tmux.conf /home/$USER/.config/tmux.conf
ln -s /home/$USER/dotfiles/.tmuxconf /home/$USER/.config/tmux.conf
ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh

source /home/$USER/.bashrc

# Install NVM and the current LTS NodeJS version
curl -o https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
source /home/$USER/.bashrc
nvm install node

#python scripts, ntfy 
pip3 install ntfy

# Setup Photogimp
open gimp &
git clone https://github.com/Diolinux/PhotoGIMP.git /home/$USER/photogimp
pkill -TERM gimp
cp /home/$USER/photogimp/.var /home/$USER/.var
rm -rf /home/$USER/photogimp

# Install nerd fonts for icons and ligatures
mkdir /home/$user/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/DroidSansMono.zip /home/$USER/Downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/DejaVuSansMono.zip /home/$USER/Downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/JetBrainsMono.zip /home/$USER/Downloads
cd /home/$USER/Downloads
7za e DroidSansMono.zip -o/home/$USER/.fonts
7za e DejaVuSansMono.zip -o/home/$USER/.fonts
7za e JetBrainsMono.zip -o/home$USER/.fonts
fc-cache -fv

# Tilix theme setup
mkdir -p /home/$USER/.config/tilix/schemes
wget https://github.com/arcticicestudio/nord-tilix/blob/develop/src/json/nord.json -p /home/$USER/tilix/themes/schemes/
dconf load /com/gexperts/Tilix/ < /home/$USER/dotfiles/terminix.dconf


# Install and setup Vscode
wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64 -p /home/$USER/Downloads
cd /home/$USER/Downloads
sudo apt install code*.deb

