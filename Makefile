image:
	docker build -t mumoshu/terraform-ci:canary -f Dockerfile build/

push:
	docker push mumoshu/terraform-ci:canary
