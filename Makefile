all:
	sudo apt-get -y install git build-essential cmake automake libtool autoconf
	mkdir $(PWD)/build
	cd ./scripts && ./build_deps.sh
	cd $(PWD)/build && cmake .. -DXMRIG_DEPS=scripts/deps && make -j$(nproc)
