IMG:=jottr/$$(basename $$(pwd))

build:
	docker build -t $(IMG) .

clean:
	docker rmi $(IMG)
