PREFIX=/usr/local
TARGET_DIR=sbin
UDEV_RULES_DIR=/etc/udev/rules.d
BUILD_PRODUCT=tp-compact-keyboard/tp-compact-usb-keyboard/tp-compact-usb-keyboard
RULE_NAME=90-lenovo-usb-keyboard.rules

all: patch build install clean

patch: disable-mousebutton-command.patch
	cd tp-compact-keyboard && patch -p1 < ../disable-mousebutton-command.patch

build:
	cd tp-compact-keyboard/tp-compact-usb-keyboard && $(MAKE)

clean:
	cd tp-compact-keyboard && patch -R -p1 < ../disable-mousebutton-command.patch
	rm $(BUILD_PRODUCT)

install:
	sudo cp $(BUILD_PRODUCT) $(PREFIX)/$(TARGET_DIR)/
	sudo cp udev.rules $(UDEV_RULES_DIR)/$(RULE_NAME)

.PHONY: all build install
