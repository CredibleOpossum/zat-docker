cd /app/

source resources/secrets.sh

java -cp zatikon/zatikon.jar -Dkeystore.password=$zatikon_keystore_password -Dkeystore.path=/app/resources/ssl/serverkeystore.p12 leo.server.Server &
echo $discord_token | python3 TheFootman/bot.py /dev/stdin