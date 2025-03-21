#!/bin/bash

DB_USER=""
DB_PASS=""
DB_NAME="roundcubemail"
DB_HOST="localhost"

# Son 10 dakikada giriş yapan kullanıcıları say
LOGIN_COUNT=$(mysql -u "$DB_USER" -p"$DB_PASS" -D "$DB_NAME" -N -e "
SELECT COUNT(DISTINCT ip) 
FROM session 
WHERE changed >= NOW() - INTERVAL 10 MINUTE;
")

# Eğer sonuç boşsa veya hata varsa sıfır yap
if [[ -z "$LOGIN_COUNT" || "$LOGIN_COUNT" -lt 0 ]]; then
    LOGIN_COUNT=0
fi

# PRTG için uygun formatta çıktı ver
echo "0:$LOGIN_COUNT:$LOGIN_COUNT Adet giriş"
