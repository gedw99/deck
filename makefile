#TODO: add go-releaser and CI, so users can easily install deck without golang.

#TODO: add versioning, so that users can easily upgrade.


print:
	@echo
	@echo -- Deck -- 

## build
build:
	cd cmd/binaries && chmod +x ./bin-gen.sh && ./bin-gen.sh

# build delete
build-delete:
	cd cmd/binaries && chmod +x ./bin-delete.sh && ./bin-delete.sh

install:
	# TODO install from github releases.

run:

