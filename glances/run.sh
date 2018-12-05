docker run --rm --interactive --tty \
    -v /var/run/docker.sock:/var/run/docker.sock:ro \
    --pid host \
    --network host \
    --memory "100m" \
    --cpus 1 \
    docker.io/nicolargo/glances
