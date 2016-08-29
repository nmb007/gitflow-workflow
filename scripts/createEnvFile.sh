source /var/www/html/variables.sh

if [ "$DEPLOYMENT_GROUP_NAME" == "live" ]
then
cat > /var/www/html/.env <<- _EOF_
APP_ENV=production
APP_DEBUG=false

DB_HOST=live.dbhost.com
DB_DATABASE=live
DB_USERNAME=admin
DB_PASSWORD=coeus123!

_EOF_

elif [ "$DEPLOYMENT_GROUP_NAME" == "staging" ]
then
cat > /var/www/html/.env <<- _EOF_
APP_ENV=${info[appenv]}
APP_DEBUG=true

DB_HOST=${info[dbhost]}
DB_DATABASE=${info[db]}
DB_USERNAME=${info[username]}
DB_PASSWORD=${info[password]}

_EOF_

fi
