## Pritunl as a Docker container

### How to build:
To build the docker image, just use:
```
make
```

To build the data volume, use:
```
make data
```

### How to run:
Please make sure docker image and data volume are both built, then:
```
make run
```
to run the instance.

Or use:
```
make debug
```
to run interactively.

Then login to your pritunl web ui at https://docker-host-address
Username: pritunl Password: pritunl

After set up the domain name in pritunl, the SSL security warning will gone. 

Then you're on your own, but take a look at http://pritunl.com or https://github.com/pritunl/pritunl

This is derived from https://github.com/johnae/pritunl

