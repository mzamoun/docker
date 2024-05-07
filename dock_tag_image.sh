usage(){
	echo "
	$0 user_docker_hub image
	ex:
	$0 mzamouneisi test_angular:v1 
	"
	exit 1
}

if (($#<2)); then usage; fi 
[ "$1" == "-h" -o "$1" == "--help" ] && usage 

user_docker_hub=$1
image=$2

sudo docker tag $image $user_docker_hub/$image

