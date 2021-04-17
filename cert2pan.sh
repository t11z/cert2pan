#!/bin/bash

## Set appropriate values
FIREWALL="https://******"
APIKEY="******"

##

for dir in /usr/syno/etc/certificate/_archive/*/;
do
        CERTIFICATE_PATH=${dir}
        CERTIFICATE_NAME=$(openssl x509 -noout -subject -in ${CERTIFICATE_PATH}/fullchain.pem | cut -d = -f 3 | sed -e 's/\./-/g')
        CERTIFICATE_FILE="/tmp/cert-$(uuidgen).tmp"

        cat $CERTIFICATE_PATH/fullchain.pem $CERTIFICATE_PATH/privkey.pem > $CERTIFICATE_FILE
        chmod 600 $CERTIFICATE_FILE

        # send certificate and private key to firewall
        curl -k -F "file=@$CERTIFICATE_FILE" "$FIREWALL/api?key=$APIKEY&type=import&category=keypair&certificate-name=$CERTIFICATE_NAME&format=pem&passphrase=123456"

        rm $CERTIFICATE_FILE
done

# commit changes
curl -k -X GET "$FIREWALL/api/?type=commit&cmd=<commit></commit>&key=$APIKEY"
exit 0
