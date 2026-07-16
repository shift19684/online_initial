#!/bin/bash


sudo /home/sudox/tvo/tv01/bin/python /home/sudox/tvo/tv01/tv01.py - - &

sudo /home/sudox/servo/serv01/bin/python /home/sudox/Dist/secserv/secserv.py &

sudo /home/sudox/servo/serv01/bin/python /home/sudox/Dist/servo/serv.py &

sudo /home/sudox/servo/serv01/bin/python /home/sudox/Dist/carserv/CarServ.py &

sudo /home/sudox/bangs/con_up.sh &