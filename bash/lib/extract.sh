. lib/var

extract_tar(){
	backup=$home/$this 
	if [ ! -d $home/$this ];then
		tar xfv $backup.tar -C $home/
	else
		echo "Already Extracted, run with \`-c\` to clean old backup"
	fi
}

extract_7zip(){
	echo do
}

extract()
	# Which type?
	if [ $compress_type == "tar" ];then
		extract_tar
	elif [ $compress_type == "7z" ];then
		extract_7zip
	fi
}

