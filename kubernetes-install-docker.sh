echo -e "\tInstall docker on Fedora 28"
# https://www.itzgeek.com/how-tos/linux/fedora-how-tos/how-to-install-docker-on-fedora-25-fedora-24.html
su
dnf remove -y docker docker-common container-selinux docker-selinux docker-engine
dnf -y install curl
curl -o /etc/yum.repos.d/docker-ce.repo https://download.docker.com/linux/fedora/docker-ce.repo
dnf -y install docker-ce
systemctl start docker
systemctl enable docker
docker run -it fedora echo Hello-World
groupadd docker
useradd xp
usermod -aG docker xp
chown root:docker /var/run/docker.sock

