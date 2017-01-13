IMAGE_NAME=tgarm/pritunl-docker
PORTS=-p 1194:1194 -p 11194:11194 -p 443:443 -p 80:80
DATA_NAME=pritunl-data

.PHONY: default run debug clean data image

default:	image 

image:
	docker build -t $(IMAGE_NAME) .

data:
	docker run -v /var/lig/pritunl --name $(DATA_NAME) busybox

run: 
	docker run -d --privileged --volumes-from=$(DATA_NAME) $(PORTS) $(IMAGE_NAME)

debug: 
	docker run -i --privileged --volumes-from=$(DATA_NAME) $(PORTS) $(IMAGE_NAME) &

clean:
	docker rmi -f $(IMAGE_NAME) || true
