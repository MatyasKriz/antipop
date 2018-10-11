ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
BIN_NAME:=antipop
DAEMON_NAME:=cz.tyas.antipop.plist

all:
	@echo "Compiling executable..."
	swiftc ./antipop.swift -o $(BIN_NAME)
	@echo "Installing executable to /usr/local/bin/..."
	cp ./$(BIN_NAME) /usr/local/bin/$(BIN_NAME)
	@echo "Creating Launch Daemon..."
	sudo cp ./$(DAEMON_NAME) /Library/LaunchAgents/$(DAEMON_NAME)
	@echo "Finished. Annoying popping sounds will now automatically go away after restart!"
	@echo "If you don't want to wait until restart, run this command:"
	@echo "launchctl load /Library/LaunchAgents/"$(DAEMON_NAME)
