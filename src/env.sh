program=$(basename $0)
program_version=1.1.0
program_dir=/var/lib/backlight
dir=$(dirname $(realpath 0))
uid=$(id -u)
backlight=/sys/class/backlight