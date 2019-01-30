# Lenovo USB Keyboard - Fn-Lock Fix for Linux

The Lenovo USB Keyboard model *SK-8821* hosts function (*F1*-*F12*) and multimedia keys (*Volume up*, *Mute*, etc.) on the same physical keys.

In doing so, the multimedia keys are the primary function and to trigger the function keys *F1*-*F12*, the *Fn*-key needs to to be pressed and held.

This is pretty annoying, especially due to the lack of a `Fn-Lock` key.

For Windows systems there is a small tool, provided by Lenovo, that inverts the default behaviour, making the function keys primary and the multimedia keys accessible via the `Fn` key.

For Linux there is no official tool, but there is a [community project](https://github.com/lentinj/tp-compact-keyboard.git) tackling the same problem for compact keyboards found in Lenovo laptops.

Using a slightly modified version of the project's command line tool and a udev rule, we can invert the function key behaviour for external Lenovo USB *SK-8821* keyboard models as well.

## Prerequisites

Since you have to be able to alter system files, sudo has to be installed and you have to make sure you can use sudo to obtain the rights necessary for writing to `/etc/udev/rules.d` and `/usr/local/sbin`.

You'll need a C-compiler (or rather everything that's necessary for compiling C code) and *Make*.  
Usually this can be installed by some meta-package. On debian based systems `sudo apt-get install build-essential` should get you ready.

## Installation

Start a terminal session, change to the directory where you you cloned this repository and run:

```sh
make
```

Unplug and re-plug your Lenovo USB keyboard.

That's it.

You should now be able to access the function keys without pressing `Fn`, while you can access the multimedia keys when pressing and holding `Fn`.
