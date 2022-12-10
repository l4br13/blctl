__save() {
	if [ ! -d $program_dir ]; then
		mkdir $program_dir
	fi
	for panel_dir in $backlight/*; do
		panel=$(basename $panel_dir)
		cat $panel_dir/brightness > $program_dir/$panel.brightness
	done
	return 1
}