usage(){
	echo "
	$0 container_id
	"
	exit 1
}

if (($#<1)); then usage; fi 
[ "$1" == "-h" -o "$1" == "--help" ] && usage 

container_id=$1

sudo docker exec -ti $container_id bash


