#!/bin/bash

nav_order=(
    "firewalld.html"
    "firewall-cmd.html"
    "firewall-offline-cmd.html"
    "firewall-config.html"
    "firewall-applet.html"
    "firewalld.conf.html"
    "firewalld.zones.html"
    "firewalld.zone.html"
    "firewalld.policies.html"
    "firewalld.policy.html"
    "firewalld.service.html"
    "firewalld.ipset.html"
    "firewalld.helper.html"
    "firewalld.icmptype.html"
    "firewalld.richlanguage.html"
    "firewalld.direct.html"
    "firewalld.lockdown-whitelist.html"
    "firewalld.dbus.html"
)

order=0
for file in "${nav_order[@]}"; do
    if [ -f "$file" ]; then
        line=$(head -c 3 "$file")
        name=${file%%.html}
        if [ "$line" != "---" ]; then
	        echo "fixing $file"
	        sed -i "1s/^/---\nlayout: default\ntitle: $name\nparent: "Manual Pages"\nancestor: "Documentation"\nnav_order: $order\n---\n\n/" "$file"
        fi
        order=$((order + 1))
    else
        echo "Warning: $file not found."
    fi
done
