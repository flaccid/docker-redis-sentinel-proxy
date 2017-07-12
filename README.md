# docker-redis-sentinel-proxy

Forwards requests to the active master found via a Redis Sentinel.

Packages the upstream source, https://github.com/enriclluelles/redis-sentinel-proxy.

## Usage

### Build

#### Static Binary

To build a fully static 64-bit Linux binary (useful for docker):

    $ CGO_ENABLED=0 GOOS=linux GOARCH=amd64 \
        go build -o bin/redis-sentinel-proxy -a -installsuffix cgo \
          redis-sentinel-proxy/main.go

#### Docker

Build the static binary per above, then the docker image with:

    $ docker build -t flaccid/redis-sentinel-proxy .


License and Authors
-------------------
- Author: Chris Fordham (<chris@fordham-nagy.id.au>)

```text
Copyright 2017, Chris Fordham

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
