USERNAME:=sanasamy
IMAGE:=application-foot
TAG:=20190927


all:

build:
	docker build -t $(USERNAME)/$(IMAGE):$(TAG) .

run:
	docker run -it -p5000:5000 $(IMAGE):$(TAG) 

test: 
	docker run -it $(USERNAME)/$(IMAGE):$(TAG) pipenv run pytest
# délivrer le projet.
deliver:
	echo "$(DOCKER_PASSWORD)" | docker login -u "$(DOCKER_USERNAME)" --password-stdin
	docker tag $(USERNAME)/$(IMAGE):$(TAG) $(USERNAME)/$(IMAGE):latest
	docker push $(USERNAME)/$(IMAGE):latest

