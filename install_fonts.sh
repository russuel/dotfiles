# Install nerd fonts for icons and ligatures
mkdir /home/$USER/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/DroidSansMono.zip /home/$USER/Downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/DejaVuSansMono.zip /home/$USER/Downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip /home/$USER/Downloads
cd /home/$USER/Downloads
7za e DroidSansMono.zip -o/home/$USER/.fonts
7za e DejaVuSansMono.zip -o/home/$USER/.fonts
7za e JetBrainsMono.zip -o/home/$USER/.fonts
fc-cache -fv
