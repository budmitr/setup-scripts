sudo yum update -y

# docker
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user

# docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# python env
sudo mkdir -p /opt/miniconda
sudo chown ec2-user:ec2-user -R /opt/miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -q -O /tmp/miniconda.sh
bash /tmp/miniconda.sh -b -u -p /opt/miniconda
PATH=$PATH:/opt/miniconda/bin

# helpers
sudo yum install -y tmux htop

# install flower
/opt/miniconda/bin/pip install flower
