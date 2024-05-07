usage(){
	echo "
	$0 image
	"
	exit 1
}

if (($#<1)); then usage; fi 
[ "$1" == "-h" -o "$1" == "--help" ] && usage 

sudo docker rmi $1

