ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
BIN_NAME:=antipop

all:
	@echo "Compiling executable..."
	swiftc ./antipop.swift -o $(BIN_NAME)
	@echo "Installing executable to /usr/local/bin/..."
	cp ./$(BIN_NAME) /usr/local/bin/$(BIN_NAME)
	@echo "Creating Launch Daemon..."
	sudo cp ./cz.tyas.antipop.plist /Library/LaunchAgents/cz.tyas.antipop.plist
	@echo "Finished. Annoying popping sounds should now go away!"
