. lib/var

compress_tar(){
	file=$home/$this.tar 
	if [ ! -f $file ];then
		tar cfv $file $home/$this
	else
		echo "Already Compressed, run with `-c` to clean old backup"
	fi
}

compress_7zip(){
	echo do
}

compress(){
	# Which type?
	if [ $compress_type == "tar" ];then
		compress_tar
	elif [ $compress_type == "7z" ];then
		compress_7zip
	fi
}

