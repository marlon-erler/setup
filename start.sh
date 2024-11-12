if [ -z "$1" ]; then
	echo "number not specified"
	exit
fi

podman run -v ./vim:/home/vd/.vim -v ./vnc:/home/vd/.vnc -v ./ssh:/home/vd/.ssh -v ./mozilla:/home/vd/.mozilla -v ./Documents/:/home/vd/Documents -v ./A:/home/vd/A -p 590$1:5901 -p 80$10-80$19:8000-8009 -ti debian1
