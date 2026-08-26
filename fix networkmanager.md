# how to fix your network manager tray after gui install

after you do the netinstall, and then manually install a desktop manager, 
networkmanager won't display your connections right. so you have to open
`/etc/network/interfaces` in a text editor and comment the connections out.


source: https://www.reddit.com/r/debian/comments/1fs41k3/how_can_i_get_networkmanager_to_work/
>> You can't have both NetworkManager and ifupdown manage the same interface. 
If you want to use NetworkManager for that interface, you should remove it from /etc/network/interfaces. 