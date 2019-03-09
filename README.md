## rpi-smashing
[![](https://images.microbadger.com/badges/image/germanrcuriel/rpi-smashing.svg)](http://microbadger.com/images/germanrcuriel/rpi-smashing "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/germanrcuriel/rpi-smashing.svg)](http://microbadger.com/images/germanrcuriel/rpi-smashing "Get your own version badge on microbadger.com")

[Smashing](https://github.com/Smashing/smashing) docker container for Raspberry Pi.

### Usage
    docker run -d \
        --name rpi-smashing \
        -e TZ=<timezone> \
        -e PORT=<port> \
        -p <host port>:<container port> \ 
        -v </path/to/your/smashing/app>:/smashing \
        germanrcuriel/rpi-smashing

### Parameters

* `-e TZ` for timezone information, for example "Europe/Madrid".
* `-e PORT` for specify the container port, defaults to "3030".
* `-p <host port>:<container port>` to map the container port with a host one.
* `-v </path/to/your/smashing/app>:/smashing` - Mount point of your smashing app.