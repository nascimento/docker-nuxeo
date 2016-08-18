GRANT SELECT ON `mysql`.`proc` TO 'nuxeo'@'%';

CREATE DATABASE arizona;
CREATE USER 'arizona'@'%' IDENTIFIED BY 'arizona';
GRANT ALL PRIVILEGES ON *.* TO 'arizona'@'%' WITH GRANT OPTION;

CREATE DATABASE boticario;
CREATE USER 'boticario'@'%' IDENTIFIED BY 'boticario';
GRANT ALL PRIVILEGES ON *.* TO 'boticario'@'%' WITH GRANT OPTION;
