1. cat uniteddengue # cat any ssloutput file
2. cat uniteddengue | grep 'Accepted\|Preferred' | awk '{print $5}' | sed -e "s/\x1b\[.\{1,5\}m//g" | sort -u > listofcipher.txt # strip all the colour coding
3. wget https://testssl.sh/openssl-rfc.mapping.html # get the lastest mapping from testssl.sh
4. for i in $(cat listofcipher.txt);  do  cat openssl-rfc.mapping.html | grep -w " $i " | sed 's/<[^>]*>//g' | awk '{print $2 " ("$6 ")"}' ;  done > matching.txt
5. cat uniteddengue ; echo '  ' ;  cat matching.txt #Display Matching Cipher Suite


alvin@ECOPSGN102:/mnt/c/Users/alvin.oo/Desktop$ cat uniteddengue ; echo '  ' ;  cat matching.txt
Version: 1.11.8-static
OpenSSL 1.0.2k-dev  xx XXX xxxx

Testing SSL server demo.testfire.net on port 443

  TLS Fallback SCSV:
Server does not support TLS Fallback SCSV

  TLS renegotiation:
Secure session renegotiation supported

  TLS Compression:
Compression disabled

  Heartbleed:
TLS 1.2 not vulnerable to heartbleed
TLS 1.1 not vulnerable to heartbleed
TLS 1.0 not vulnerable to heartbleed

  Supported Server Cipher(s):
Preferred TLSv1.2  128 bits  AES128-SHA256
Accepted  TLSv1.2  128 bits  AES128-SHA
Accepted  TLSv1.2  256 bits  AES256-SHA256
Accepted  TLSv1.2  256 bits  AES256-SHA
Accepted  TLSv1.2  128 bits  RC4-SHA
Accepted  TLSv1.2  112 bits  DES-CBC3-SHA
Accepted  TLSv1.2  128 bits  ECDHE-RSA-AES128-SHA256       Curve P-256 DHE 256
Accepted  TLSv1.2  128 bits  ECDHE-RSA-AES128-SHA          Curve P-256 DHE 256
Accepted  TLSv1.2  256 bits  ECDHE-RSA-AES256-SHA          Curve P-256 DHE 256
Accepted  TLSv1.2  128 bits  RC4-MD5
Preferred TLSv1.1  128 bits  AES128-SHA
Accepted  TLSv1.1  256 bits  AES256-SHA
Accepted  TLSv1.1  128 bits  RC4-SHA
Accepted  TLSv1.1  112 bits  DES-CBC3-SHA
Accepted  TLSv1.1  128 bits  ECDHE-RSA-AES128-SHA          Curve P-256 DHE 256
Accepted  TLSv1.1  256 bits  ECDHE-RSA-AES256-SHA          Curve P-256 DHE 256
Accepted  TLSv1.1  128 bits  RC4-MD5
Preferred TLSv1.0  128 bits  AES128-SHA
Accepted  TLSv1.0  256 bits  AES256-SHA
Accepted  TLSv1.0  128 bits  RC4-SHA
Accepted  TLSv1.0  112 bits  DES-CBC3-SHA
Accepted  TLSv1.0  128 bits  ECDHE-RSA-AES128-SHA          Curve P-256 DHE 256
Accepted  TLSv1.0  256 bits  ECDHE-RSA-AES256-SHA          Curve P-256 DHE 256
Accepted  TLSv1.0  128 bits  RC4-MD5
Preferred SSLv3    128 bits  RC4-SHA
Accepted  SSLv3    112 bits  DES-CBC3-SHA
Accepted  SSLv3    128 bits  RC4-MD5

  SSL Certificate:
Signature Algorithm: sha1WithRSA
RSA Key Strength:    2048

Subject:  demo.testfire.net
Issuer:   demo.testfire.net

Not valid before: Jul  1 09:54:37 2014 GMT
Not valid after:  Dec 22 09:54:37 2019 GMT

AES128-SHA (TLS_RSA_WITH_AES_128_CBC_SHA)
AES128-SHA256 (TLS_RSA_WITH_AES_128_CBC_SHA256)
AES256-SHA (TLS_RSA_WITH_AES_256_CBC_SHA)
AES256-SHA256 (TLS_RSA_WITH_AES_256_CBC_SHA256)
DES-CBC3-SHA (TLS_RSA_WITH_3DES_EDE_CBC_SHA)
ECDHE-RSA-AES128-SHA (TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA)
ECDHE-RSA-AES128-SHA256 (TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256)
ECDHE-RSA-AES256-SHA (TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA)
RC4-MD5 (TLS_RSA_WITH_RC4_128_MD5)
RC4-MD5 (SSL_CK_RC4_128_WITH_MD5)
RC4-SHA (TLS_RSA_WITH_RC4_128_SHA)