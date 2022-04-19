# Docker-LocalToNet
 LocalToNet in a Docker container!

## Disclaimer:
LocalToNet free tier is not suitable for long-term use cases.

---
# Docker CLI:

### Download/Update the image:
```
docker pull unusualnorm/localtonet
```

### Run the image with an authtoken: (Manage tunnels through the web interface)
```
docker run -d --net=host --restart=unless-stopped \
  unusualnorm/localtonet authtoken YOURTOKENHERE
```
### Run the image without an authtoken: (Cannot be done in detached mode)
```
docker run -it --rm --net=host unusualnorm/localtonet PROTOCOL PORT
```
---
# Docker Compose:
Docker Compose should not be used for one-time use containers.

### Run the image with an authtoken: (Manage tunnels through the web interface)
```yaml
version: "3.8"
services:
  localtonet:
    image: unusualnorm/localtonet:latest
    container_name: localtonet
    network_mode: host
    command: ["authtoken", "YOURTOKENHERE"]
    restart: unless-stopped
```
