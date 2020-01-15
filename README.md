# Log2timeline-perl Dockerfile

Log2timeline of the 0.X branch has been switched from Log2Timeline Perl (marked as legacy) to [Plaso](https://github.com/log2timeline/plaso), but many users want to use the legacy (perl) version. This version of source code has been automatically exported from code.google.com/p/log2timeline and fixed some bugs for running with perl 5.30. 


[Docker](http://docker.com) container to use [Log2timeline-perl](https://code.google.com/archive/p/log2timeline).

### Install

Pull `radys/log2timeline-perl` from the Docker repository:

    docker pull radys/log2timeline-perl 


Or build `radys/log2timeline-perl` from source:

    git clone https://github.com/radys/log2timeline-perl.git 
    cd log2timeline-perl
    docker build -t radys/log2timeline-perl .

### Run & usage

Run the image and mount the present working directory:

    docker run --rm -ti -v $(pwd):/data radys/log2timeline-perl log2timeline syslog -w results.csv

