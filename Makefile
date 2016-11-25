IMAGE_NAME=chen369/pritunl-docker

all:
	docker build -t $(IMAGE_NAME) .

clean:
	docker rmi $(IMAGE_NAME) || true
