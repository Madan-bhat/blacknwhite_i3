echo -n "
################################### INSTALLING THE BLACKNWHITE RICE ###################################
"

echo -n "
################################### INSTALLING THE NESSACARY PACKAGES ###################################
"

cd $HOME
sudo pacman -S git base-devel
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER ./yay-git
cd yay-git
makepkg -si

cd $HOME

yay -S polybar \ 
i3-gaps \ 
dmenu \
picom-git \ 
gtk-3.0 \ 
tty-clock \
alacritty \ 
powerline \
nautilus \
htop \
bashtop \
code \
nitrogen \
mpd \

echo -n "
################################### INSTALLING THE NESSACARY FONTS ###################################
"

yay -S  ttf-inconsolata 
 ttf-font-awesome materialIcons \
 ttf-all-the-icons material-icons-git \
 ttf-nerd-fonts-symbols-mono \
 terminus-font \
 playerctl \
 nerd-fonts-terminus \



echo -n "
################################### INSTALLING THE CONFIGS ###################################
"

if [ -d ~/.i3]; then 
echo "i3 configs detected ; backing it up at $HOME/.i3_old"
mkdir $HOME/i3_old && mv $HOME/.i3/* $HOME/i3_old/
        cp -r .i3/* $HOME/.i3

    else
        echo "Installing i3 configs..."
        mkdir $HOME/.i3 && cp -r .i3/* $HOME/.i3/;

if [ -d ~/.Xresources]; then 
echo "Xresources file detected ; backing it up at $HOME/.Xresources_old"
mv $HOME/.Xresources .Xresources_old
        cp -r $HOME/blacknwhite/.Xresources $HOME/.Xresources

    else
        echo "Installing Xresources configs..."
        cp -r .Xresources $HOME/.Xresources

if [ -d ~/.icons]; then 
echo "some icon files detected"
 cp -r .icons/* $HOME/.icons/

    else
        echo "Installing icons configs..."
        mkdir $HOME/.icons/
        cp -r .icons/* $HOME/.icons/


if [ -d ~/.config]; then 
echo "some configs files detected ; backing them up at $HOME/.config_old"
cp -r $HOME/.config $HOME/.config_old
rm -rf $HOME/.config
mkdir $HOME/.config/
cp -r .config/* $HOME/.config/

    else
        echo "Installing icons configs..."
        mkdir $HOME/.icons/
        cp -r .icons/* $HOME/.icons/

echo -n "
################################### INSTALLING THE DMENU THEME ###################################
"
sudo git clone https://github.com/Madan-bhat/blacknwhite_dmenu.git /opt/
cd blacknwhite_dmenu
sudo make clean
sudo make install

cd $HOME
echo -n "
################################### INSTALLING THE GRUB THEME ###################################
"
cp -r usr/share/grub/themes/sleek/* /usr/share/grub/themes/sleek/
sudo echo GRUB_THEME="/usr/share/grub/themes/sleek/theme.txt" >> /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg