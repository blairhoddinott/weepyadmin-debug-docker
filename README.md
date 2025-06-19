# weepyadmin-debug-docker

## Overview

This is a docker image based on Debian 12 that contains commonly used tools for debugging and poking around a kubernetes environment. 

## Usage

1. Use the public image in Dockerhub

```bash
docker run --rm -it weepyadmin/debug_docker:latest /bin/bash
```

Or, run it in Kubernetes
```bash
kubectl debug -it <pod_name> -c <container_name> --image=weepyadmin/debug_docker:latest -- /bin/bash
```

2. Build the docker image yourself

```bash
git clone https://github.com/blairhoddinott/weepyadmin-debug-docker.git
cd weepyadmin-debug-docker
docker build -t weepyadmin/debug-docker:latest .
docker run --rm -it weepyadmin/debug-docker:latest /bin/bash
```

## Top Tools

kubectl
k9s