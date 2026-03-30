. lib/var

detect_existing_backup(){
	bac_name=$chromeshuttle/bac/$this

	try=$bac_name.tar
	if [ -d $try ];then
		compress_type=tar
		bac=$bac_name.$compress_type
	fi
}

detect_existing_backup
