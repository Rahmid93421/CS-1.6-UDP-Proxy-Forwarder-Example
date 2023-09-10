iptables -A PREROUTING -t nat -i eth0 -p udp --dport $1 -j REDIRECT --to-port $2
cd csserv/csserv
screen -AmdS fake_sv ./hlds_run -game cstrike -port $1 +map de_dust2 +sys_tickrate 1 -sys_ticrate 1 -pingboost 3
cd ../..
screen -AmdS red ./a.out $2