#!/bin/bash

DB_USER=""
DB_PASS=""
DB_NAME="roundcubemail"
DB_HOST="localhost"

echo "Son 10 Dakikadaki Webmail Girişleri:"
echo "----------------------------------"

mysql -u "$DB_USER" -p"$DB_PASS" -D "$DB_NAME" -N -e "
SELECT ip, vars 
FROM session 
WHERE changed >= NOW() - INTERVAL 10 MINUTE;
" | while IFS=$'\t' read -r ip vars; do

    # Eğer vars değişkeni base64 ile encode edilmişse, önce çöz
    decoded_vars=$(echo "$vars" | base64 -d 2>/dev/null)

    # Kullanıcı adını ayıklamak için regex
    username=$(echo "$decoded_vars" | perl -nle 'print $1 if /username\|s:\d+:"([^"]+)"/')

    if [[ -n "$username" ]]; then
        echo "Kullanıcı: $username, IP: $ip"
    else
        echo "Kullanıcı bilgisi bulunamadı, IP: $ip"
    fi
done
