# rePear -- Use your iPod without iTunes
rePear is a tool that allows using an Apple iPod audio player without iTunes. The user can manage the audio files on the iPod with a normal file manager and rePear takes care that they can be played on the device.

To use these sources, one needs Python. repear is known to work with Python 2.5 and 2.6. Using py2exe, one could easily create a Windows executable such as the one the repear Sourceforge page offers. However, because those sources are not supplied with the original repear package, they will be missing from this repository until such a time that they are.

For instructions and more information, see usage.html.

# iPod Touch
Some things will need modification in order to work with repear.

These instructions assume a rooted iTouch with a Debian-like Cydia installation.
While such a system could conceivably run repear itself, I (jc@unternet.net) am
using my Debian laptop.

On the iTouch terminal app:
```bash
su -
cd /
rsync -auvz . mycomputer:Downloads/itouch/
```

The above took several days thanks to my network dropping out, and the battery
running low even though the iTouch was hooked to a charger the entire time.

Then on the computer:
```bash
cd ~Downloads
mkdir -p ipod/private/var/mobile/Media
cp -a itouch/private/var/mobile/Media/iTunes_Control ipod/private/var/mobile/Media
cd ipod/private/var/mobile/Media
ln -s iTunes_Control iPod_Control
cd /usr/src/jcomeauictx/repear  # or wherever you cloned this repo
make dissect freeze
```
