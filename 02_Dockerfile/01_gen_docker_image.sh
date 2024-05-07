# installer docker :
sudo apt  install docker.io 

# construire l'image "monimage" dans le repertoire courant
sudo docker build -t monimage .

# executer l'image : port_ext:port_conteneur
sudo docker run -p 8080:80 monimage 


