# Allow nothing in, everything out
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow ports for LocalSend
sudo ufw allow 53317/udp
sudo ufw allow 53317/tcp

# Allow Podman containers to use DNS on host
sudo ufw allow in proto udp from 172.16.0.0/12 out on podman0 port 53 comment 'allow-podman-dns'
sudo ufw allow in proto udp from 192.168.0.0/16 out on podman0 port 53 comment 'allow-podman-dns'

# Turn on the firewall
sudo ufw --force enable

# Enable UFW systemd service to start on boot
sudo systemctl enable ufw
