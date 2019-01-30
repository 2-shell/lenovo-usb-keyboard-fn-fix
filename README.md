# Lenovo USB Keyboard - Fn-Lock Fix for Linux

The Lenovo USB Keyboard model *SK-8821* hosts function (*F1*-*F12*) and multimedia keys (*Volume up*, *Mute*, etc.) on the same physical keys.

In doing so, the multimedia keys are the primary function and to trigger the function keys *F1*-*F12*, the *Fn*-key needs to to be pressed and held.

This is pretty annoying, especially due to the lack of a `Fn-Lock` key.

For Windows systems there is a small tool, provided by Lenovo, that inverts the default behaviour, making the function keys primary and the multimedia keys accessible via the `Fn` key.

For Linux there is no official tool, but there is a [community project](https://github.com/lentinj/tp-compact-keyboard.git) tackling the same problem for compact keyboards found in Lenovo laptops.

Using a slightly modified version of the project's command line tool and a udev rule, we can invert the function key behaviour for external Lenovo USB *SK-8821* keyboard models as well.
