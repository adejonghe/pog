IMG_TAG=caprads/web

build:
	docker rmi $(IMG_TAG); true
	docker build -t $(IMG_TAG) .
