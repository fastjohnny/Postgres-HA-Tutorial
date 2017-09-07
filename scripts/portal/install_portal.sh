# Navigate to temporary directory
cd /tmp
 
# If archive exists delete it
if [ -f pgpoolAdmin-3.5.2.tar.gz ]; then
    rm pgpoolAdmin-3.5.2.tar.gz
fi
 
# Download installation archive
wget http://www.pgpool.net/download.php?f=pgpoolAdmin-3.5.2.tar.gz -O pgpoolAdmin-3.5.2.tar.gz
 
# If extracted directory exists delete it
if [ -d pgpoolAdmin-3.5.2 ]; then
    rm -r pgpoolAdmin-3.5.2.tar.gz
fi
 
# Extract the archive
tar -xzf pgpoolAdmin-3.5.2.tar.gz
 
# Delete archive file
rm pgpoolAdmin-3.5.2.tar.gz
 
# If virtual directory exists delete it
if [ -e /var/www/html/pgpooladmin ]; then
    rm -r /var/www/html/pgpooladmin
fi
 
# Move extracted archive to the new location (under Apache root directory)
mv pgpoolAdmin-3.5.2 /var/www/html/pgpooladmin
 
# Change ownership of the directory
chown root:root -R /var/www/html/pgpooladmin
 
# Adjust file and folder permissions
chmod 0777 /var/www/html/pgpooladmin/templates_c
chown www-data /var/www/html/pgpooladmin/conf/pgmgt.conf.php
chmod 0644 /var/www/html/pgpooladmin/conf/pgmgt.conf.php
