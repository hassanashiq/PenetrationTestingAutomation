# !/bin/bash


if [ ! -d "$1" ]; then
	mkdir $1
fi

if [ ! -d "$1/recon" ] ;then
	mkdir $1/recon
fi


echo "[+] Harvesting subdomains with Amass..."
assetfinder $1 >> $1/recon/f.txt
sort -u $1/recon/f.txt >> $1/recon/final.txt
rm $1/recon/f.txt

echo "[+] Probing for alive domains..."
cat $1/recon/final.txt | sort -u | httprobe -s -p https:443 | sed 's/https\?:\/\///' | tr -d ':443' >> $1/recon/alive.txt
