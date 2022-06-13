# !/bin/bash


if [ ! -d "$1" ]; then
	mkdir $1
fi

if [ ! -d "$1/recon" ] ;then
	mkdir $1/recon
fi


echo "[+] Harvesting subdomains with Assetfinder..."
assetfinder $1 >> $1/recon/assets.txt
cat $1/recon/assets.txt | grep $1 >> $1/recon/final.txt

rm $1/recon/assets.txt
