# icon instalation

after instal gnome if the icons doesn't appear use this method
1. download icon from [gnome look](https://www.gnome-look.org)
2. Once downloaded, open your File Manager and go to your downloads folder and extract the compressed file. You can alternatively do this via the command line by typing the following commands, regardless of your distribution :
```
cd Downloads
ls
tar -xf *icon-name* .tar.xz
```
3. change gnome icons to current user
```
cd /home/*user*
mkdir .icons
```
then move the extrac
```
cd Download
mv *icon-folder* ~/.icons
4. change gnome icons to root user
```
cd Download
sudo mv *icon-name*.tar.xz /usr/share/icons
```
5. setting gnome-tweaks to set icon in appearance
