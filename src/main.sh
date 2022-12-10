if [ ! -z $__version ]; then
	__version
	exit
fi

if [ ! -z $__help ]; then
	__usage
	exit 1
fi

if [ ! -z $__set ]; then
	__set $__set_args
fi

if [ ! -z $__save ]; then
	__save
fi

if [ ! -z $__load ]; then
	__load
fi