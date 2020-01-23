# List of rice stuff

pwd=$(pwd)
sudo cp w1 /usr/bin/
cp $pwd/*.jpg ~/.local/share/backgrounds/
cp $pwd/*.png ~/.local/share/backgrounds/
cp $pwd/Roboto\ Mono\ Nerd\ Font\ Complete.ttf /usr/share/fonts/

# Install man-db and man-pages
sudo pacman -S man-db man-pages git htop pulseaudio pavucontrol w3m mupdf neofetch arandr neovim xclip ranger syncthing jdk-openjdk nodejs npm feh maim tk

# Make .aur directory
mkdir ~/.aur
mkdir ~/.local/share/backgrounds/

# Install st
cd ~/.aur
git clone https://aur.archlinux.org/st
cd st/src
ls
echo "Locate st directory"
read stdir
cd $stdir
patch config.h $pwd/st-patch
cd ../..
makepkg -si
cd


# Install nvim
mkdir ~/.config/nvim/
mkdir ~/.config/nvim/autoload/
cp $pwd/init.vim ~/.config/nvim/
cp $pwd/plug.vim ~/.config/nvim/autoload/

# Install ranger
mkdir /.config/ranger/
cp $pwd/rc.conf
cp $pwd/rifle.conf

# Get bashrc
cp $pwd/.bashrc ~
source ~/.bashrc

# Get syncthing


# Get brave browser
cd ~/.aur
git clone https://aur.archlinux.org/brave-bin.git
cd brave-bin
makepkg -si
cd
# Get vscode
cd ~/.aur
git clone https://aur.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code-bin
makepkg -si
cd

# Get spotify
cd ~/.aur
git clone https://aur.archlinux.org/spotify.git
curl -sS https://download.spotify.com/debian/pubkey.gpg | gpg --import
makepkg -si
cd

# Get JDK

# Get npm

# Get feh

# Set i3 config gaps
cp $pwd/config ~/.config/i3/

# Get arandr


# Get neofetch

# Change picom opacity rules
# Change /etc/xdg/picom.conf
sudo cp $pwd/picom.conf /etc/xdg/picom.conf

# Add exec picom -b

# Set natural scrolling
# Change /etc/X11/xorg.conf.d/40-touchpad.conf
sudo cp $pwd/40-touchpad.conf /etc/X11/xorg.conf.d/

# Get mupdf

# Get impressive
cd ~/.aur/
git clone https://aur.archlinux.org/impressive.git
cd impressive
makepkg -si
cd

# Get w3m for image preview

# Install pulseaudio

# Install tty-clock
cd ~/.aur
git clone https://aur.archlinux.org/tty-clock.git
cd tty-clock
makepkg -si
cd

# Install cli-visualizer
cd ~/.aur
git clone https://aur.archlinux.org/cli-visualizer.git
cd cli-visualizer
makepkg -si
cd

# Install dragon-drag-and-drop
cd ~/.aur
git clone https://aur.archlinux.org/dragon-drag-and-drop.git
cd dragon-drag-and-drop
makepkg -si
cd

# Install htop

# Install polybar
cd ~/.aur
git clone https://aur.archlinux.org/polybar.git
cd polybar
makepkg -si
cd


