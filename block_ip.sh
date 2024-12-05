#!/bin/bash

# Path to Snort alerts file
ALERT_FILE="/var/log/snort/alerts"

# Extract IPs from alerts
MALICIOUS_IPS=$(grep -oE "(\b25[0-5]|\b2[0-4][0-9]|\b1[0-9]{2}|\b[1-9]?[0-9])\.(\b25[0-5]|\b2[0-4][0-9]|\b1[0-9]{2}|\b[1-9]?[0-9])\.(\b25[0-5]|\b2[0-4][0-9]|\b1[0-9]{2}|\b[1-9]?[0-9])\.(\b25[0-5]|\b2[0-4][0-9]|\b1[0-9]{2}|\b[1-9]?[0-9])" $ALERT_FILE)

# Block each IP
for IP in $MALICIOUS_IPS; do
    echo "Blocking IP: $IP"
    iptables -A INPUT -s $IP -j DROP
done

# Optional: Clear alert log after processing
> $ALERT_FILE
