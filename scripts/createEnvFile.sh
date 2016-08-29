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
APP_ENV=staging
APP_DEBUG=true

DB_HOST=staging.dbhost.com
DB_DATABASE=stage
DB_USERNAME=admin
DB_PASSWORD=coeus123!

_EOF_

fi
