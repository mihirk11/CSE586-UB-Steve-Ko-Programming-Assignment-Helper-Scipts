rm -rf phase$1
mkdir phase$1
c=1
while [[ $c -le $2 ]]; do
	echo "$c"
	./pa4-phase.sh $1 >phase$1/$c 2>&1
	if [[ `tail -c 7 phase$1/$c` == ": pass" ]]; then
		echo "SUCCESS"
	else
		echo "FAIL"
		break
	fi
	(( c++ ))
done
