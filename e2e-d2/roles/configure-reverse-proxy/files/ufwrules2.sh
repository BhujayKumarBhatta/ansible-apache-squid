#!/bin/bash
sudo ufw default deny incoming on {{ rp_internet_facing_nic }}
sudo ufw default allow outgoing on {{ rp_internet_facing_nic }}
ufw allow in on {{ rp_management_nic }}
ufw allow out on {{ rp_management_nic }}
ufw allow  in on {{ rp_internet_facing_nic }} from 220.225.15.126
ufw allow in on {{ rp_internet_facing_nic }} from any to any  port https
ufw allow out on {{ rp_internet_facing_nic }} from any to any  port https
ufw allow in on {{ rp_internet_facing_nic }} from any to any  port http
ufw allow out on {{ rp_internet_facing_nic }} from any to any  port http
ufw allow in on {{ rp_internet_facing_nic }} from any to any  port http
ufw allow out on {{ rp_internet_facing_nic }} from any to any  port http
ufw allow in on {{ rp_internet_facing_nic }} from any to any  port 123 proto udp
ufw allow out on {{ rp_internet_facing_nic }} from any to any  port 123 proto udp
ufw allow in on {{ rp_internet_facing_nic }} from any to any  port 2223
ufw allow in on {{ rp_internet_facing_nic }} from any to any  port 6080
ufw allow in on {{ rp_internet_facing_nic }} from any to any  port 6081
ufw allow in on {{ rp_internet_facing_nic }} from any to any  port 6082
ufw allow in on {{ rp_internet_facing_nic }} from any to any  port {{ rp_http_port }}
ufw allow in on {{ rp_internet_facing_nic }} from any to any  port {{ rp_https_port }}


