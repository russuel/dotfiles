# Install gimp
sudo apt install gimp
# Setup Photogimp
gimp &
git clone https://github.com/Diolinux/PhotoGIMP.git /home/$USER/photogimp
pkill -TERM gimp
cp -r /home/$USER/photogimp/.var /home/$USER/.var
rm -rf /home/$USER/photogimp

