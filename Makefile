all: image

image:
	docker build -t vshn/asciidoctor-epub3:1.14.2 .

build/test.epub:
	docker run --rm --tty --user "$$(id -u)" --volume "$${PWD}":/documents vshn/asciidoctor-epub3:1.14.2 sample/test.adoc --destination-dir=build

clean:
	rm -rf build
