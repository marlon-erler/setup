if [ -z "$1" ]; then
	echo "number not specified"
	exit
fi

podman run -v ./vim:/home/vd/.vim -v ./vnc:/home/vd/.vnc -v ./ssh:/home/vd/.ssh -v ./mozilla:/home/vd/.mozilla -v ./Documents/:/home/vd/Documents -v ./A:/home/vd/A -p 590$1:5901 -p 808$1:8080 -ti debian1
