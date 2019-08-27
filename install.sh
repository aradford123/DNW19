#!/bin/bash 
#virtualenv  -p python2 env
python3 -m venv env3
source env3/bin/activate
pip install -U pip

pip install -r requirements.txt
# might need this version for proxy hack
#pip install dnacentersdk
pip install --index-url https://test.pypi.org/simple/ --no-deps dnacentersdk
# do this again for dependancies
pip install dnacentersdk

git clone https://github.com/CiscoDevNet/DNAC-onboarding-tools
# create the csv file
./create_csv.py > /tmp/demo.csv

