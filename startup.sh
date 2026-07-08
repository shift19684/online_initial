#!/bin/bash


sudo /home/sudox/tvo/tv01/bin/python /home/sudox/tvo/tv01/tv01.py - - &

#sudo /home/sudox/servo/serv01/bin/python /home/sudox/secserv/secserv01/secserv.py &
sudo /home/sudox/servo/serv01/bin/python /home/sudox/Dist/secserv/secserv.py &

#sudo /home/sudox/servo/serv01/bin/python /home/sudox/servo/serv01/serv.py &
sudo /home/sudox/servo/serv01/bin/python /home/sudox/Dist/servo/serv.py &

#sudo /home/sudox/servo/serv01/bin/python /home/sudox/carserv/carserv01/CarServ.py &
sudo /home/sudox/servo/serv01/bin/python /home/sudox/Dist/carserv/CarServ.py &

sudo /home/sudox/bangs/int_date.sh &
sudo /home/sudox/bangs/int_date_zero_.sh &
sudo /home/sudox/bangs/initial_.sh &

sudo /home/sudox/bangs/con_up.sh &
