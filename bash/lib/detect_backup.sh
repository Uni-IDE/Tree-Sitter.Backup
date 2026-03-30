detect_backup_dir(){
	echo
}

detect_backup_file(){
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

detect_backup(){
	detect_backup_dir
	detect_backup_file
}
