.PHONY: build reload

build:
	bundle exec asciidoctor-revealjs main.adoc

reload:
	docker exec -w /var/app $(CONTAINER_ID) make build

watch:
	ls *.adoc *.css | entr sh -c 'make reload'

