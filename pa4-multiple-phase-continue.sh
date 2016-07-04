rm -rf phase-cont$1
mkdir phase-cont$1
c=1
while [[ $c -le $2 ]]; do
	echo "$c"
	./pa4-phase-continue.sh $1 >phase-cont$1/$c 2>&1
	if [[ `tail -c 7 phase-cont$1/$c` == ": pass" ]]; then
		echo "SUCCESS"
	else
		echo "FAIL"
		break
	fi
	(( c++ ))
done
