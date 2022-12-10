__set () {
	if [ -z $1 ]; then
		return 0
	fi
	if [ -z $__param ]; then
		for panel in /sys/class/backlight/*; do
			echo $1 > $panel/brightness
		done
	else
		if [ ! -f /sys/class/backlight/$__param/brightness ]; then
			return 0
		fi
		echo $1 > /sys/class/backlight/$__param/brightness
	fi
	return 1
}