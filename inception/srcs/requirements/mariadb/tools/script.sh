#!/bin/bash

#service mysql start;


#echo "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;" > msql_db.sql # Crea la base de datos 
#echo "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';" >> msql_db.sql # Crea un usuario con su contraseña
#echo "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';" >> msql_db.sql # Otorga permisos al usuario creado anteriormente
#echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';" >> msql_db.sql # Cambia la contraseña de root al conectarse desde localhost a la asignada
#echo "FLUSH PRIVILEGES;" #Reseteo de los permisos de usuario para aplicar cambios


#!/bin/bash

#service mysql start 

#echo "CREATE DATABASE IF NOT EXISTS mariadb ;" > msql_db.sql
#echo "CREATE USER IF NOT EXISTS 'delvira-'@'%' IDENTIFIED BY '1234' ;" >> msql_db.sql
#echo "GRANT ALL PRIVILEGES ON mariadb.* TO 'delvira-'@'%' ;" >> msql_db.sql
#echo "FLUSH PRIVILEGES;" >> msql_db.sql
#echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '12345' ;" >> msql_db.sql

#mysql < msql_db.sql

#!/bin/bash



#!/bin/bash

# Include variables from the .env file
if [ -f .env ]; then
    source .env
else
    echo "Error: .env file not found."
    exit 1
fi

service mysql start 

echo "CREATE DATABASE IF NOT EXISTS mariadb ;" > msql_db.sql
echo "CREATE USER IF NOT EXISTS 'delvira-'@'%' IDENTIFIED BY '1234' ;" >> msql_db.sql
echo "GRANT ALL PRIVILEGES ON mariadb.* TO 'delvira-'@'%' ;" >> msql_db.sql
echo "FLUSH PRIVILEGES;" >> msql_db.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '12345' ;" >> msql_db.sql

mysql < msql_db.sql

#mysqld