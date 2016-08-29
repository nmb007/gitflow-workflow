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
APP_ENV=${stage[appenv]}
APP_DEBUG=true

DB_HOST=${stage[dbhost]}
DB_DATABASE=${stage[db]}
DB_USERNAME=${stage[username]}
DB_PASSWORD=${stage[password]}

_EOF_

fi
