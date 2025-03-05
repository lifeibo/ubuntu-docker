#docker build -t lifeibo/ubuntu:25.04 .
#docker image push lifeibo/ubuntu:25.04

export DOCKER_CLI_EXPERIMENTAL=enabled
docker buildx create --use

docker buildx build --platform linux/amd64,linux/arm64 -t lifeibo/ubuntu:25.04 --push .

