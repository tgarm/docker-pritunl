IMAGE_NAME=tgarm/pritunl-docker
PORTS=-p 1194:1194/udp -p 1194:1194/tcp -p 11194:11194/udp -p 11194:11194/tcp -p 443:443/tcp

all:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -d --privileged $(PORTS) $(IMAGE_NAME)

clean:
	docker rmi $(IMAGE_NAME) || true
