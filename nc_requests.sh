#!/bin/bash
#FAIRE UN CLONE DE LA VM
while [ True ]
do
				IP="10.0."$(((RANDOM % 254)+1))"."$(((RANDOM%254)+1)) #Voir si on peut faire en sorte de mettre des IP hors réseaux ?
				echo $IP
				ifconfig eth0 $IP netmask 255.255.0.0 #Voir si on peut modifier le masque de sous réseau ?
				sleep 3
				id=22
				while [ $id -lt 58 ]
				do
								nc 10.0.$id.199 10003
								nc 10.0.$id.199 10002
								nc 10.0.$id.199 10000
								id=$((id+1))
				done
				echo "==="
done

##echo "auto lo
#iface eth0 inet static
#		address $IP
#		netmask 255.255.0.0" > /etc/network/interfaces
#service networking stop
#service networking start
