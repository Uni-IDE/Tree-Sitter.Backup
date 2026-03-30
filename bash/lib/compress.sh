. lib/var

compress_tar(){
	file=$home/$this.tar 
	if [ ! -f $file ];then
		tar xfv $file $this
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

