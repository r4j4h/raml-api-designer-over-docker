
build-image:
	docker build -t apidesigner .

run-container:
	docker run -it -p 9013:9013 -p 35730:35730 apidesigner /bin/bash
