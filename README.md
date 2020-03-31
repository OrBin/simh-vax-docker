# Getting Started

**Note**: `sudo` is ommited in this document.

1. You will need to install docker an `docker-compose`. 

    pip install docker-compose
   
2. Copy `d0.dsk`, `d1.dsk` and `d2.dsk` into the `data` directory. You will need to obtain separately the disk images containing OpenVMS.

3. Pull the docker image

    docker pull orbin/simh-vax

# Running

    ./run_simh_container.sh

### Starting TCP/IP

Assuming your disk images already have TCP/IP kit installed.

    @sys$startup:tcpip$startup

And then check that it can send packets outside the container:

    tcpip ping 8.8.8.8

