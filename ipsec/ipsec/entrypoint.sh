#!/bin/bash

sh -c "$IPTABLES"

if [[ "$USER" ]]
then
    sed -i "s/USER/$USER/" /etc/ipsec.conf
    sed -i "s/USER/$USER/" /etc/ipsec.secrets
fi

if [[ "$PASS" ]]
then
    sed -i "s/PASS/$PASS/" /etc/ipsec.secrets
fi

if [[ "$SHARED" ]]
then
    sed -i "s/SHARED/$SHARED/" /etc/ipsec.secrets
fi


if [[ "$SERVER" ]]
then
    sed -i "s/SERVERIP/$SERVER/g" /etc/ipsec.conf
fi

if [[ "$SUBNET" ]]
then
    sed -i "s:SUBNET:$SUBNET:" /etc/ipsec.conf
fi





ipsec start --nofork
