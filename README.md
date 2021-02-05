# Huion-GT191-calibration-linux

A script for correct some problems with huion GT 191 graphic tablet under linux

### A little story

I have a Huion GT 191 I wanted to use on my linux computer but even with de Digimend drivers and other forks I've got 2 problems that I can't solve, my cursor were not calibrated or I needed to mirror screens to use my tablet.

After several searches and tries I've found a base to correct the problems on a youtube tutorial and after a little of adaptations and corrections it's work.

I've just a little think to do to simplifying more it's to not hard code the id of the tablet.

### How it works ?

**step 1** : type that command line

```text
xrandr
```

**step 2** : replace "DVI-0" the ID of your tablet screen you can find in the list you just got

for example : HDMI-1, DVI-1...

**step 3** : Save the script and launch it : 

```text
./gt191.sh
```

You need to lauch the script at every start up

Tested ?

Actually I've just tested on Fedora and will try to test it on ubuntu soon.

