rm openssl-rfc.mapping.html
wget https://testssl.sh/openssl-rfc.mapping.html  # get the lastest mapping from testssl.sh
rm -rf match/*
rm -rf cross/*
mkdir match
mkdir cross
yourfilenames=`find .`;

for i in $yourfilenames 
do
echo $i # cat any ssloutput file
cat "$i" | grep 'Accepted\|Preferred' | awk '{print $5}' | sed 's/\x1b[[0-9;]*[a-zA-Z]//g' | sort -u > "match/$i-listofcipher.txt" # strip all the colour coding
for j in `cat "match/$i-listofcipher.txt"`; do cat openssl-rfc.mapping.html | grep -w " $j " | sed 's/<[^>]*>//g' | awk '{print $2 " ("$6 ")"}' ;  done >> "cross/$i matching.txt" #
done
#cat "$i" ; echo '  ' ;  cat "cross/$i matching.txt"


