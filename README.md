<h1 align="center">black n white dotfiles</h1>

![img](https://i.imgur.com/lcMb4JA.png)

![img](https://i.imgur.com/kti5PgH.png)

![img](https://i.imgur.com/y6jb0UJ.png)

![img](https://i.imgur.com/U2ea0Tl.png)

![img](https://i.imgur.com/ieDHm1f.png)

![img](https://i.imgur.com/Xl6ST3i.png)

![img](https://i.imgur.com/wuxZZ8i.png)

![img](https://i.imgur.com/lcK5Kla.png)

![img](https://i.imgur.com/XYasCse.png)

![img](https://i.imgur.com/NzsTPeP.png)


## Use BetterDiscord and Spicetify at your own risk, these are violations of their terms of services


These dotfiles might work out of a box on Manjaro i3 community edition.  
Also this is like my home folder so everything I have here is in my home folder


## Programs I use

```BetterDiscord, Spicetify, Xcursor, Nautilus, cava, rofi, Polybar, i3-gaps, i3-scrot, picom-git, neofetch, code-oss, gtk-3.0, eye of gnome, tty-clock, powerline, kitty```  
and a lot of others... you can see them in i3 config tho


## VS Code and IntelliJ themes

[VS Code Color Theme](https://marketplace.visualstudio.com/items?itemName=Jaakko.black)  
[VS Code Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)  
[IntelliJ Idea Theme](https://plugins.jetbrains.com/plugin/14059-darcula-pitch-black)


## Some additional install steps

If you want the Nautilus theme to be running you will have to build it on your own from folder themes/phocus.  
You have to get the files from [this repo](https://github.com/DarkReaper231/phocus) as I only provided modified build files in this repo. It is a fork as the creator will be doing some edits that will get rid of this black theme.

To use the grub theme move the folder sleek to /usr/share/grub/themes  
Open file /etc/default/grub with your preferred text editor and find the line `#GRUB_THEME=""` uncomment it and add `/usr/share/grub/themes/sleek/theme.txt`  
into the quotation marks  
Final result should look like this `GRUB_THEME="/usr/share/grub/themes/sleek/theme.txt"`  
Save the file and run command `sudo grub-mkconfig -o /boot/grub/grub.cfg`  


## Steps you should do after installing

1. Get openwheathermap.org API and modify weather.py in polybar  
2. Also polybar might not work for you out of a box, make sure the screen output is set to your current one  
3. Read through the config files, because something might be different for you  
4. Make sure you have fonts Inconsolata, Dejavu Sans Mono, TerminessTTF Mono, MonacoB  


## Credits

[Vista1nik](https://www.reddit.com/user/Vista1nik/) - gap spacing and picom config  
[snickerton](https://www.reddit.com/user/snickerton/) - modules of polybar  
[phisch90](https://www.reddit.com/user/phisch90/) - gtk theme called phocus  
[killown](https://github.com/user/killown/) - gtk icons
[grtcdr](https://github.com/grtcdr/startpages) - homepage
