FROM seniocaires/ubuntu-vnc

RUN apt update && apt install -y openjdk-8-jdk git && \
    mkdir -p /root/Programas && cd /root/Programas && \
    wget -N -O eclipse.tar.gz "http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/oxygen/3a/eclipse-jee-oxygen-3a-linux-gtk-x86_64.tar.gz&r=1" && \
	tar xzf eclipse.tar.gz && rm eclipse.tar.gz && \
	cd /tmp && \
	echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Ubuntu_16.04/ /' > /etc/apt/sources.list.d/isv:ownCloud:desktop.list && \
	wget -nv https://download.opensuse.org/repositories/isv:ownCloud:desktop/Ubuntu_16.04/Release.key -O Release.key && \
	apt-key add - < Release.key && \
	apt-get update && apt-get install -y owncloud-client && \
	rm Release.key
