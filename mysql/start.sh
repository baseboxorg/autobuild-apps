#!/usr/bin/env bash
#===============================================================================
#
#    PROJECT: Open BaseBox.org <open@basebox.org>
#
#===============================================================================
echo "Starting mysql:"
/usr/bin/mysqld_safe &
#-------------------------------------------------------------------------------
until $(mysqladmin ping > /dev/null 2>&1)
do
    :
done
#-------------------------------------------------------------------------------
echo "Setting root password:"
mysqladmin -u $USER password $PASS
mysql -u $USER -p$PASS <<EOF
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '$PASS' WITH GRANT OPTION;
EOF
#-------------------------------------------------------------------------------
echo "Restarting mysql:"
mysqladmin -p$PASS shutdown
/usr/bin/mysqld_safe
#===============================================================================
