
# colocar las pass que necesite el script a medida que se ejecuta, si no se colocan a tiempo
# podria detener el script anticipadamente

# CLICK AL TOCAR
# activar click al tocar touchpad
# debes ir a las configuraciones luego a la seccion del raton y activar click al tocar

# CAMBIAR ESCAPE POR CONTROL
# debes ir a gnome tweak tool y en la seccion de escritura cambiarlo

# PANTALLA COMPLETA TERMINAL ctrl F
# ir a preferencias atajos y cambiar f11 por ctrl F

# TEMA
# tema oscuro global -> si
# gtk+ -> numix
# iconos -> flat remix
# cursor -> adwaita predeterminado

# EXTENCIONES
# applications menu
# battery porcentage
# dash to dock
# drop down terminal
# laine


# SUBLIME TEXT 3
sudo add-apt-repository ppa:webupd8team/sublime-text-3 
sudo apt-get update 
sudo apt-get install sublime-text-installer

# GIT
sudo apt-get install git
sudo apt-get update

# ZSH
sudo apt-get update
sudo apt-get install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`

# GOOGLE CHROME
cd ~
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update 
sudo apt-get install google-chrome-stable

# COMPOSER
sudo apt-get update
sudo apt-get install curl php-cli php-mbstring git unzip
cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php
php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

# VLC
sudo add-apt-repository ppa:videolan/master-daily
sudo apt update
sudo apt install vlc

# VIM 8.0
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim

# TMUX
sudo apt-get update
sudo apt-get install tmux








# RESTART
sudo shutdown -r 0
