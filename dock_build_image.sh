usage(){
	echo "
	$0 dirApp version 
	"
	exit 1
}

if (($#<2)); then usage; fi 
[ "$1" == "-h" -o "$1" == "--help" ] && usage 

dirApp=$1
version=$2

app=$(basename $dirApp)

sudo docker build --rm -f $dirApp/Dockerfile -t $app:$version $dirApp

