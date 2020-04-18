FROM openjdk:8

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update \
    	&& apt-get install -y --no-install-recommends \
	bison \
	build-essential \ 
	curl \ 
	flex \ 
	git \ 
	gnupg \ 
	gperf \ 
	libesd0-dev
	libncurses5-dev \ 
	libsdl1.2-dev \ 
	libwxgtk2.8-dev \ 
	libxml2 \ 
	libxml2-utils \ 
	lzop \ 
	pngcrush \ 
	schedtool \ 
	squashfs-tools \ 
	xsltproc \ 
	zip \ 
	zlib1g-dev \ 
	g++-multilib \ 
	gcc-multilib \ 
	lib32ncurses5-dev \ 
	lib32readline-gplv2-dev \
	lib32z1-de \
    	&& rm -rf /var/lib/apt/lists/*
    
RUN curl https://storage.googleapis.com/git-repo-downloads/repo > /bin/repo && chmod a+x /bin/repo
