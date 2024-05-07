usage(){
	echo "
	"
	exit 1
}

if (($#<1)); then usage; fi 
[ "$1" == "-h" -o "$1" == "--help" ] && usage 

sudo docker system prune 

