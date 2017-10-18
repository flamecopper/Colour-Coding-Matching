cat uniteddengue # cat any ssloutput file

cat uniteddengue | grep 'Accepted\|Preferred' | awk'{print $5}' | sed -e "s/\x1b\[.\{1,5\}m//g" | sort -u > listofcipher.txt # strip all the colour coding

wget https://testssl.sh/openssl-rfc.mapping.html # get
the lastest mapping from testssl.sh

for i in $(cat listofcipher.txt);  do  cat openssl-rfc.mapping.html | grep -w " $i " | sed 's/\x1b\[[0-9;]*[a-zA-Z]//g' | awk '{print $2 " ("$6 ")"}' ;  done > matching.txt

cat uniteddengue ; echo '  ' ;  cat matching.txt

