# Prerequisites
1. You'll need `docker-compose`. Install it with `pip install docker-compose`.

2. Enable running docker without sudo:
```sudo usermod -aG docker $USER```

3. Copy `d0.dsk` into the `data` directory. You will need to obtain separately the disk images containing OpenVMS.


# Running
```bash
./run_simh_container.sh
```

### Starting TCP/IP

Assuming your disk images already have TCP/IP kit installed.

    @sys$startup:tcpip$startup

And then check that it can send packets outside the container:

    tcpip ping 8.8.8.8

# Building
```bash
./build.sh
```
