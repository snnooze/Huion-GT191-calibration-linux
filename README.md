# Huion-GT191-calibration-linux

A script for correct some problems with huion GT 191 graphic tablet under linux

### A little story

I have a Huion GT 191 and wanted to use it on my Linux computer but even with the Digimend drivers and other forks, I experimented 2 problems that I couldn't solve, my cursor was not calibrated and I needed to mirror screens to use my tablet. 

After several searches and tries I've found a base to correct the problems on a youtube tutorial and after some adaptations and corrections it works. 

The script works but can be improved.

### How it works ?

#### After the Digimend drivers installation

**step 1** : type that command line

```text
xrandr
```

**step 2** : replace "DVI-0" by your tablet’s ID you can find it in the list you just got for example : HDMI-1, DVI-1...

**step 3** : Save the script and launch it : 

```text
./gt191.sh
```

You need to lauch the script at each start up

### Tested ?

Actually I've just tested on Fedora and will try to test it on ubuntu soon.

