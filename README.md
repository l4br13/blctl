# blctl
blctl - is backlight controller to change brightness value from terminal.

# Usage
to set brightness
``` bash
backlight --set <value>
```
to save brightness
``` bash
backlight --save
```
to load brightness
``` bash
backlight --load
```

# Installation
run the command without sudo/root
``` sh
./build --install
```
you can just do the build only if not want to installed on /usr/bin/backlight
``` bash
./build
```

# Uninstallation

``` bash
./build --uninstall
```

or just remove the file /usr/bin/backlight and /var/lib/backlight