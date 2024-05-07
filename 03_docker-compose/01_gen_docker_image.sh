# installer docker :
sudo apt  install docker.io 

# construire l'image "monimage" dans le repertoire courant
sudo docker build -t monimage .

# executer l'image 
sudo docker run -p 80:80 monimage 


