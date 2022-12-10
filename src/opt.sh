opt=$(getopt -n $(basename $0) -o hvls -l help,version,enable,disable,load,save,set: -- "$@")

if [ $? -ne 0 ]; then
	printf "Try '$(basename $0) --help' for more information.\n"
	exit
fi

eval set -- $opt

while true; do
	if [ "$1" = "--" ]; then
		shift
		__param=$@
		break
	else
		case $1 in
			--help|-h)
				__help=1
			;;
			--version|-v)
				__version=1
			;;
			--set)
				__set=1
				shift
				__set_args=$1
			;;
			--save)
				__save=1
			;;
			--load)
				__load=1
			;;
			*)
				break
			;;
		esac
	fi
	shift
done