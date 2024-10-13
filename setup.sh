
install_packages() {
sudo apt install git vim-gtk3 lynx python3-pip tmux lynx ripgrep zoxide entr gimp inkscape blender krita rmlint rsync rclone ncdu btop exa bat mc flameshot p7zip-full tilix kitty putty neofetch htop xclip curl wget build-essential tldr trash-cli autojump progress stow neovim
}

configure_git() {
echo "Email:"
read EMAIL
git config --global user.email '$EMAIL'
echo "Name: "
git config --global user.name '$NAME'
read NAME
}

clone_repos() {
git clone https://github.com/russuel/dotfiles /home/$USER/dotfiles
git clone https://github.com/russuel/wiki /home/$USER/vimwiki
git clone https://github.com/VundleVim/Vundle.vim.git /home/$USER/.vim/bundle/Vundle.vim
}

stow_configurations() {
mv /home/$USER/.bashrc /home/$USER/.bashrc_old
pushd /home/$USER/dotfiles/
stow bash
stow vim
stow tmux
stow tilix
stow lynx
stow scripts
stow backgrounds
popd
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh

source /home/$USER/.bashrc
}

#install_packages
clone_repos
#stow_configurations


