
all:
	@echo nothing

make-lotus:
	@scripts/make-lotus.ssh

install-lotus-service:
	@sudo cp configs/lotus.service /etc/systemd/system/
	@sudo systemctl enable lotus

install-miner-service:
	@sudo cp configs/lotus-storage-miner.service /etc/systemd/system/
	@sudo systemctl enable lotus-storage-miner

start-lotus-service:
	@sudo systemctl start lotus

start-miner-service:
	@sudo systemctl start lotus

stop-lotus-service:
	@sudo systemctl stop lotus

stop-miner-service:
	@sudo systemctl stop lotus

install-services: install-lotus-service install-miner-service
start-services: start-lotus-service start-miner-service
