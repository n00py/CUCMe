read -p 'Server: ' server
echo 'Please wait just a moment...'
for x in {a..z}
	do for y in {a..z}
		do curl "https://$server:8443/cucm-uds/users?name=$x$y" -k -s | xml_grep userName --text_only 
	done 
done | sort -u
