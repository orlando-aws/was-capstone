#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="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"
git clone https://$TOKEN@github.com/orlando-aws/was-capstone.git
cd /home/ubuntu/was-capstone
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/was-capstone/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80