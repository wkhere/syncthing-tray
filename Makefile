VER=v0.7-whkere

go-docker:
	docker build . -t st-tray
	docker run -v $(PWD):/syncthing-tray --rm st-tray \
		make go -C/syncthing-tray

go:
	go build -ldflags "-X main.VersionStr=$(VER) -X main.BuildUnixTime=$(shell date +%s)"

.PHONY: go-docker go
