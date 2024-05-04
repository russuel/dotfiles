echo "Email:"
read EMAIL
echo "Name: "
read NAME

install_packages() {
sudo apt install git vim-gtk3 lynx python3-pip tmux lynx ripgrep zoxide entr gimp inkscape blender krita rmlint rsync rclone ncdu btop exa bat mc flameshot p7zip-full mvp tilix kitty putty neofetch htop xclip curl wget build-essential tldr trash-cli autojump progress
}

setup_git() {
git config --global user.name '$NAME'
git config --global user.email '$EMAIL'
}

clone_repos() {
git clone https://github.com/russuel/dotfiles /home/$USER/dotfiles
git clone https://github.com/russuel/wiki /home/$USER/vimwiki
git clone https://github.com/VundleVim/Vundle.vim.git /home/$USER/.vim/bundle/Vundle.vim
}

setup_configurations() {
mv /home/$USER/.bashrc /home/$USER/.bashrc_old
ln -s /home/$USER/dotfiles/.bashrc /home/$USER/.bashrc
ln -s /home/$USER/dotfiles/.vimrc /home/$USER/.vimrc
ln -s /home/$USER/dotfiles/.tmux.conf /home/$USER/.config/tmux.conf
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh

source /home/$USER/.bashrc
}

install_node() {
# Install NVM and the current LTS NodeJS version
curl -o https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
source /home/$USER/.bashrc
nvm install node
}

install_python_apps() {
#python scripts, ntfy 
pip3 install ntfy
}

setup_gimp() {
# Setup Photogimp
open gimp &
git clone https://github.com/Diolinux/PhotoGIMP.git /home/$USER/photogimp
pkill -TERM gimp
cp /home/$USER/photogimp/.var /home/$USER/.var
rm -rf /home/$USER/photogimp
}
install_fonts() {
# Install nerd fonts for icons and ligatures
mkdir /home/$USER/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/DroidSansMono.zip /home/$USER/Downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/DejaVuSansMono.zip /home/$USER/Downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/JetBrainsMono.zip /home/$USER/Downloads
cd /home/$USER/Downloads
7za e DroidSansMono.zip -o/home/$USER/.fonts
7za e DejaVuSansMono.zip -o/home/$USER/.fonts
7za e JetBrainsMono.zip -o/home/$USER/.fonts
fc-cache -fv
}

setup_tilix() {
# Tilix theme setup
mkdir -p /home/$USER/.config/tilix/schemes
wget https://github.com/arcticicestudio/nord-tilix/blob/develop/src/json/nord.json -p /home/$USER/tilix/themes/schemes/
}

until [install_packages]
until[setup_git]
until[clone_repos]
setup_configurations
install_node
install_python_apps
setup_gimp
install_fonts
setup_tilix
