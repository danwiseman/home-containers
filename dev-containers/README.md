# Generating certs for NiFi 2

Run NiFi 2 initially to create internal certs. Then login to the
NiFi container's console and do this:

```shell
cd /opt/nifi/nifi-current/conf

keytool -genkeypair -alias nifi-cert -keyalg RSA -keysize 2048 \
    -validity 365 -keystore nifikeystore.p12 -storetype PKCS12 \
    -dname "CN=nifi, OU=MyOrg, O=MyCompany, L=MyCity, S=MyState, C=US" \
    -ext "SAN=dns:nifi,dns:localhost,dns:{YOUR-NIFI-PROXY-HOSTNAME}"
```

Set a password. Then update the `nifi.properties` file with the new password
and the new keystore.