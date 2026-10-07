#! /bin/bash
mysqldump -u "${DB_USER}" -p"${DB_PASSWORD}" ShopDB > ShopDB_back.sql
mysql -u "${DB_USER}" -p"${DB_PASSWORD}" -e 'create database ShopDBReserve'
mysql -u "${DB_USER}" -p"${DB_PASSWORD}" -e 'create database ShopDBDevelopment'
mysql -u "${DB_USER}" -p"${DB_PASSWORD}" ShopDBReserve < ShopDB_back.sql
mysql -u "${DB_USER}" -p"${DB_PASSWORD}" ShopDBDevelopment < ShopDB_back.sql