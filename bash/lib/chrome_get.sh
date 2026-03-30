detect_chromeos(){
	bac_name=$chromeshuttle/bac/$this

	if [ -f $bac_name* ];then
		archive=`basename -- $bac_name*`
		last_part=`basename -- $bac_name*`
		extension="${file#*.}"
		compress_type=$extension
		backup_exist=true
	else
		echo "backup not found"
		backup_exist=true
	fi
}
