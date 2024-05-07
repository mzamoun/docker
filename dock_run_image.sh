usage(){
	echo "
	$0 image args ...
	ex:
	$0 python
	$0 -it ubuntu bash
	"
	exit 1
}

if (($#<1)); then usage; fi 
[ "$1" == "-h" -o "$1" == "--help" ] && usage 

sudo docker run $*

