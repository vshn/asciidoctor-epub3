all: image

image:
	podman build -t ghcr.io/vshn/asciidoctor-epub3:master .

build/test.epub:
	podman run --rm --volume "$${PWD}":/documents ghcr.io/vshn/asciidoctor-epub3:master sample/test.adoc --destination-dir=build

clean:
	rm -rf build
