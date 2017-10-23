#!/bin/bash

CHOICE=$(zenity --list --height="400" --width="800" --title="QI QuickInstall 0.17.10.19 " --column Selected --column Apps --column Repository --column Desc \
		"1" "Atom" 			"No" 	"1.21.1" \
		"2" "Adobe_Reader" 	"No" 	"9.5.3 - Better support Filling PDF forms " \
		"3" "Crossover" 	"No" 	"16.2.5-1 - Better support Filling PDF forms " \
		"4" "Franz" 		"No" 	"x64 4.0.4 - Messaging app for WhatsApp,Facebook Msgr,Telegram and many more" \
		"5" "Google_Chrome" "Yes" 	"stable-current-amd64 - One fast, simple, and secure browser for all your devices" \
		"6" "Megasync" 		"Yes" 	"amd64 - Cloud storage desktop client" \
		"7" "Opera" 		"Yes" 	"48.0.2685 amd64 stable - " \
		"8" "Skypeforlinux" "Yes" 	"64bits - If you like to chat, work and do a lot more then Skype for Linux is the most powerful version for you" \
		"9" "Stremio" 		"No" 	"3.6.5 - All the Video Content You Enjoy in One Place" \
		"10" "Team_viewer" 	"No" 	"12.0.85001_i386 - Secure remote desktop access and support" \
		"11" "Tor_Browser" 	"Yes" 	"7.0.5 Stable - " \
		"12" "Peazip" 		"No" 	"6.4.1QT - Free RAR TAR ZIP files utility" \
		"13" "Pushbullet" 	"Yes" 	" " \
		"14" "Vivaldi" 		"Yes" 	"1.12.955 amd64 Stable " \
		"15" "WPS_Office" 	"No" 	"10.1.0.5707 amd64 - The most compatible office suite" \
		"16" "Wine" 		"Yes" 	"2.0.2-Stable - Compatibility layer capable of running Windows applications" \
		"17" "XvideoThief" 	"GetDeb" 	"... " \
		"18" "Customized" 	"No" 	"" --checklist )
# checkboxes arent displayed if the last row is not properly set.

cd ~/Downloads


IFS="|"
for word in $CHOICE; do 
	
	if [ $word = "Adobe_Reader" ]
	then 
		wget --no-check-certificate https://ardownload.adobe.com/pub/adobe/reader/unix/9.x/9.5.3/enu/AdbeRdr9.5.3-1_i386linux_enu.deb
		dpkg -i AdbeRdr9.5.3-1_i386linux_enu.deb
		rm AdbeRdr9.5.3-1_i386linux_enu.deb
	fi
	
	if [ $word = "Atom" ]
	then 
		wget https://atom-installer.github.com/v1.21.1/atom-amd64.deb
		dpkg -i atom-amd64.deb
		rm atom-amd64.deb
	fi
	
	if [ $word = "Crossover" ]
	then 
		wget https://media.codeweavers.com/pub/crossover/cxlinux/demo/crossover_16.2.5-1.deb
		dpkg -i crossover_16.2.5-1.deb
		rm 	crossover_16.2.5-1.deb
	fi
	
	if [ $word = "Franz" ]
	then 
		wget --no-check-certificate https://github.com/meetfranz/franz-app/releases/download/4.0.4/Franz-linux-x64-4.0.4.tgz
		tar -xvzf Franz-linux-x64-4.0.4.tgz #needs a shortcut
		rm Franz-linux-x64-4.0.4.tgz
	fi
		
	if [ $word = "Google_Chrome" ]
	then 
		wget --no-check-certificate https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
		dpkg -i google-chrome-stable_current_amd64.deb
		rm google-chrome-stable_current_amd64.deb	

	fi
	
	if [ $word = "Megasync" ]
	then 
		wget --no-check-certificate https://mega.nz/linux/MEGAsync/xUbuntu_16.04/amd64/megasync-xUbuntu_16.04_amd64.deb
		gdebi -n megasync-xUbuntu_16.04_amd64.deb
		rm megasync-xUbuntu_16.04_amd64.deb

	fi

	if [ $word = "Opera" ]
	then 
		wget https://download3.operacdn.com/pub/opera/desktop/48.0.2685.39/linux/opera-stable_48.0.2685.39_amd64.deb
		dpkg -i opera-stable_48.0.2685.39_amd64.deb
		rm opera-stable_48.0.2685.39_amd64.deb # add repo automatically
	fi
	
	if [ $word = "Peazip" ]
	then 
		wget http://pumath.dl.osdn.jp/peazip/67623/peazip_6.4.1.LINUX.Qt-2_all.deb
		dpkg -i peazip_6.4.1.LINUX.Qt-2_all.deb
		rm peazip_6.4.1.LINUX.Qt-2_all.deb
	fi
	
	if [ $word = "Pusbullet" ]
	then 
		sudo add-apt-repository ppa:atareao/pushbullet
		sudo apt update
		sudo apt install pushbullet-indicator
	fi


	if [ $word = "Skypeforlinux" ]
	then 
		wget https://repo.skype.com/latest/skypeforlinux-64.deb
		dpkg -i skypeforlinux-64.deb 
		rm skypeforlinux-64.deb 

	fi
	
	if [ $word = "Stremio" ]
	then 
		wget http://dl.strem.io/Stremio3.6.5.linux.tar.gz
		tar -xvzf Stremio3.6.5.linux.tar.gz 
		rm Stremio3.6.5.linux.tar.gz # shortcut?

	fi
	
	if [ $word = "Team_viewer" ]
	then 
		wget https://dl.tvcdn.de/download/version_12x/teamviewer_12.0.85001_i386.deb
		dpkg -i teamviewer_12.0.85001_i386.deb
		rm teamviewer_12.0.85001_i386.deb

	fi

	if [ $word = "Tor_Browser" ]
	then 
	wget https://dist.torproject.org/torbrowser/7.0.5/tor-browser-linux64-7.0.5_en-US.tar.xz
	tar -Jxvf tor-browser-linux64-7.0.5_en-US.tar.xz #needs a shortcut
	rm tor-browser-linux64-7.0.5_en-US.tar.xz
	fi
	
		
	if [ $word = "Vivaldi" ]
	then 
		wget https://downloads.vivaldi.com/stable/vivaldi-stable_1.12.955.36-1_amd64.deb
		dpkg -i vivaldi-stable_1.12.955.36-1_amd64.deb
	fi
	
	if [ $word = "Wine" ]
	then 
		apt remove wine*
		sudo dpkg --add-architecture i386
		wget -nc https://dl.winehq.org/wine-builds/Release.key
		sudo apt-key add Release.key
		sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/ 
		sudo apt-get update
		sudo apt-get install -y --install-recommends winehq-stable
	fi

	if [ $word = "WPS_Office" ]
	then 
		wget http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_amd64.deb
		dpkg -i wps-office_10.1.0.5707~a21_amd64.deb
		rm wps-office_10.1.0.5707~a21_amd64.deb
	fi
	
	if [ $word = "XvideoThief" ]
	then 
		wget http://archive.getdeb.net/install_deb/getdeb-repository_0.1-1~getdeb1_all.deb
		dpkg -i getdeb-repository_0.1-1~getdeb1_all.deb
		sudo apt-get update && sudo apt-get install xvst 
		
	fi
	done



# Install a customized list of packages
	
	
	if [ $word = "CustomizedPackages" ]
	then 
		apt-get -f install -y steam  | zenity --text-info --width 500 --height 400 --timeout="3"
		apt-get autoremove 
	fi

# Force packages installation and remove unnecesary files	
apt-get -f -y install 
apt autoremove




