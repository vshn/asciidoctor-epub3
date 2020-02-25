all: image

image:
	docker build -t vshn/asciidoctor-epub3:1.4 .

test.epub:
	docker run --rm --tty --user "$$(id -u)" --volume "$${PWD}":/documents vshn/asciidoctor-epub3:1.4 sample/test.adoc --destination-dir=.
