#!/usr/bin/bash

echo "*************************************************************"
echo "Running getCustomFacts Playbook"
echo "ansible-playbook /home/cloud_user/playbooks/gatherLogFile.yml"
echo "*************************************************************"

ansible-playbook /home/cloud_user/playbooks/gatherCustomFacts.yml

echo "****************************************************"
echo "Gathering Custom Facts for Remote Host"
echo "ansible -m setup vkelkar13c -a filter='ansible_local'"
echo "****************************************************"

ansible -m setup vkelkar13c -a filter='ansible_local'

echo "************************************"
echo "Gathering Remote Facts to local JSON"
echo "ansible -m setup --tree out/ all"
echo "************************************"

ansible -m setup --tree out/ all

echo "********************************************************"
echo "Generating HTML Page from Local JSON"
echo "ansible-cmdb -C cust_cols.conf -i hosts out/ > /var/www/html/cmdb.html"
echo "********************************************************"

ansible-cmdb -C cust_cols.conf -i hosts out/ > /var/www/html/cmdb.html
