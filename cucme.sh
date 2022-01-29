if [ $# -eq 0 ]
  then
    echo "Please provide a hostname or IP address"
    exit 1
fi
echo 'Please wait just a moment...'
for x in {a..z}
	do for y in {a..z}
		do curl "https://$1:8443/cucm-uds/users?name=$x$y" -k -s | xml_grep userName --text_only 
	done 
done | sort -u
