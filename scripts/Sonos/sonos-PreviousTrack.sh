#!/bin/sh

# Move to the next track on your sonos playlist.

# Change the IP address to the IP address of your Sonos.

IP_ADDRESS=192.168.2.25

curl --header 'Content-Type: "text/xml"' --header 'SOAPACTION: "urn:schemas-upnp-org:service:AVTransport:1#Previous"' --data '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/" s:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"><s:Body><u:Previous xmlns:u="urn:schemas-upnp-org:service:AVTransport:1"><InstanceID>0</InstanceID><Speed>1</Speed></u:Previous></s:Body></s:Envelope>' http://$IP_ADDRESS:1400/MediaRenderer/AVTransport/Control

