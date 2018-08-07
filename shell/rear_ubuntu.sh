echo "Hello from $HOSTNAME at FOSDEM 2017"

echo "$(date) - Adjusting Timezone ..."
ln -sf /usr/share/zoneinfo/Asia/Bangkok /etc/localtime
echo "Asia/Bangkok" > /etc/timezone

echo "$(date) - Refreshing repositories and installing missing required software for system integrity ..."
apt-get update
apt-get -y install kbd lvm2

echo "$(date) - Rebooting system to apply changes ..."
nohup reboot > /dev/null 2>&1 &

echo "End of $HOSTNAME customization ..."
