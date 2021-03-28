build:
	docker build -t nort .

run:
	docker run -it \
	-v $(shell pwd)/app:/code \
	-v $(shell pwd)/filesystem:/home \
	nort python app.py

shell:
	docker run -it \
	-v $(shell pwd)/app:/code \
	-v $(shell pwd)/filesystem:/home \
	nort bash