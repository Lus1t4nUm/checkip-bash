#!/bin/zsh
myip() {
echo -e "GET http://example.com HTTP/1.0\n\n" | nc example.com 80 > /dev/null 2>&1

if [ $? -eq 0 ]; then
    ip=$(lynx --anonymous -source ipinfo.io/ip) 	
    descr=$(lynx --anonymous -source ipinfo.io/country) 
    echo "Your public IP is: $ip | $descr"

else
    echo "No public IP (Offline)"
fi
}
