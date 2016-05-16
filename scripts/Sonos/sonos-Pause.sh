#!/bin/sh

# Pause sonos that is available on the local network
# Change the IP address to the IP address of your Sonos.

IP_ADDRESS=192.168.2.25

curl --header 'Content-Type: "text/xml"' --header 'SOAPACTION: "urn:schemas-upnp-org:service:AVTransport:1#Pause"' --data '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/" s:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"><s:Body><u:Pause xmlns:u="urn:schemas-upnp-org:service:AVTransport:1"><InstanceID>0</InstanceID><Speed>1</Speed></u:Pause></s:Body></s:Envelope>' http://$IP_ADDRESS:1400/MediaRenderer/AVTransport/Control