rm -rf full 
mkdir full
c=1
while [[ $c -le $1 ]]; do
	echo "$c"
	./pa4.sh >full/$c 2>&1
	if [[ `tail -c 16 full/$c` == "Total score: 23" ]]; then
		echo "SUCCESS"
	else
		echo "FAIL"
		break
	fi
	(( c++ ))
done
