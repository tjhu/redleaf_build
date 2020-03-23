version = 0.2

all: build

build: 
	docker image build -t redleaf_build:$(version) .

publish: 
	docker image tag redleaf_build:$(version) gitlet/redleaf_build:$(version)
	docker push gitlet/redleaf_build:$(version)
