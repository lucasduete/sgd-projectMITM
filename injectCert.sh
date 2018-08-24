#!bin/sh

rm $HOME/.keystore

keytool -genkey \
    -alias eu \
    -keyalg RSA \
    -keysize 1024 \
    -dname "CN=Lucas Duete, OU=lucasduete, O=lucasduete, L=Cajazeiras, ST=CE, C=BR" \
    -keypass "password" \
    -validity 360 \
    -storetype JKS \
    -storepass "password"

mv $HOME/.keystore .

keytool -importcert -file webskypecom.crt -keystore .keystore --storepass "password" -alias "tomcat"
