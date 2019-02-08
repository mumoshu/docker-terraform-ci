image:
	docker build -t mumoshu/terraform-ci:0.11.10 -f Dockerfile build/

push:
	docker push mumoshu/terraform-ci:0.11.10
