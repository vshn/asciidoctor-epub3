all: image

image:
	docker build -t vshn/asciidoctor-epub3:1.2 .

test.epub:
	docker run --rm --tty --user "$$(id -u)" --volume "$${PWD}":/documents vshn/asciidoctor-epub3:1.2 sample/test.adoc --destination-dir=.
