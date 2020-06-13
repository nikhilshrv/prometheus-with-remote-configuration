This is an extension of the standard *[prom/prometheus](https://hub.docker.com/r/prom/prometheus/)* Docker image. 

It adds a `CONFIG_LOCATION` environment variable that must be set to a URL that returns a valid Prometheus config file.

Everything else remains the same.

## Building

`docker build -t prometheus .`

## Running

`docker run -e CONFIG_LOCATION=<location> prometheus`