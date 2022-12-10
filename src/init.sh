if [ $(id -u) != 0 ]; then
	printf "$program: permission denied.\n"
	exit 1
fi

if [ ! -d $program_dir ]; then
	if [ -f $program_dir ]; then
		rm -rf $program_dir
	fi
	mkdir $program_dir
fi