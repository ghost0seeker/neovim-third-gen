FROM archlinux:latest

RUN pacman -Sy neovim sudo fish git nano go nodejs npm python clang --needed --noconfirm && \
    useradd -m -s /usr/bin/fish -u 1000 powder && \
    usermod -aG wheel powder && \
    sed -i 's/^# %wheel ALL=(ALL:ALL) NOPASSWD: ALL$/%wheel ALL=(ALL:ALL) NOPASSWD: ALL/' /etc/sudoers && \
    su - powder && \
    mkdir /home/powder/.config/nvim

WORKDIR /home/powder/.config/nvim

ENTRYPOINT ["/usr/bin/fish", "-i"]


