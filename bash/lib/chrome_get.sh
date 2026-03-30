detect_chromeos(){
	bac_name=$chromeshuttle/bac/$this

	if [ -f $bac_name* ];then
		file=`basename -- $bac_name*`
		last_part="${file#*.}"
		extension="${last_part#*.}"
		compress_type=$extension
		backup_exist=true
	else
		echo "backup not found"
		backup_exist=true
	fi

	echo $compress_type
}
