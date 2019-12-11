IMG=asia.gcr.io/maxpay168/demo
TAG=latest

build:
	docker build -t ${IMG}:${TAG} .

run:
	docker run -d -p 80:80 ${IMG}:${TAG}

push: build
	docker push ${IMG}:${TAG}

release: 
	git tag ${TAG}
	git push origin ${TAG}


deploy-k8s:
	helm install --name demo chart/

delete-deploy:
	helm del --purge demo
