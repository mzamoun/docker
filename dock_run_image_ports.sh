usage(){
	echo "
	$0 ports image args ...
	ex:
	$0 80:80 test_angular:v1 
	"
	exit 1
}

if (($#<2)); then usage; fi 
[ "$1" == "-h" -o "$1" == "--help" ] && usage 

ports=$1
image=$2
shift 2
args=$*

sudo docker run --rm -d -p $ports $image $args 

