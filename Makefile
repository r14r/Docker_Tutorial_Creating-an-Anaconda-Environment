HERE := ${CURDIR}

CONTAINER := playground_swissarmyknife

default:
	cat Makefile

build:
	docker build -t ${CONTAINER}  .

clean:
	docker stop ${CONTAINER}
	docker rm   ${CONTAINER}
	
run:
	docker run  -it --rm  -p 127.0.0.1:8888:8888 -v ${HERE}/bin:/HOME/bin:rw -v ${HERE}/notebooks:/notebooks:rw -v ${HERE}/install:/install:rw --name ${CONTAINER} ${CONTAINER}

