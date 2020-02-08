
all:
	@echo nothing

make-lotus:
	@scripts/make-lotus.ssh

install-lotus-service:
	@sudo cp configs/lotus.service /etc/systemd/system/
	@sudo systemctl enable lotus

install-storage-miner-service:
	@sudo cp configs/lotus-storage-miner.service /etc/systemd/system/
	@sudo systemctl enable lotus-storage-miner

install-services: install-lotus-service install-storage-miner-service
