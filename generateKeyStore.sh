#!bin/sh

rm $HOME/.keystore

keytool -genkey \
    -alias tomcat \
    -keyalg RSA \
    -keysize 2048 \
    -dname "CN=Lucas Duete, OU=lucasduete, O=lucasduete, L=Cajazeiras, ST=CE, C=BR" \
    -keypass "password" \
    -validity 360 \
    -storetype JKS \
    -storepass "password"

cp $HOME/.keystore .
