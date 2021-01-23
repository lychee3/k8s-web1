.PHONY: build clean deploy

build:
	docker build --no-cache -t lychee3/k8s-web1-ap:v1 ap

deploy:
	kubectl apply -f k8s/deployment.yaml
	kubectl apply -f k8s/service.yaml

clean:
	kubectl delete -f k8s/deployment.yaml
	kubectl delete -f k8s/service.yaml