# default logging to journald is used

# Start Podman socket for rootless containers
systemctl --user start podman.socket
systemctl --user enable podman.socket

# TODO check if network rules need to be applied

# TODO check default config for registries
