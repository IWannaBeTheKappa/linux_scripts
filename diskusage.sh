#! /bin/bash
echo -n "Disk usage "
echo -e $(df --output='used,size,avail' -h / | sed -n '2p' | awk '{print($1"/"$2" ("$3" free)")}')
echo -en "\033[33;0m"

echo -n "Trash size "
if [ -e ~/.local/share/Trash ]
then
	echo -e "\033[33;34m"$(du -sh ~/.local/share/Trash | awk '{print $1}')
else
	echo -e "\033[33;31m"not found
fi
echo -en "\033[33;0m"

echo -n "Pacman cache "
if [ -e /var/cache/pacman/pkg ]
then
	echo -e "\033[33;34m"$(du -sh /var/cache/pacman/pkg/ | awk '{print $1}')
else
	echo -e "\033[33;31m"not found
fi
echo -en "\033[33;0m"

echo -n "yay AUR-build cache "
if [ -e ~/.cache/yay ]
then
	echo -e "\033[33;34m"$(du -sh ~/.cache/yay 2> >(grep -v 'Permission denied') | awk '{print $1}')
else
	echo -e "\033[33;31m"not found
fi
echo -en "\033[33;0m"

echo -n "Telegram downloads "
if [ -e ~/Downloads/Kotatogram\ Desktop ]
then
	echo -e "\033[33;34m"$(du -sh ~/Downloads/Kotatogram\ Desktop | awk '{print $1}')
else
	echo -e "\033[33;31m"not found
fi
echo -en "\033[33;0m"

echo -n "Telegram cache "
if [ -e ~/.local/share/KotatogramDesktop/tdata/user_data ]
then
	echo -e "\033[33;34m"$(du -sh  ~/.local/share/KotatogramDesktop/tdata/user_data | awk '{print $1}')
else
	echo -e "\033[33;31m"not found
fi
echo -en "\033[33;0m"
