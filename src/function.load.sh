__load() {
	if [ ! -d $program_dir ]; then
		mkdir $program_dir
	fi
	for panel_dir in $backlight/*; do
		panel=$(basename $panel_dir)
		if [ ! -f $program_dir/$panel.brightness ]; then
			continue
		fi
		brightness=$(cat $program_dir/$panel.brightness)
		echo $brightness > $panel_dir/brightness
	done
	return 1
}