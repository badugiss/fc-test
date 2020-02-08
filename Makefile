
all:
	@echo nothing

make-lotus:
	@scripts/make-lotus.ssh

install-lotus:
	@sudo cp configs/lotus.service /etc/systemd/system/
	@sudo systemctl enable lotus

install-miner:
	@sudo cp configs/lotus-storage-miner.service /etc/systemd/system/
	@sudo systemctl enable lotus-storage-miner

uninstall-lotus:
	@sudo systemctl disable lotus
	@sudo rm /etc/systemd/system/lotus.service

uninstall-miner:
	@sudo systemctl disable lotus-storage-miner
	@sudo rm /etc/systemd/system/lotus-storage-miner.service

start-lotus:
	@sudo systemctl start lotus

start-miner:
	@sudo systemctl start lotus-storage-miner

stop-lotus:
	@sudo systemctl stop lotus

stop-miner:
	@sudo systemctl stop lotus-storage-miner

install-all: install-lotus install-miner
uninstall-all: uninstall-lotus uninstall-miner
start-all: start-lotus start-miner
stop-all: stop-lotus stop-miner
