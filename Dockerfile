FROM debian:buster 
MAINTAINER Radomir Orkac <radys@cesnet.cz>

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y git make libdatetime-format-strptime-perl libdatetime-perl libnet-pcap-perl libarchive-any-perl libxml-libxml-perl libdbi-perl libhtml-scrubber-perl libimage-exiftool-perl libgtk2-perl libglib-perl libcarp-assert-perl libdbd-sqlite3-perl libdigest-crc-perl libversion-perl libdate-manip-perl perl-modules libparse-win32registry-perl libnetpacket-perl libparams-validate-perl
ENV PERL_MM_USE_DEFAULT=1
RUN cpan install Data::Hexify File::Mork Mac::PropertyList
RUN apt-get clean &&  rm -rf /var/cache/apt/* /var/lib/apt/lists/*

RUN git clone https://github.com/radys/log2timeline-perl.git /tmp/log2timeline
WORKDIR /tmp/log2timeline
RUN perl Makefile.PL && make && make install
RUN ln -s /usr/local/bin/log2timeline_legacy /usr/local/bin/log2timeline

VOLUME ["/data"]
WORKDIR /data
