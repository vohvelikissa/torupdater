wget https://torproject.org/download
vittu=$(cat download | grep "tar.xz\">$" | awk '{print $3}' | cut --character='7-99')
rm download
perkele=$(pwd)
cd
mkdir tools
cd tools
rm -r tor-browser/
wget https://torproject.org/$(echo $vittu | tr -d '">')
tar -xf tor-*xz
rm tor-*xz
cd $perkele
