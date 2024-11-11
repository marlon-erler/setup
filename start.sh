if [ -z "$1" ]; then
	echo "number not specified"
	exit
fi

podman run -v ./ssh:/home/vd/.ssh -v ./Documents/:/home/vd/Documents -v ./A:/home/vd/A -p 590$1:5901 -ti debian1
