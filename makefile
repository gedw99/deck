#TODO: add go-releaser and CI, so users can easily install deck without golang.

#TODO: add versioning, so that users can easily upgrade.

GO_BIN=go
GO_MOD_UPGRADE_BIN=go-mod-upgrade
print:
	@echo
	@echo -- Deck -- 

	@echo  $(GO_BIN) installed at : $(shell which $(GO_BIN))
	@echo  $(GO_MOD_UPGRADE_BIN) installed at : $(shell which $(GO_MOD_UPGRADE_BIN))

dep-os:
	# get dependencies
	#  $(GO_MOD_UPGRADE_BIN)
	go install github.com/oligot/go-mod-upgrade@latest

## MODS


## Reconciles golang packages
mod-tidy:
	@echo
	@echo -- Visiting: $(PWD)
	go mod tidy
	
## Upgrades golang packages interactively
mod-upgrade:
	
	@echo
	@echo -- Visiting: $(PWD)
	$(GO_MOD_UPGRADE_BIN)
	$(GO_BIN) mod tidy
	$(GO_BIN) mod verify

## build
build:
	cd cmd/binaries && chmod +x ./bin-gen.sh && ./bin-gen.sh

# build delete
build-delete:
	cd cmd/binaries && chmod +x ./bin-delete.sh && ./bin-delete.sh

install:
	# TODO install from github releases.

run:

