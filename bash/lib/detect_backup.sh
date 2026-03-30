detect_backup_dir(){
	echo
}

detect_backup_file(){
	bac_name=$chromeshuttle/bac/$this

	if [ -f $bac_name* ];then
		file=`basename -- $bac_name*`
		last_part="${file#*.}"
		compress_type="${last_part#*.}"
		backup_exist=true
		bac=$bac_name.$compress_type
	else
		echo "backup not found"
		backup_exist=true
	fi
}

detect_backup(){
	detect_backup_dir
	detect_backup_file
}
